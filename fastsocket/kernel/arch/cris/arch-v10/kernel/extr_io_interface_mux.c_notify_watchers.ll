; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_notify_watchers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_notify_watchers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watcher = type { %struct.watcher*, i32 (i32, i32, i8, i8)* }

@watchers = common dso_local global %struct.watcher* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"io_interface_mux: notifying watchers\0A\00", align 1
@gpio_in_pins = common dso_local global i64 0, align 8
@gpio_out_pins = common dso_local global i64 0, align 8
@gpio_pa_pins = common dso_local global i64 0, align 8
@gpio_pb_pins = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @notify_watchers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_watchers() #0 {
  %1 = alloca %struct.watcher*, align 8
  %2 = load %struct.watcher*, %struct.watcher** @watchers, align 8
  store %struct.watcher* %2, %struct.watcher** %1, align 8
  %3 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @DBG(i32 %3)
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.watcher*, %struct.watcher** %1, align 8
  %7 = icmp ne %struct.watcher* null, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load %struct.watcher*, %struct.watcher** %1, align 8
  %10 = getelementptr inbounds %struct.watcher, %struct.watcher* %9, i32 0, i32 1
  %11 = load i32 (i32, i32, i8, i8)*, i32 (i32, i32, i8, i8)** %10, align 8
  %12 = load i64, i64* @gpio_in_pins, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i64, i64* @gpio_out_pins, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* @gpio_pa_pins, align 8
  %17 = trunc i64 %16 to i8
  %18 = load i64, i64* @gpio_pb_pins, align 8
  %19 = trunc i64 %18 to i8
  %20 = call i32 %11(i32 %13, i32 %15, i8 zeroext %17, i8 zeroext %19)
  %21 = load %struct.watcher*, %struct.watcher** %1, align 8
  %22 = getelementptr inbounds %struct.watcher, %struct.watcher* %21, i32 0, i32 0
  %23 = load %struct.watcher*, %struct.watcher** %22, align 8
  store %struct.watcher* %23, %struct.watcher** %1, align 8
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
