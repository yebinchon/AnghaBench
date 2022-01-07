; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sja1000_priv = type { i8 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REG_MOD = common dso_local global i32 0, align 4
@MOD_RM = common dso_local global i8 0, align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@IRQ_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"setting SJA1000 into normal mode failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_normal_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sja1000_priv* %7, %struct.sja1000_priv** %3, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %8, i32 0, i32 0
  %10 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %9, align 8
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %12 = load i32, i32* @REG_MOD, align 4
  %13 = call zeroext i8 %10(%struct.sja1000_priv* %11, i32 %12)
  store i8 %13, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @MOD_RM, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %26 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %27 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %30 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %29, i32 0, i32 1
  %31 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %30, align 8
  %32 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %33 = load i32, i32* @REG_IER, align 4
  %34 = load i32, i32* @IRQ_ALL, align 4
  %35 = call i32 %31(%struct.sja1000_priv* %32, i32 %33, i32 %34)
  br label %59

36:                                               ; preds = %17
  %37 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %38 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %37, i32 0, i32 1
  %39 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %38, align 8
  %40 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %41 = load i32, i32* @REG_MOD, align 4
  %42 = call i32 %39(%struct.sja1000_priv* %40, i32 %41, i32 0)
  %43 = call i32 @udelay(i32 10)
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %45 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %44, i32 0, i32 0
  %46 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %45, align 8
  %47 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %48 = load i32, i32* @REG_MOD, align 4
  %49 = call zeroext i8 %46(%struct.sja1000_priv* %47, i32 %48)
  store i8 %49, i8* %4, align 1
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %24
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
