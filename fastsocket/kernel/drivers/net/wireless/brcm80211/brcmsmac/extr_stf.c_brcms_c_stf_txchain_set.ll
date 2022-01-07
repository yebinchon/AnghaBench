; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_txchain_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_txchain_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_STREAMS_SUPPORTED = common dso_local global i64 0, align 8
@BAND_2G_INDEX = common dso_local global i64 0, align 8
@BAND_5G_INDEX = common dso_local global i64 0, align 8
@ANT_TX_FORCE_0 = common dso_local global i32 0, align 4
@ANT_TX_DEF = common dso_local global i32 0, align 4
@txcore_default = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_stf_txchain_set(%struct.brcms_c_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %21, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %31, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %135

42:                                               ; preds = %30
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @hweight8(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @MAX_STREAMS_SUPPORTED, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %135

51:                                               ; preds = %42
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %54 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %59 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i64 %57, i64* %61, align 8
  %62 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %64 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @brcms_c_stf_stbc_tx_set(%struct.brcms_c_info* %62, i32 %67)
  %69 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %70 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %71 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @BAND_2G_INDEX, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %69, i32 %75)
  %77 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %78 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %79 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @BAND_5G_INDEX, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %77, i32 %83)
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %86 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %51
  %92 = load i32, i32* @ANT_TX_FORCE_0, align 4
  br label %95

93:                                               ; preds = %51
  %94 = load i32, i32* @ANT_TX_DEF, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %98 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 %96, i32* %100, align 4
  %101 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %102 = call i32 @_brcms_c_stf_phy_txant_upd(%struct.brcms_c_info* %101)
  %103 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %104 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %109 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %114 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @wlc_phy_stf_chain_set(i32 %107, i64 %112, i32 %117)
  store i64 1, i64* %10, align 8
  br label %119

119:                                              ; preds = %131, %95
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @MAX_STREAMS_SUPPORTED, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i32*, i32** @txcore_default, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @brcms_c_stf_txcore_set(%struct.brcms_c_info* %124, i64 %125, i32 %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %119

134:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %48, %39, %19
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @hweight8(i64) #1

declare dso_local i32 @brcms_c_stf_stbc_tx_set(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_stf_ss_update(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @_brcms_c_stf_phy_txant_upd(%struct.brcms_c_info*) #1

declare dso_local i32 @wlc_phy_stf_chain_set(i32, i64, i32) #1

declare dso_local i32 @brcms_c_stf_txcore_set(%struct.brcms_c_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
