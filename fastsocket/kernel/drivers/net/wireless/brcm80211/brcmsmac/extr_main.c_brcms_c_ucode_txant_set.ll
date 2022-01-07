; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_ucode_txant_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_ucode_txant_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32 }

@PHY_TXC_ANT_MASK = common dso_local global i32 0, align 4
@M_CTXPRS_BLK = common dso_local global i64 0, align 8
@C_CTX_PCTLWD_POS = common dso_local global i64 0, align 8
@M_RSP_PCTLWD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_c_ucode_txant_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_ucode_txant_set(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @PHY_TXC_ANT_MASK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %11 = load i64, i64* @M_CTXPRS_BLK, align 8
  %12 = load i64, i64* @C_CTX_PCTLWD_POS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @brcms_b_read_shm(%struct.brcms_hardware* %10, i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %22 = load i64, i64* @M_CTXPRS_BLK, align 8
  %23 = load i64, i64* @C_CTX_PCTLWD_POS, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %21, i64 %24, i32 %25)
  %27 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %28 = load i64, i64* @M_RSP_PCTLWD, align 8
  %29 = call i32 @brcms_b_read_shm(%struct.brcms_hardware* %27, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %37 = load i64, i64* @M_RSP_PCTLWD, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %36, i64 %37, i32 %38)
  ret void
}

declare dso_local i32 @brcms_b_read_shm(%struct.brcms_hardware*, i64) #1

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
