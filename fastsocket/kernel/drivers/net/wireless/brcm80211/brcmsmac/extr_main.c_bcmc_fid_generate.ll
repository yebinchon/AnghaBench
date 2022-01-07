; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_bcmc_fid_generate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_bcmc_fid_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }
%struct.brcms_bss_cfg = type { i32 }
%struct.d11txh = type { i32 }

@TXFID_SEQ_MASK = common dso_local global i32 0, align 4
@TXFID_QUEUE_MASK = common dso_local global i32 0, align 4
@TXFID_SEQ_SHIFT = common dso_local global i32 0, align 4
@TX_BCMC_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, %struct.brcms_bss_cfg*, %struct.d11txh*)* @bcmc_fid_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmc_fid_generate(%struct.brcms_c_info* %0, %struct.brcms_bss_cfg* %1, %struct.d11txh* %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.brcms_bss_cfg*, align 8
  %6 = alloca %struct.d11txh*, align 8
  %7 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.brcms_bss_cfg* %1, %struct.brcms_bss_cfg** %5, align 8
  store %struct.d11txh* %2, %struct.d11txh** %6, align 8
  %8 = load %struct.d11txh*, %struct.d11txh** %6, align 8
  %9 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = load i32, i32* @TXFID_SEQ_MASK, align 4
  %13 = load i32, i32* @TXFID_QUEUE_MASK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @TXFID_SEQ_SHIFT, align 4
  %22 = shl i32 %19, %21
  %23 = load i32, i32* @TXFID_SEQ_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @TX_BCMC_FIFO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
