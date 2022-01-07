; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_set_power_awake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_set_power_awake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL2 = common dso_local global i32 0, align 4
@AH_TIME_QUANTUM = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_OBS_BUS_CTRL = common dso_local global i32 0, align 4
@AR_MCI_RX_STATUS = common dso_local global i32 0, align 4
@AR_MCI_RX_REMOTE_SLEEP = common dso_local global i32 0, align 4
@AR_BTCOEX_RC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_set_power_awake(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %15 = call i32 @REG_READ(%struct.ath_hw* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, -559038737
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %21 = call i32 @udelay(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %18, %8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @BIT(i32 23)
  %30 = or i32 %28, %29
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_DIAG_SW, align 4
  %39 = call i32 @REG_READ(%struct.ath_hw* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, -559038737
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %45 = call i32 @udelay(i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %32

49:                                               ; preds = %42, %32
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = load i32, i32* @AR_DIAG_SW, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @BIT(i32 27)
  %54 = or i32 %52, %53
  %55 = call i32 @BIT(i32 19)
  %56 = or i32 %54, %55
  %57 = call i32 @BIT(i32 18)
  %58 = or i32 %56, %57
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %50, i32 %51, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %61 = load i32, i32* @AR_OBS_BUS_CTRL, align 4
  %62 = call i32 @REG_READ(%struct.ath_hw* %60, i32 %61)
  %63 = and i32 %62, 3
  store i32 %63, i32* %6, align 4
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = load i32, i32* @AR_MCI_RX_STATUS, align 4
  %66 = call i32 @REG_READ(%struct.ath_hw* %64, i32 %65)
  %67 = load i32, i32* @AR_MCI_RX_REMOTE_SLEEP, align 4
  %68 = call i32 @MS(i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = load i32, i32* @AR_BTCOEX_CTRL2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @REG_WRITE(%struct.ath_hw* %69, i32 %70, i32 %71)
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_DIAG_SW, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %49
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %84 = load i32, i32* @AR_BTCOEX_RC, align 4
  %85 = call i32 @REG_SET_BIT(%struct.ath_hw* %83, i32 %84, i32 1)
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = load i32, i32* @AR_BTCOEX_RC, align 4
  %88 = call i32 @REG_CLR_BIT(%struct.ath_hw* %86, i32 %87, i32 1)
  %89 = call i32 @udelay(i32 50)
  br label %90

90:                                               ; preds = %82, %79, %49
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
