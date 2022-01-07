; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_iqcal_collect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_iqcal_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32*, i32*, i32*, i32 }

@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d: Chn %d pmi=0x%08x;pmq=0x%08x;iqcm=0x%08x;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_iqcal_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_iqcal_collect(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %89, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %92

8:                                                ; preds = %4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @AR_PHY_CAL_MEAS_0(i32 %18)
  %20 = call i64 @REG_READ(%struct.ath_hw* %17, i32 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %20
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @AR_PHY_CAL_MEAS_1(i32 %32)
  %34 = call i64 @REG_READ(%struct.ath_hw* %31, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %34
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @AR_PHY_CAL_MEAS_2(i32 %46)
  %48 = call i64 @REG_READ(%struct.ath_hw* %45, i32 %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %48
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = call i32 @ath9k_hw_common(%struct.ath_hw* %59)
  %61 = load i32, i32* @CALIBRATE, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ath_dbg(i32 %60, i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %72, i32 %79, i32 %86)
  br label %88

88:                                               ; preds = %16, %8
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %4

92:                                               ; preds = %4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_CAL_MEAS_0(i32) #1

declare dso_local i32 @AR_PHY_CAL_MEAS_1(i32) #1

declare dso_local i32 @AR_PHY_CAL_MEAS_2(i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
