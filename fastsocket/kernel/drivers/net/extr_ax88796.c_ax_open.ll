; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ax_device = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ei_device = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s: open\0A\00", align 1
@ax_ei_interrupt = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ax_mii_expiry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ax_device*, align 8
  %5 = alloca %struct.ei_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %7)
  store %struct.ax_device* %8, %struct.ax_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ei_device* @netdev_priv(%struct.net_device* %9)
  store %struct.ei_device* %10, %struct.ei_device** %5, align 8
  %11 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %12 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ax_ei_interrupt, align 4
  %23 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %24 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @request_irq(i32 %21, i32 %22, i32 %25, i32 %28, %struct.net_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @ax_ei_open(%struct.net_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %35
  %43 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %44 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %49 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @EI_SHIFT(i32 23)
  %52 = add nsw i64 %50, %51
  %53 = call i32 @ei_outb(i32 %47, i64 %52)
  %54 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %55 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %57 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %56, i32 0, i32 1
  %58 = call i32 @init_timer(%struct.TYPE_7__* %57)
  %59 = load i64, i64* @jiffies, align 8
  %60 = add nsw i64 %59, 1
  %61 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %62 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = ptrtoint %struct.net_device* %64 to i64
  %66 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %67 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load i32, i32* @ax_mii_expiry, align 4
  %70 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %71 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %74 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %73, i32 0, i32 1
  %75 = call i32 @add_timer(%struct.TYPE_7__* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %42, %40, %33
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ax_ei_open(%struct.net_device*) #1

declare dso_local i32 @ei_outb(i32, i64) #1

declare dso_local i64 @EI_SHIFT(i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
