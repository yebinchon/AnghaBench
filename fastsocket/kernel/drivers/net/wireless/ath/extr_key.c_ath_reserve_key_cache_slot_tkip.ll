; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_reserve_key_cache_slot_tkip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_reserve_key_cache_slot_tkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, i32, i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*)* @ath_reserve_key_cache_slot_tkip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_reserve_key_cache_slot_tkip(%struct.ath_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %3, align 8
  %5 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %16 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @test_bit(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 64
  %23 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %24 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @test_bit(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %13
  br label %56

29:                                               ; preds = %20
  %30 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %31 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 32
  %39 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %40 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 64
  %47 = add nsw i32 %46, 32
  %48 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %49 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @test_bit(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %36
  br label %56

54:                                               ; preds = %44, %29
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %53, %28
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %6

59:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
