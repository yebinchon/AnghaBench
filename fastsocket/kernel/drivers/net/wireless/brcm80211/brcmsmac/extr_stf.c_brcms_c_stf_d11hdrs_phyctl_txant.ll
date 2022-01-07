; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_d11hdrs_phyctl_txant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_d11hdrs_phyctl_txant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_TXC_ANT_MASK = common dso_local global i32 0, align 4
@PHY_TXC_HTANT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_stf_d11hdrs_phyctl_txant(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @PHY_TXC_ANT_MASK, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @BRCMS_ISNPHY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_brcms_c_stf_phytxchain_sel(%struct.brcms_c_info* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PHY_TXC_HTANT_MASK, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @BRCMS_ISNPHY(i32) #1

declare dso_local i32 @_brcms_c_stf_phytxchain_sel(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
