; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_fast_chan_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_fast_chan_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.ath9k_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH_INI_POST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32*)* @ar9003_hw_fast_chan_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_fast_chan_change(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
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

13:                                               ; preds = %3, %3
  store i64 1, i64* %9, align 8
  br label %20

14:                                               ; preds = %3, %3
  store i64 2, i64* %9, align 8
  br label %20

15:                                               ; preds = %3, %3, %3
  store i64 4, i64* %9, align 8
  br label %20

16:                                               ; preds = %3, %3
  store i64 3, i64* %9, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %110

20:                                               ; preds = %16, %15, %14, %13
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  br label %106

28:                                               ; preds = %20
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ATH_INI_POST, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %29, i32* %34, i64 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ATH_INI_POST, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %37, i32* %42, i64 %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @ATH_INI_POST, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %45, i32* %50, i64 %51)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @ATH_INI_POST, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %53, i32* %58, i64 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %28
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %65, i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %64, %28
  %71 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 3
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @REG_WRITE_ARRAY(i32* %72, i32 %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %78 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %79 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %77, %struct.ath9k_channel* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %83 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %82, i32 0, i32 2
  %84 = load i64, i64* %9, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @REG_WRITE_ARRAY(i32* %83, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %70
  %89 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %90 = call i64 @AR_SREV_9565(%struct.ath_hw* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %94 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %93, i32 0, i32 2
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @REG_WRITE_ARRAY(i32* %94, i32 1, i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %99 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %98, i32 0, i32 1
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @REG_WRITE_ARRAY(i32* %99, i32 1, i32 %100)
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32*, i32** %7, align 8
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %26
  %107 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %108 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %109 = call i32 @ar9003_hw_set_rfmode(%struct.ath_hw* %107, %struct.ath9k_channel* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ar9003_hw_prog_ini(%struct.ath_hw*, i32*, i64) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_rfmode(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
