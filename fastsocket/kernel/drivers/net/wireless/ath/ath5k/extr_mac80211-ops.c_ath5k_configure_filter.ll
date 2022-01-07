; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_vif_iter_data = type { i32, i32, i32* }

@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_UCAST = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_BCAST = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_MCAST = common dso_local global i32 0, align 4
@ATH_STAT_PROMISC = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_PROM = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_BEACON = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_CONTROL = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_PROBEREQ = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath5k_vif_iter = common dso_local global i32 0, align 4
@SUPPORTED_FIF_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @ath5k_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath5k_hw*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath5k_vif_iter_data, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %14, align 8
  store %struct.ath5k_hw* %15, %struct.ath5k_hw** %9, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 32
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %25 = load i32, i32* @FIF_ALLMULTI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FIF_FCSFAIL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FIF_PLCPFAIL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FIF_CONTROL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FIF_OTHER_BSS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %40 = load i32, i32* @FIF_ALLMULTI, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FIF_FCSFAIL, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FIF_PLCPFAIL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FIF_CONTROL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FIF_OTHER_BSS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %56 = call i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw* %55)
  %57 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @AR5K_RX_FILTER_UCAST, align 4
  %60 = load i32, i32* @AR5K_RX_FILTER_BCAST, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AR5K_RX_FILTER_MCAST, align 4
  %63 = or i32 %61, %62
  %64 = or i32 %58, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %67 = load i32, i32* @FIF_OTHER_BSS, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @ATH_STAT_PROMISC, align 4
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__set_bit(i32 %78, i32 %81)
  br label %89

83:                                               ; preds = %71
  %84 = load i32, i32* @ATH_STAT_PROMISC, align 4
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %86 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__clear_bit(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %4
  %91 = load i32, i32* @ATH_STAT_PROMISC, align 4
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %93 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @test_bit(i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @AR5K_RX_FILTER_PROM, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FIF_ALLMULTI, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 -1, i32* %108, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 -1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FIF_FCSFAIL, align 4
  %114 = load i32, i32* @FIF_PLCPFAIL, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %110
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %130 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %128, %122
  %134 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FIF_CONTROL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* @AR5K_RX_FILTER_CONTROL, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %149 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %177 [
    i32 129, label %151
    i32 130, label %161
    i32 131, label %161
    i32 128, label %167
  ]

151:                                              ; preds = %147
  %152 = load i32, i32* @AR5K_RX_FILTER_CONTROL, align 4
  %153 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @AR5K_RX_FILTER_PROBEREQ, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @AR5K_RX_FILTER_PROM, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %178

161:                                              ; preds = %147, %147
  %162 = load i32, i32* @AR5K_RX_FILTER_PROBEREQ, align 4
  %163 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %11, align 4
  br label %178

167:                                              ; preds = %147
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %169 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %167
  br label %177

177:                                              ; preds = %147, %176
  br label %178

178:                                              ; preds = %177, %161, %151
  %179 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %12, i32 0, i32 2
  store i32* null, i32** %179, align 8
  %180 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %12, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %12, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %183 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %186 = load i32, i32* @ath5k_vif_iter, align 4
  %187 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %184, i32 %185, i32 %186, %struct.ath5k_vif_iter_data* %12)
  %188 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %12, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %178
  %192 = load i32, i32* @AR5K_RX_FILTER_PROM, align 4
  %193 = load i32, i32* %11, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %191, %178
  %196 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %196, i32 %197)
  %199 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ath5k_hw_set_mcast_filter(%struct.ath5k_hw* %199, i32 %201, i32 %203)
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %207 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  %208 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  %209 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %208, i32 0, i32 3
  %210 = call i32 @mutex_unlock(i32* %209)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath5k_vif_iter_data*) #1

declare dso_local i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_mcast_filter(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
