; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.concap_proto* }
%struct.concap_proto = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.concap_proto*, %struct.sk_buff*)* }

@ISDN_NET_CONNECTED = common dso_local global i32 0, align 4
@ISDN_NET_DM_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"dial rejected: interface not in dialmode `auto'\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dial rejected: retry-time not reached\00", align 1
@dev = common dso_local global %struct.TYPE_13__* null, align 8
@ISDN_USAGE_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"No channel\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"No phone number\00", align 1
@ISDN_NET_ENCAP_SYNCPPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @isdn_net_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_net_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @netdev_priv(%struct.net_device* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @isdn_net_adjust_hdr(%struct.sk_buff* %13, %struct.net_device* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ISDN_NET_CONNECTED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %193, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = call i64 @ISDN_NET_DIALMODE(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %23)
  %25 = load i64, i64* @ISDN_NET_DM_AUTO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @isdn_net_unreachable(%struct.net_device* %28, %struct.sk_buff* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @dev_kfree_skb(%struct.sk_buff* %31)
  %33 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %218

34:                                               ; preds = %22
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 12
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %186

41:                                               ; preds = %34
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i64 @time_before(i32 %57, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %71, %56, %51, %46
  br label %86

86:                                               ; preds = %85, %41
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load i32, i32* @jiffies, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @time_before(i32 %92, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @isdn_net_unreachable(%struct.net_device* %99, %struct.sk_buff* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @dev_kfree_skb(%struct.sk_buff* %102)
  %104 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %218

105:                                              ; preds = %91
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108, %86
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @spin_lock_irqsave(i32* %111, i32 %112)
  %114 = load i32, i32* @ISDN_USAGE_NET, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @isdn_get_free_channel(i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %109
  %133 = load i32, i32* @ISDN_USAGE_NET, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = xor i32 %145, 1
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @isdn_get_free_channel(i32 %133, i32 %136, i32 %139, i32 %142, i32 %146, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %132
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i32 %155)
  %157 = load %struct.net_device*, %struct.net_device** %5, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @isdn_net_unreachable(%struct.net_device* %157, %struct.sk_buff* %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = call i32 @dev_kfree_skb(%struct.sk_buff* %160)
  %162 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %162, i32* %3, align 4
  br label %218

163:                                              ; preds = %132, %109
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = call i32 @isdn_net_log_skb(%struct.sk_buff* %169, %struct.TYPE_16__* %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 6
  store i32 1, i32* %174, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @isdn_net_bind_channel(%struct.TYPE_16__* %175, i32 %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i32 %180)
  %182 = call i32 (...) @isdn_net_dial()
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = call i32 @isdn_net_device_stop_queue(%struct.TYPE_16__* %183)
  %185 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %185, i32* %3, align 4
  br label %218

186:                                              ; preds = %34
  %187 = load %struct.net_device*, %struct.net_device** %5, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = call i32 @isdn_net_unreachable(%struct.net_device* %187, %struct.sk_buff* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = call i32 @dev_kfree_skb(%struct.sk_buff* %190)
  %192 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %192, i32* %3, align 4
  br label %218

193:                                              ; preds = %2
  %194 = load i32, i32* @jiffies, align 4
  %195 = load %struct.net_device*, %struct.net_device** %5, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %193
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = call i32 @isdn_net_xmit(%struct.net_device* %202, %struct.sk_buff* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.net_device*, %struct.net_device** %5, align 8
  %209 = call i32 @netif_stop_queue(%struct.net_device* %208)
  br label %210

210:                                              ; preds = %207, %201
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %218

212:                                              ; preds = %193
  %213 = load %struct.net_device*, %struct.net_device** %5, align 8
  %214 = call i32 @netif_stop_queue(%struct.net_device* %213)
  br label %215

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %210, %186, %172, %152, %98, %27
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @isdn_net_adjust_hdr(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ISDN_NET_DIALMODE(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

declare dso_local i32 @isdn_net_unreachable(%struct.net_device*, %struct.sk_buff*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @isdn_get_free_channel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isdn_net_log_skb(%struct.sk_buff*, %struct.TYPE_16__*) #1

declare dso_local i32 @isdn_net_bind_channel(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @isdn_net_dial(...) #1

declare dso_local i32 @isdn_net_device_stop_queue(%struct.TYPE_16__*) #1

declare dso_local i32 @isdn_net_xmit(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
