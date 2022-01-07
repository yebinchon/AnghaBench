; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_rf_kill_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_rf_kill_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HW_FEATURE_RFKILL = common dso_local global i32 0, align 4
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@IPW_REG_GPIO = common dso_local global i32 0, align 4
@IPW_BIT_GPIO_RF_KILL = common dso_local global i32 0, align 4
@MAX_RF_KILL_CHECKS = common dso_local global i32 0, align 4
@RF_KILL_CHECK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @rf_kill_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf_kill_active(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i16 0, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @HW_FEATURE_RFKILL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wiphy_rfkill_set_hw_state(i32 %19, i32 0)
  %21 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %88

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = call i32 @udelay(i32 40)
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IPW_REG_GPIO, align 4
  %37 = call i32 @read_register(i32 %35, i32 %36, i32* %5)
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = shl i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IPW_BIT_GPIO_RF_KILL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  %47 = or i32 %40, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %4, align 2
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wiphy_rfkill_set_hw_state(i32 %62, i32 1)
  %64 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %65 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %83

69:                                               ; preds = %52
  %70 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wiphy_rfkill_set_hw_state(i32 %75, i32 0)
  %77 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %69, %56
  %84 = load i16, i16* %4, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_register(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
