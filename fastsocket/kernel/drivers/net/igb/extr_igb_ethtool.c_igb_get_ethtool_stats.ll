; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.igb_adapter = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IGB_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_stats = common dso_local global %struct.TYPE_7__* null, align 8
@IGB_NETDEV_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_net_stats = common dso_local global %struct.TYPE_8__* null, align 8
@IGB_TX_QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@IGB_RX_QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @igb_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.igb_adapter* %15, %struct.igb_adapter** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %8, align 8
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %19 = call i32 @igb_update_stats(%struct.igb_adapter* %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %57, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IGB_GLOBAL_STATS_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %26 = bitcast %struct.igb_adapter* %25 to i8*
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @igb_gstrings_stats, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  store i8* %34, i8** %13, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @igb_gstrings_stats, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  br label %51

47:                                               ; preds = %24
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %20

60:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %98, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IGB_NETDEV_STATS_LEN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %67 = bitcast %struct.net_device_stats* %66 to i8*
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @igb_gstrings_net_stats, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  store i8* %75, i8** %13, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @igb_gstrings_net_stats, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = load i8*, i8** %13, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  br label %92

88:                                               ; preds = %65
  %89 = load i8*, i8** %13, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %87, %84 ], [ %91, %88 ]
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %61

103:                                              ; preds = %61
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %139, %103
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %107 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %104
  %111 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %112 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %113, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32* %118, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %133, %110
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @IGB_TX_QUEUE_STATS_LEN, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %119

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %104

142:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %178, %142
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %146 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %181

149:                                              ; preds = %143
  %150 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %151 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32* %157, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %172, %149
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @IGB_RX_QUEUE_STATS_LEN, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %158

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %143

181:                                              ; preds = %143
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_update_stats(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
