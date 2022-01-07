; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9550_hw_get_modes_txgain_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9550_hw_get_modes_txgain_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9550_hw_get_modes_txgain_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %51 [
    i32 136, label %9
    i32 135, label %9
    i32 133, label %29
    i32 134, label %29
    i32 131, label %49
    i32 130, label %49
    i32 132, label %49
    i32 128, label %50
    i32 129, label %50
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 5350
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 5350
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 5600
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 3, i32* %5, align 4
  br label %27

26:                                               ; preds = %20, %15
  store i32 5, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %14
  br label %54

29:                                               ; preds = %2, %2
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 5350
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 2, i32* %5, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 5350
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 5600
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 4, i32* %5, align 4
  br label %47

46:                                               ; preds = %40, %35
  store i32 6, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %34
  br label %54

49:                                               ; preds = %2, %2, %2
  store i32 8, i32* %5, align 4
  br label %54

50:                                               ; preds = %2, %2
  store i32 7, i32* %5, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %50, %49, %48, %28
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
