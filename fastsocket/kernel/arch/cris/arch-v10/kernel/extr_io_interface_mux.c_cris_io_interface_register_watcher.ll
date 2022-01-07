; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_register_watcher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_register_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watcher = type { void (i32, i32, i8, i8)*, %struct.watcher* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@watchers = common dso_local global %struct.watcher* null, align 8
@gpio_in_pins = common dso_local global i64 0, align 8
@gpio_out_pins = common dso_local global i64 0, align 8
@gpio_pa_pins = common dso_local global i64 0, align 8
@gpio_pb_pins = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cris_io_interface_register_watcher(void (i32, i32, i8, i8)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void (i32, i32, i8, i8)*, align 8
  %4 = alloca %struct.watcher*, align 8
  store void (i32, i32, i8, i8)* %0, void (i32, i32, i8, i8)** %3, align 8
  %5 = call i32 (...) @cris_io_interface_init()
  %6 = load void (i32, i32, i8, i8)*, void (i32, i32, i8, i8)** %3, align 8
  %7 = icmp eq void (i32, i32, i8, i8)* null, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.watcher* @kmalloc(i32 16, i32 %12)
  store %struct.watcher* %13, %struct.watcher** %4, align 8
  %14 = load %struct.watcher*, %struct.watcher** %4, align 8
  %15 = icmp ne %struct.watcher* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %11
  %20 = load void (i32, i32, i8, i8)*, void (i32, i32, i8, i8)** %3, align 8
  %21 = load %struct.watcher*, %struct.watcher** %4, align 8
  %22 = getelementptr inbounds %struct.watcher, %struct.watcher* %21, i32 0, i32 0
  store void (i32, i32, i8, i8)* %20, void (i32, i32, i8, i8)** %22, align 8
  %23 = load %struct.watcher*, %struct.watcher** @watchers, align 8
  %24 = load %struct.watcher*, %struct.watcher** %4, align 8
  %25 = getelementptr inbounds %struct.watcher, %struct.watcher* %24, i32 0, i32 1
  store %struct.watcher* %23, %struct.watcher** %25, align 8
  %26 = load %struct.watcher*, %struct.watcher** %4, align 8
  store %struct.watcher* %26, %struct.watcher** @watchers, align 8
  %27 = load %struct.watcher*, %struct.watcher** %4, align 8
  %28 = getelementptr inbounds %struct.watcher, %struct.watcher* %27, i32 0, i32 0
  %29 = load void (i32, i32, i8, i8)*, void (i32, i32, i8, i8)** %28, align 8
  %30 = load i64, i64* @gpio_in_pins, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* @gpio_out_pins, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* @gpio_pa_pins, align 8
  %35 = trunc i64 %34 to i8
  %36 = load i64, i64* @gpio_pb_pins, align 8
  %37 = trunc i64 %36 to i8
  call void %29(i32 %31, i32 %33, i8 zeroext %35, i8 zeroext %37)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %19, %16, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @cris_io_interface_init(...) #1

declare dso_local %struct.watcher* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
