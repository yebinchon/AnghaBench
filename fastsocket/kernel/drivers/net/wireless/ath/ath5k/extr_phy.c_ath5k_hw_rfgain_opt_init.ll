; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfgain_opt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfgain_opt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ath5k_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }

@rfgain_opt_5111 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AR5K_RFGAIN_ACTIVE = common dso_local global i8* null, align 8
@rfgain_opt_5112 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_rfgain_opt_init(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %37 [
    i32 129, label %7
    i32 128, label %22
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rfgain_opt_5111, i32 0, i32 0), align 4
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 20, i32* %14, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 35, i32* %17, align 4
  %18 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  br label %40

22:                                               ; preds = %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rfgain_opt_5112, i32 0, i32 0), align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 20, i32* %29, align 8
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 85, i32* %32, align 4
  %33 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  br label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %22, %7
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
