; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_load_ani_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_load_ani_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_CCK_DETECT = common dso_local global i64 0, align 8
@AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9002_hw_load_ani_reg(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 136, label %13
    i32 135, label %13
    i32 133, label %14
    i32 134, label %14
    i32 131, label %15
    i32 130, label %15
    i32 132, label %15
    i32 128, label %16
    i32 129, label %16
  ]

13:                                               ; preds = %2, %2
  store i64 1, i64* %5, align 8
  br label %18

14:                                               ; preds = %2, %2
  store i64 2, i64* %5, align 8
  br label %18

15:                                               ; preds = %2, %2, %2
  store i64 4, i64* %5, align 8
  br label %18

16:                                               ; preds = %2, %2
  store i64 3, i64* %5, align 8
  br label %18

17:                                               ; preds = %2
  br label %70

18:                                               ; preds = %16, %15, %14, %13
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %64, %18
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %21
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @INI_RA(%struct.TYPE_2__* %30, i32 %31, i64 0)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @INI_RA(%struct.TYPE_2__* %34, i32 %35, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @AR_PHY_CCK_DETECT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %28
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @REG_READ(%struct.ath_hw* %42, i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* @AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK, align 8
  %46 = load i64, i64* %8, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* @AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %54, %55
  %57 = call i32 @REG_WRITE(%struct.ath_hw* %52, i64 %53, i64 %56)
  br label %63

58:                                               ; preds = %28
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @REG_WRITE(%struct.ath_hw* %59, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %21

67:                                               ; preds = %21
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %68)
  br label %70

70:                                               ; preds = %67, %17
  ret void
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @INI_RA(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
