; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtreten.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtreten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32* }
%struct.tape_request = type { i64, i32 }

@TO_FSF = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@FORSPACEFILE = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@CCW_CMD_TIC = common dso_local global i32 0, align 4
@MTREW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtreten(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.tape_request* @tape_alloc_request(i32 4, i32 0)
  store %struct.tape_request* %8, %struct.tape_request** %6, align 8
  %9 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tape_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.tape_request* %13)
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @TO_FSF, align 4
  %17 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %20 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @MODE_SET_DB, align 4
  %23 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %24 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @tape_ccw_cc(i64 %21, i32 %22, i32 1, i32* %25)
  %27 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %28 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* @FORSPACEFILE, align 4
  %32 = call i32 @tape_ccw_cc(i64 %30, i32 %31, i32 0, i32* null)
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 2
  %37 = load i32, i32* @NOP, align 4
  %38 = call i32 @tape_ccw_cc(i64 %36, i32 %37, i32 0, i32* null)
  %39 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %40 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 3
  %43 = load i32, i32* @CCW_CMD_TIC, align 4
  %44 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %45 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @tape_ccw_end(i64 %42, i32 %43, i32 0, i64 %46)
  %48 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %49 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %50 = call i32 @tape_do_io_interruptible(%struct.tape_device* %48, %struct.tape_request* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %52 = call i32 @tape_free_request(%struct.tape_request* %51)
  %53 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %54 = load i32, i32* @MTREW, align 4
  %55 = call i32 @tape_mtop(%struct.tape_device* %53, i32 %54, i32 1)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %15, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i64) #1

declare dso_local i32 @tape_do_io_interruptible(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

declare dso_local i32 @tape_mtop(%struct.tape_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
