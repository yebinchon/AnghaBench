; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_rx_any.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_rx_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.libipw_rx_stats = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32, i32 }

@IW_MODE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_FCTL_VERS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libipw_rx_any(%struct.libipw_device* %0, %struct.sk_buff* %1, %struct.libipw_rx_stats* %2) #0 {
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.libipw_rx_stats*, align 8
  %7 = alloca %struct.libipw_hdr_4addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.libipw_rx_stats* %2, %struct.libipw_rx_stats** %6, align 8
  %10 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %11 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IW_MODE_MONITOR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %19 = call i32 @libipw_rx(%struct.libipw_device* %16, %struct.sk_buff* %17, %struct.libipw_rx_stats* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %214

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %204

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.libipw_hdr_4addr*
  store %struct.libipw_hdr_4addr* %36, %struct.libipw_hdr_4addr** %7, align 8
  %37 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %38 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @IEEE80211_FCTL_VERS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %204

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %66 [
    i32 130, label %50
    i32 131, label %64
    i32 132, label %65
  ]

50:                                               ; preds = %46
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %204

57:                                               ; preds = %50
  %58 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %59 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %60 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %61 = call i32 @libipw_rx_mgt(%struct.libipw_device* %58, %struct.libipw_hdr_4addr* %59, %struct.libipw_rx_stats* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %62)
  br label %214

64:                                               ; preds = %46
  br label %67

65:                                               ; preds = %46
  br label %214

66:                                               ; preds = %46
  br label %214

67:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  %68 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %69 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %189 [
    i32 129, label %71
    i32 128, label %123
  ]

71:                                               ; preds = %67
  %72 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %73 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %76 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcmp(i32 %74, i32 %77, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %84 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %85 = add nsw i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %81
  %89 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %90 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFF_PROMISC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 1, i32* %8, align 4
  br label %120

98:                                               ; preds = %88
  %99 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %100 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %103 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcmp(i32 %101, i32 %106, i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 1, i32* %8, align 4
  br label %119

111:                                              ; preds = %98
  %112 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %113 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @is_multicast_ether_addr(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %111
  br label %119

119:                                              ; preds = %118, %110
  br label %120

120:                                              ; preds = %119, %97
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %71
  br label %190

123:                                              ; preds = %67
  %124 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %125 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %128 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ETH_ALEN, align 4
  %131 = call i32 @memcmp(i32 %126, i32 %129, i32 %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %188

133:                                              ; preds = %123
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %136 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %137 = add nsw i32 %135, %136
  %138 = and i32 %134, %137
  %139 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %187

141:                                              ; preds = %133
  %142 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %143 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IFF_PROMISC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store i32 1, i32* %8, align 4
  br label %186

151:                                              ; preds = %141
  %152 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %153 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %156 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ETH_ALEN, align 4
  %161 = call i32 @memcmp(i32 %154, i32 %159, i32 %160)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  store i32 1, i32* %8, align 4
  br label %185

164:                                              ; preds = %151
  %165 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %166 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @is_multicast_ether_addr(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %172 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %175 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ETH_ALEN, align 4
  %180 = call i32 @memcmp(i32 %173, i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  store i32 1, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %170
  br label %184

184:                                              ; preds = %183, %164
  br label %185

185:                                              ; preds = %184, %163
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186, %133
  br label %188

188:                                              ; preds = %187, %123
  br label %190

189:                                              ; preds = %67
  br label %190

190:                                              ; preds = %189, %188, %122
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %197 = call i32 @libipw_rx(%struct.libipw_device* %194, %struct.sk_buff* %195, %struct.libipw_rx_stats* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %193
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %200)
  br label %202

202:                                              ; preds = %199, %193
  br label %203

203:                                              ; preds = %202, %190
  br label %214

204:                                              ; preds = %56, %45, %31
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %205)
  %207 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %208 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %207, i32 0, i32 1
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %204, %203, %66, %65, %57, %24
  ret void
}

declare dso_local i32 @libipw_rx(%struct.libipw_device*, %struct.sk_buff*, %struct.libipw_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @libipw_rx_mgt(%struct.libipw_device*, %struct.libipw_hdr_4addr*, %struct.libipw_rx_stats*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
