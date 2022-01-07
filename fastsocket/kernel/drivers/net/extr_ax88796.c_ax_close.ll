; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ax_device = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ei_device = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s: close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ax_device*, align 8
  %4 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %5)
  store %struct.ax_device* %6, %struct.ax_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ei_device* @netdev_priv(%struct.net_device* %7)
  store %struct.ei_device* %8, %struct.ei_device** %4, align 8
  %9 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %10 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %18 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 64
  %23 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %24 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @EI_SHIFT(i32 23)
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ei_outb(i32 %22, i64 %27)
  %29 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %30 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = call i32 (...) @wmb()
  %32 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %33 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %32, i32 0, i32 0
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @ax_ei_close(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.net_device* %40)
  ret i32 0
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ei_outb(i32, i64) #1

declare dso_local i64 @EI_SHIFT(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ax_ei_close(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
