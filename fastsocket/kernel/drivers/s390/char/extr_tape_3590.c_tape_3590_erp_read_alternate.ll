; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_read_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_read_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, %struct.tape_3590_disc_data* }
%struct.tape_3590_disc_data = type { i64 }
%struct.tape_request = type { i32 }
%struct.irb = type { i32 }

@READ_PREVIOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"(%08x): No support for READ_PREVIOUS command\0A\00", align 1
@READ_BACKWARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"(%08x): No support for READ_BACKWARD command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_erp_read_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_erp_read_alternate(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.tape_3590_disc_data*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %9 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %8, i32 0, i32 1
  %10 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %9, align 8
  store %struct.tape_3590_disc_data* %10, %struct.tape_3590_disc_data** %7, align 8
  %11 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %7, align 8
  %12 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @READ_PREVIOUS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @READ_BACKWARD, align 8
  %22 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %7, align 8
  %23 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %26 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @READ_PREVIOUS, align 8
  %30 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %7, align 8
  %31 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %34 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %35 = call i32 @tape_3590_read_opposite(%struct.tape_device* %33, %struct.tape_request* %34)
  %36 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %37 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %38 = load %struct.irb*, %struct.irb** %6, align 8
  %39 = call i32 @tape_3590_erp_retry(%struct.tape_device* %36, %struct.tape_request* %37, %struct.irb* %38)
  ret i32 %39
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_3590_read_opposite(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_3590_erp_retry(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
