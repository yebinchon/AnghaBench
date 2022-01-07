; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_soft_cal_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_soft_cal_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_unsign16_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_tx_iqlo_soft_cal_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tx_iqlo_soft_cal_full(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.lcnphy_unsign16_struct, align 4
  %4 = alloca %struct.lcnphy_unsign16_struct, align 4
  %5 = alloca %struct.lcnphy_unsign16_struct, align 4
  %6 = alloca %struct.lcnphy_unsign16_struct, align 4
  %7 = alloca %struct.lcnphy_unsign16_struct, align 4
  %8 = alloca %struct.lcnphy_unsign16_struct, align 4
  %9 = alloca %struct.lcnphy_unsign16_struct, align 4
  %10 = alloca %struct.lcnphy_unsign16_struct, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %11, i32 0, i32 0, i32 0)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %13, i32 2, i32 0, i32 0)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %15, i32 3, i32 0, i32 0)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %17, i32 4, i32 0, i32 0)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %19, i32 4, i32 0, i32 0)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %21, i32 3, i32 0, i32 0)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %23, i32 2, i32 3, i32 2)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %25, i32 0, i32 5, i32 8)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %27, i32 2, i32 2, i32 1)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = call i32 @wlc_lcnphy_a1(%struct.brcms_phy* %29, i32 0, i32 4, i32 3)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = call i32 @wlc_lcnphy_get_cc(%struct.brcms_phy* %31, i32 0)
  %33 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.lcnphy_unsign16_struct* %3 to i8*
  %35 = bitcast %struct.lcnphy_unsign16_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = call i32 @wlc_lcnphy_get_cc(%struct.brcms_phy* %36, i32 2)
  %38 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.lcnphy_unsign16_struct* %4 to i8*
  %40 = bitcast %struct.lcnphy_unsign16_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = call i32 @wlc_lcnphy_get_cc(%struct.brcms_phy* %41, i32 3)
  %43 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.lcnphy_unsign16_struct* %5 to i8*
  %45 = bitcast %struct.lcnphy_unsign16_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = call i32 @wlc_lcnphy_get_cc(%struct.brcms_phy* %46, i32 4)
  %48 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.lcnphy_unsign16_struct* %6 to i8*
  %50 = bitcast %struct.lcnphy_unsign16_struct* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  ret void
}

declare dso_local i32 @wlc_lcnphy_set_cc(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_a1(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_get_cc(%struct.brcms_phy*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
