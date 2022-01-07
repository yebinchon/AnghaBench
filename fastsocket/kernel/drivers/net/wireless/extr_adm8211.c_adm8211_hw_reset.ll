; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FRCTL = common dso_local global i32 0, align 4
@PAR = common dso_local global i32 0, align 4
@ADM8211_PAR_SWR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ADM8211_REV_BA = common dso_local global i64 0, align 8
@ADM8211_RFMD2958_RF3000_CONTROL_POWER = common dso_local global i64 0, align 8
@ADM8211_RFMD2958 = common dso_local global i64 0, align 8
@CSR_TEST1 = common dso_local global i32 0, align 4
@ADM8211_REV_CA = common dso_local global i64 0, align 8
@CSR_TEST0 = common dso_local global i32 0, align 4
@ADM8211_CSR_TEST0_EPRLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @adm8211_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_hw_reset(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.adm8211_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  store %struct.adm8211_priv* %10, %struct.adm8211_priv** %4, align 8
  store i32 100, i32* %7, align 4
  %11 = load i32, i32* @FRCTL, align 4
  %12 = call i32 @ADM8211_CSR_WRITE(i32 %11, i32 0)
  %13 = load i32, i32* @PAR, align 4
  %14 = call i32 @ADM8211_CSR_READ(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PAR, align 4
  %16 = load i32, i32* @ADM8211_PAR_SWR, align 4
  %17 = call i32 @ADM8211_CSR_WRITE(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i32, i32* @PAR, align 4
  %20 = call i32 @ADM8211_CSR_READ(i32 %19)
  %21 = load i32, i32* @ADM8211_PAR_SWR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i32 @msleep(i32 50)
  br label %18

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %32
  %39 = load i32, i32* @PAR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ADM8211_CSR_WRITE(i32 %39, i32 %40)
  %42 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %43 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ADM8211_REV_BA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %38
  %50 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %51 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ADM8211_RFMD2958_RF3000_CONTROL_POWER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %57 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ADM8211_RFMD2958, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @CSR_TEST1, align 4
  %63 = call i32 @ADM8211_CSR_READ(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 48
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @CSR_TEST1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ADM8211_CSR_WRITE(i32 %66, i32 %67)
  br label %86

69:                                               ; preds = %55, %38
  %70 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %71 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ADM8211_REV_CA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i32, i32* @CSR_TEST1, align 4
  %79 = call i32 @ADM8211_CSR_READ(i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, -49
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @CSR_TEST1, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ADM8211_CSR_WRITE(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85, %61
  %87 = load i32, i32* @FRCTL, align 4
  %88 = call i32 @ADM8211_CSR_WRITE(i32 %87, i32 0)
  %89 = load i32, i32* @CSR_TEST0, align 4
  %90 = call i32 @ADM8211_CSR_READ(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @ADM8211_CSR_TEST0_EPRLD, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @CSR_TEST0, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ADM8211_CSR_WRITE(i32 %94, i32 %95)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = call i32 @adm8211_clear_sram(%struct.ieee80211_hw* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %86, %35
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @adm8211_clear_sram(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
