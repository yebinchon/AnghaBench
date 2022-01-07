; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { i64, i32 }
%struct.tape_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"xrbl fail\00", align 1
@TO_RFO = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@READ_FORWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"xrbl ccwg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_request* @tape_std_read_block(%struct.tape_device* %0, i64 %1) #0 {
  %3 = alloca %struct.tape_request*, align 8
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.tape_request* @tape_alloc_request(i32 4, i32 0)
  store %struct.tape_request* %7, %struct.tape_request** %6, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %9 = call i64 @IS_ERR(%struct.tape_request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @DBF_EXCEPTION(i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  store %struct.tape_request* %13, %struct.tape_request** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* @TO_RFO, align 4
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @MODE_SET_DB, align 4
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tape_ccw_cc(i64 %20, i32 %21, i32 1, i32 %24)
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* @READ_FORWARD, align 4
  %31 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %32 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tape_ccw_end_idal(i64 %29, i32 %30, i32 %34)
  %36 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  store %struct.tape_request* %37, %struct.tape_request** %3, align 8
  br label %38

38:                                               ; preds = %14, %11
  %39 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  ret %struct.tape_request* %39
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32) #1

declare dso_local i32 @tape_ccw_end_idal(i64, i32, i32) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
