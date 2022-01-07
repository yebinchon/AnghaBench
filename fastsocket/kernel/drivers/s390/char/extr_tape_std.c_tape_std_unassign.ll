; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_unassign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_unassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64, i32 }
%struct.tape_request = type { i64, i32, i32 }

@TS_NOT_OPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"(%08x): Can't unassign device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TO_UNASSIGN = common dso_local global i32 0, align 4
@UNASSIGN = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%08x: Unassign failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%08x: Tape unassigned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_unassign(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %6 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %7 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TS_NOT_OPER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %13 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 11)
  store %struct.tape_request* %19, %struct.tape_request** %5, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %21 = call i64 @IS_ERR(%struct.tape_request* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.tape_request* %24)
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %18
  %27 = load i32, i32* @TO_UNASSIGN, align 4
  %28 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %29 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %31 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @UNASSIGN, align 4
  %34 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %35 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tape_ccw_cc(i64 %32, i32 %33, i32 11, i32 %36)
  %38 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %39 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i32, i32* @NOP, align 4
  %43 = call i32 @tape_ccw_end(i64 %41, i32 %42, i32 0, i32* null)
  %44 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %45 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %46 = call i32 @tape_do_io(%struct.tape_device* %44, %struct.tape_request* %45)
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %26
  %49 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %50 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %58

53:                                               ; preds = %26
  %54 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %55 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %60 = call i32 @tape_free_request(%struct.tape_request* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %23, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
