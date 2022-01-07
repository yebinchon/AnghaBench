; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtoffl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtoffl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32* }
%struct.tape_request = type { i64, i32 }

@TO_RUN = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@REWIND_UNLOAD = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtoffl(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.tape_request* @tape_alloc_request(i32 3, i32 0)
  store %struct.tape_request* %7, %struct.tape_request** %6, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %9 = call i64 @IS_ERR(%struct.tape_request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %13 = call i32 @PTR_ERR(%struct.tape_request* %12)
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @TO_RUN, align 4
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @MODE_SET_DB, align 4
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @tape_ccw_cc(i64 %20, i32 %21, i32 1, i32* %24)
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* @REWIND_UNLOAD, align 4
  %31 = call i32 @tape_ccw_cc(i64 %29, i32 %30, i32 0, i32* null)
  %32 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = load i32, i32* @NOP, align 4
  %37 = call i32 @tape_ccw_end(i64 %35, i32 %36, i32 0, i32* null)
  %38 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %39 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %40 = call i32 @tape_do_io_free(%struct.tape_device* %38, %struct.tape_request* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %14, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
