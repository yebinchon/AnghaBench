; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_read_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_read_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i8*, i8*, i32 }
%struct.ath_common = type { i32 }

@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_ani_read_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ani_read_counters(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ar5416AniState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ar5416AniState* %14, %struct.ar5416AniState** %5, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %16 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %15)
  %17 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %18 = call i64 @ath_hw_get_listen_time(%struct.ath_common* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i32 @ath9k_ani_restart(%struct.ath_hw* %27)
  store i32 0, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %32 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 1
  %40 = call i32 @ath9k_hw_update_mibstats(%struct.ath_hw* %37, i32* %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_PHY_ERR_1, align 4
  %43 = call i8* @REG_READ(%struct.ath_hw* %41, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_PHY_ERR_2, align 4
  %46 = call i8* @REG_READ(%struct.ath_hw* %44, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %49 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %47 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %63 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %66 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %70
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %80 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %29, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i64 @ath_hw_get_listen_time(%struct.ath_common*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_update_mibstats(%struct.ath_hw*, i32*) #1

declare dso_local i8* @REG_READ(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
