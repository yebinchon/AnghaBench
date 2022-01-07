; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_upd_ofdm_pctl1_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_upd_ofdm_pctl1_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32 }

@BRCM_RATE_6M = common dso_local global i32 0, align 4
@BRCM_RATE_9M = common dso_local global i32 0, align 4
@BRCM_RATE_12M = common dso_local global i32 0, align 4
@BRCM_RATE_18M = common dso_local global i32 0, align 4
@BRCM_RATE_24M = common dso_local global i32 0, align 4
@BRCM_RATE_36M = common dso_local global i32 0, align 4
@BRCM_RATE_48M = common dso_local global i32 0, align 4
@BRCM_RATE_54M = common dso_local global i32 0, align 4
@M_RT_OFDM_PCTL1_POS = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_MASK = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_upd_ofdm_pctl1_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_upd_ofdm_pctl1_table(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @BRCM_RATE_6M, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @BRCM_RATE_9M, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @BRCM_RATE_12M, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @BRCM_RATE_18M, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @BRCM_RATE_24M, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @BRCM_RATE_36M, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @BRCM_RATE_48M, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @BRCM_RATE_54M, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BRCMS_PHY_11N_CAP(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %68

30:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %34 = call i64 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @brcms_b_ofdm_ratetable_offset(%struct.brcms_hardware* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @M_RT_OFDM_PCTL1_POS, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @brcms_b_read_shm(%struct.brcms_hardware* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @PHY_TXC1_MODE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_TXC1_MODE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @M_RT_OFDM_PCTL1_POS, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %36
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %31

68:                                               ; preds = %29, %31
  ret void
}

declare dso_local i32 @BRCMS_PHY_11N_CAP(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @brcms_b_ofdm_ratetable_offset(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_read_shm(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
