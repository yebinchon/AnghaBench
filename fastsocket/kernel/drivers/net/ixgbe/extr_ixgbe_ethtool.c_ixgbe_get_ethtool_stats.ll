; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_5__, %struct.ixgbe_ring**, %struct.ixgbe_ring** }
%struct.TYPE_5__ = type { i64*, i64*, i64*, i64* }
%struct.ixgbe_ring = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@IXGBE_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbe_gstrings_stats = common dso_local global %struct.TYPE_6__* null, align 8
@IXGBE_NUM_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_MAX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @ixgbe_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca %struct.ixgbe_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %7, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %15 = call i32 @ixgbe_update_stats(%struct.ixgbe_adapter* %14)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @dev_get_stats(%struct.net_device* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %79, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IXGBE_GLOBAL_STATS_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %51 [
    i32 128, label %29
    i32 129, label %40
  ]

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = bitcast %struct.net_device* %30 to i8*
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  store i8* %39, i8** %11, align 8
  br label %56

40:                                               ; preds = %22
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %42 = bitcast %struct.ixgbe_adapter* %41 to i8*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %42, i64 %49
  store i8* %50, i8** %11, align 8
  br label %56

51:                                               ; preds = %22
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  br label %79

56:                                               ; preds = %40, %29
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i8*, i8** %11, align 8
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8
  br label %73

69:                                               ; preds = %56
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast i8* %70 to i64*
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i64 [ %68, %65 ], [ %72, %69 ]
  %75 = load i64*, i64** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %74, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %51
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %18

82:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %131, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IXGBE_NUM_RX_QUEUES, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %83
  %88 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %89 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %88, i32 0, i32 2
  %90 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %90, i64 %92
  %94 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %93, align 8
  store %struct.ixgbe_ring* %94, %struct.ixgbe_ring** %8, align 8
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %96 = icmp ne %struct.ixgbe_ring* %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %87
  %98 = load i64*, i64** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 0, i64* %101, align 8
  %102 = load i64*, i64** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %9, align 4
  br label %131

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %112 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %114, i64* %118, align 8
  %119 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %120 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %110
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %97
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %83

134:                                              ; preds = %83
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %183, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @IXGBE_NUM_RX_QUEUES, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %135
  %140 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %141 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %140, i32 0, i32 1
  %142 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %142, i64 %144
  %146 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %145, align 8
  store %struct.ixgbe_ring* %146, %struct.ixgbe_ring** %8, align 8
  %147 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %148 = icmp ne %struct.ixgbe_ring* %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %139
  %150 = load i64*, i64** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 0, i64* %153, align 8
  %154 = load i64*, i64** %6, align 8
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 2
  store i32 %160, i32* %9, align 4
  br label %183

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %164 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %166, i64* %170, align 8
  %171 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %8, align 8
  %172 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64*, i64** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  store i64 %174, i64* %179, align 8
  br label %180

180:                                              ; preds = %162
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 2
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %149
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %135

186:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %218, %186
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %193 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i64, i64* %200, i64 %203
  store i64 %199, i64* %204, align 8
  %205 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %206 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %6, align 8
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i64, i64* %213, i64 %216
  store i64 %212, i64* %217, align 8
  br label %218

218:                                              ; preds = %191
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %187

221:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %253, %221
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %256

226:                                              ; preds = %222
  %227 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %228 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i64*, i64** %6, align 8
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i64, i64* %235, i64 %238
  store i64 %234, i64* %239, align 8
  %240 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %241 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  store i64 %247, i64* %252, align 8
  br label %253

253:                                              ; preds = %226
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  br label %222

256:                                              ; preds = %222
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_update_stats(%struct.ixgbe_adapter*) #1

declare dso_local i32 @dev_get_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
