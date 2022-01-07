; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_update_mib_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_update_mib_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.ath5k_statistics }
%struct.ath5k_statistics = type { i32, i32, i32, i32, i32 }

@AR5K_ACK_FAIL = common dso_local global i32 0, align 4
@AR5K_RTS_FAIL = common dso_local global i32 0, align 4
@AR5K_RTS_OK = common dso_local global i32 0, align 4
@AR5K_FCS_FAIL = common dso_local global i32 0, align 4
@AR5K_BEACON_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_update_mib_counters(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_statistics*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 0
  store %struct.ath5k_statistics* %5, %struct.ath5k_statistics** %3, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %7 = load i32, i32* @AR5K_ACK_FAIL, align 4
  %8 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %6, i32 %7)
  %9 = load %struct.ath5k_statistics*, %struct.ath5k_statistics** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_statistics, %struct.ath5k_statistics* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %16 = load i32, i32* @AR5K_RTS_FAIL, align 4
  %17 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %15, i32 %16)
  %18 = load %struct.ath5k_statistics*, %struct.ath5k_statistics** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_statistics, %struct.ath5k_statistics* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = load i32, i32* @AR5K_RTS_OK, align 4
  %26 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %24, i32 %25)
  %27 = load %struct.ath5k_statistics*, %struct.ath5k_statistics** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_statistics, %struct.ath5k_statistics* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %34 = load i32, i32* @AR5K_FCS_FAIL, align 4
  %35 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %33, i32 %34)
  %36 = load %struct.ath5k_statistics*, %struct.ath5k_statistics** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_statistics, %struct.ath5k_statistics* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %43 = load i32, i32* @AR5K_BEACON_CNT, align 4
  %44 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %42, i32 %43)
  %45 = load %struct.ath5k_statistics*, %struct.ath5k_statistics** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_statistics, %struct.ath5k_statistics* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  ret void
}

declare dso_local i64 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
