; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { i32*, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AMPDU_MAX_SCB_TID = common dso_local global i32 0, align 4
@PRIO_8021D_VO = common dso_local global i64 0, align 8
@PRIO_8021D_NC = common dso_local global i64 0, align 8
@PRIO_8021D_NONE = common dso_local global i64 0, align 8
@PRIO_8021D_BK = common dso_local global i64 0, align 8
@AMPDU_TX_BA_DEF_WSIZE = common dso_local global i32 0, align 4
@AMPDU_RX_BA_DEF_WSIZE = common dso_local global i32 0, align 4
@AMPDU_DEF_MPDU_DENSITY = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@AMPDU_MAX_DUR = common dso_local global i32 0, align 4
@AMPDU_DEF_FFPLD_RSVD = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_32K = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@AMPDU_DEF_RETRY_LIMIT = common dso_local global i32 0, align 4
@AMPDU_DEF_RR_RETRY_LIMIT = common dso_local global i32 0, align 4
@FFPLD_TX_MAX_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ampdu_info* @brcms_c_ampdu_attach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.ampdu_info*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.ampdu_info*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.ampdu_info* @kzalloc(i32 80, i32 %6)
  store %struct.ampdu_info* %7, %struct.ampdu_info** %4, align 8
  %8 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %9 = icmp ne %struct.ampdu_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ampdu_info* null, %struct.ampdu_info** %2, align 8
  br label %143

11:                                               ; preds = %1
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %13 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %14 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %13, i32 0, i32 14
  store %struct.brcms_c_info* %12, %struct.brcms_c_info** %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %26, %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AMPDU_MAX_SCB_TID, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %21 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %31 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @PRIO_8021D_VO, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %36 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @PRIO_8021D_NC, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 0, i32* %39, align 4
  %40 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %41 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PRIO_8021D_NONE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 0, i32* %44, align 4
  %45 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %46 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @PRIO_8021D_BK, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @AMPDU_TX_BA_DEF_WSIZE, align 4
  %51 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %52 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @AMPDU_RX_BA_DEF_WSIZE, align 4
  %54 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %55 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @AMPDU_DEF_MPDU_DENSITY, align 4
  %57 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %58 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @AUTO, align 4
  %60 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %61 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @AMPDU_MAX_DUR, align 4
  %63 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %64 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @AMPDU_DEF_FFPLD_RSVD, align 4
  %66 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %67 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %69 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i64 @BRCMS_ISNPHY(%struct.TYPE_4__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %29
  %74 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @NREV_LT(i32 %78, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_32K, align 4
  %83 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %84 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  br label %89

85:                                               ; preds = %73, %29
  %86 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %87 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %88 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* @AMPDU_DEF_RETRY_LIMIT, align 4
  %91 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %92 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @AMPDU_DEF_RR_RETRY_LIMIT, align 4
  %94 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %95 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %119, %89
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @AMPDU_MAX_SCB_TID, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %102 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %105 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %104, i32 0, i32 7
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %111 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %114 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %96

122:                                              ; preds = %96
  %123 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %124 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %125 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @brcms_c_scb_ampdu_update_max_txlen(%struct.ampdu_info* %123, i32 %126)
  %128 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %129 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %131 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %132 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @brcms_c_ampdu_set(%struct.ampdu_info* %130, i32 %135)
  %137 = load i32, i32* @FFPLD_TX_MAX_UNFL, align 4
  %138 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %139 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %141 = call i32 @brcms_c_ffpld_init(%struct.ampdu_info* %140)
  %142 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  store %struct.ampdu_info* %142, %struct.ampdu_info** %2, align 8
  br label %143

143:                                              ; preds = %122, %10
  %144 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  ret %struct.ampdu_info* %144
}

declare dso_local %struct.ampdu_info* @kzalloc(i32, i32) #1

declare dso_local i64 @BRCMS_ISNPHY(%struct.TYPE_4__*) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @brcms_c_scb_ampdu_update_max_txlen(%struct.ampdu_info*, i32) #1

declare dso_local i32 @brcms_c_ampdu_set(%struct.ampdu_info*, i32) #1

declare dso_local i32 @brcms_c_ffpld_init(%struct.ampdu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
