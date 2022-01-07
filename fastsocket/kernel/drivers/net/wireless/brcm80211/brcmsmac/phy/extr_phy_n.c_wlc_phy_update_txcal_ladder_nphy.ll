; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_update_txcal_ladder_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_update_txcal_ladder_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_txiqcal_ladder = type { i32, i32, i64, i32 }
%struct.brcms_phy = type { i32 }

@__const.wlc_phy_update_txcal_ladder_nphy.ladder_lo = private unnamed_addr constant [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i32 3, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 4, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 6, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 9, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 13, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 18, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 1, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 2, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 3, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 4, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 5, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 6, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 35, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 50, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 71, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 7, i64 0, i32 0 }], align 16
@__const.wlc_phy_update_txcal_ladder_nphy.ladder_iq = private unnamed_addr constant [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i32 3, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 4, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 6, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 9, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 13, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 18, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 35, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 50, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 71, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 1, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 2, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 3, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 4, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 5, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 6, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 7, i64 0, i32 0 }], align 16
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_update_txcal_ladder_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_update_txcal_ladder_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [18 x %struct.nphy_txiqcal_ladder], align 16
  %10 = alloca [18 x %struct.nphy_txiqcal_ladder], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = bitcast [18 x %struct.nphy_txiqcal_ladder]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([18 x %struct.nphy_txiqcal_ladder]* @__const.wlc_phy_update_txcal_ladder_nphy.ladder_lo to i8*), i64 432, i1 false)
  %12 = bitcast [18 x %struct.nphy_txiqcal_ladder]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([18 x %struct.nphy_txiqcal_ladder]* @__const.wlc_phy_update_txcal_ladder_nphy.ladder_iq to i8*), i64 432, i1 false)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PHY_CORE_0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32 [ %21, %16 ], [ %26, %22 ]
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %83, %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 18
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* %9, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul nsw i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 100
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* %9, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %46, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %54, i32 %55, i32 1, i32 %56, i32 16, i64* %8)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* %10, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = mul nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %66, 100
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 255
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* %10, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %70, %75
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %8, align 8
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 32
  %82 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %78, i32 %79, i32 1, i32 %81, i32 16, i64* %8)
  br label %83

83:                                               ; preds = %33
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %30

86:                                               ; preds = %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
