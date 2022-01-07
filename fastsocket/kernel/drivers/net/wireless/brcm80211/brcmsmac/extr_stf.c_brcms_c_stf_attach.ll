; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_5__**, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@PHY_TXC1_MODE_SISO = common dso_local global i8* null, align 8
@BAND_2G_INDEX = common dso_local global i64 0, align 8
@PHY_TXC1_MODE_CDD = common dso_local global i8* null, align 8
@BAND_5G_INDEX = common dso_local global i64 0, align 8
@PHY_TPC_HW_ON = common dso_local global i64 0, align 8
@HT_CAP_RX_STBC_NO = common dso_local global i32 0, align 4
@OFF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_stf_attach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %3 = load i8*, i8** @PHY_TXC1_MODE_SISO, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %7 = load i64, i64* @BAND_2G_INDEX, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %6, i64 %7
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i8* %3, i8** %10, align 8
  %11 = load i8*, i8** @PHY_TXC1_MODE_CDD, align 8
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = load i64, i64* @BAND_5G_INDEX, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i8* %11, i8** %18, align 8
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i64 @BRCMS_ISNPHY(%struct.TYPE_6__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @wlc_phy_txpower_hw_ctrl_get(i32 %29)
  %31 = load i64, i64* @PHY_TPC_HW_ON, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i8*, i8** @PHY_TXC1_MODE_CDD, align 8
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = load i64, i64* @BAND_2G_INDEX, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  br label %42

42:                                               ; preds = %33, %24, %1
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %45 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i64, i64* @BAND_2G_INDEX, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %43, %struct.TYPE_5__* %49)
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i64, i64* @BAND_5G_INDEX, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %51, %struct.TYPE_5__* %57)
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %60 = load i32, i32* @HT_CAP_RX_STBC_NO, align 4
  %61 = call i32 @brcms_c_stf_stbc_rx_ht_update(%struct.brcms_c_info* %59, i32 %60)
  %62 = load i8*, i8** @OFF, align 8
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %64, align 8
  %66 = load i64, i64* @BAND_2G_INDEX, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i8* %62, i8** %69, align 8
  %70 = load i8*, i8** @OFF, align 8
  %71 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %72 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %72, align 8
  %74 = load i64, i64* @BAND_5G_INDEX, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* %70, i8** %77, align 8
  %78 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %79 = call i64 @BRCMS_STBC_CAP_PHY(%struct.brcms_c_info* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %42
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i64 -1, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %42
  ret i32 0
}

declare dso_local i64 @BRCMS_ISNPHY(%struct.TYPE_6__*) #1

declare dso_local i64 @wlc_phy_txpower_hw_ctrl_get(i32) #1

declare dso_local i32 @brcms_c_stf_ss_update(%struct.brcms_c_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @brcms_c_stf_stbc_rx_ht_update(%struct.brcms_c_info*, i32) #1

declare dso_local i64 @BRCMS_STBC_CAP_PHY(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
