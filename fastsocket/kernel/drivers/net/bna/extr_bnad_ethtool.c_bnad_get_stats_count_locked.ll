; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_stats_count_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_stats_count_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@BNAD_ETHTOOL_STATS_NUM = common dso_local global i32 0, align 4
@BNAD_NUM_TXF_COUNTERS = common dso_local global i32 0, align 4
@BNAD_NUM_RXF_COUNTERS = common dso_local global i32 0, align 4
@BNAD_NUM_CQ_COUNTERS = common dso_local global i32 0, align 4
@BNAD_NUM_RXQ_COUNTERS = common dso_local global i32 0, align 4
@BNAD_NUM_TXQ_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnad_get_stats_count_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_get_stats_count_locked(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.bnad* @netdev_priv(%struct.net_device* %10)
  store %struct.bnad* %11, %struct.bnad** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.bnad*, %struct.bnad** %3, align 8
  %13 = getelementptr inbounds %struct.bnad, %struct.bnad* %12, i32 0, i32 6
  %14 = call i32 @bna_tx_rid_mask(i32* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.bnad*, %struct.bnad** %3, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 6
  %34 = call i32 @bna_rx_rid_mask(i32* %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %48, %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load i32, i32* @BNAD_ETHTOOL_STATS_NUM, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @BNAD_NUM_TXF_COUNTERS, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BNAD_NUM_RXF_COUNTERS, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %163, %51
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.bnad*, %struct.bnad** %3, align 8
  %64 = getelementptr inbounds %struct.bnad, %struct.bnad* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %166

67:                                               ; preds = %61
  %68 = load %struct.bnad*, %struct.bnad** %3, align 8
  %69 = getelementptr inbounds %struct.bnad, %struct.bnad* %68, i32 0, i32 5
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %163

78:                                               ; preds = %67
  %79 = load %struct.bnad*, %struct.bnad** %3, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BNAD_NUM_CQ_COUNTERS, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.bnad*, %struct.bnad** %3, align 8
  %87 = getelementptr inbounds %struct.bnad, %struct.bnad* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BNAD_NUM_RXQ_COUNTERS, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %159, %78
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.bnad*, %struct.bnad** %3, align 8
  %96 = getelementptr inbounds %struct.bnad, %struct.bnad* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %93
  %100 = load %struct.bnad*, %struct.bnad** %3, align 8
  %101 = getelementptr inbounds %struct.bnad, %struct.bnad* %100, i32 0, i32 5
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %99
  %115 = load %struct.bnad*, %struct.bnad** %3, align 8
  %116 = getelementptr inbounds %struct.bnad, %struct.bnad* %115, i32 0, i32 5
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %129, i64 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = icmp ne %struct.TYPE_6__* %131, null
  br i1 %132, label %133, label %158

133:                                              ; preds = %114
  %134 = load %struct.bnad*, %struct.bnad** %3, align 8
  %135 = getelementptr inbounds %struct.bnad, %struct.bnad* %134, i32 0, i32 5
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %148, i64 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %133
  %155 = load i32, i32* @BNAD_NUM_RXQ_COUNTERS, align 4
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %133, %114, %99
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %93

162:                                              ; preds = %93
  br label %163

163:                                              ; preds = %162, %77
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %61

166:                                              ; preds = %61
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %192, %166
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.bnad*, %struct.bnad** %3, align 8
  %170 = getelementptr inbounds %struct.bnad, %struct.bnad* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %167
  %174 = load %struct.bnad*, %struct.bnad** %3, align 8
  %175 = getelementptr inbounds %struct.bnad, %struct.bnad* %174, i32 0, i32 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %173
  br label %192

184:                                              ; preds = %173
  %185 = load %struct.bnad*, %struct.bnad** %3, align 8
  %186 = getelementptr inbounds %struct.bnad, %struct.bnad* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @BNAD_NUM_TXQ_COUNTERS, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %184, %183
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %167

195:                                              ; preds = %167
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bna_tx_rid_mask(i32*) #1

declare dso_local i32 @bna_rx_rid_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
