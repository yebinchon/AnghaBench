; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_pspoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_pspoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@DEBUG_PS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"handle_pspoll: BSSID=%pM, TA=%pM PWRMGT=%d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"handle_pspoll - addr1(BSSID)=%pM not own MAC\0A\00", align 1
@DEBUG_PS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"   PSPOLL and AID[15:14] not set\0A\00", align 1
@MAX_AID_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"   invalid aid=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"   aid=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"   STA not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"   received aid=%i does not match with assoc.aid=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Sending buffered frame to STA after PS POLL (buffer_count=%d)\0A\00", align 1
@WLAN_STA_PS = common dso_local global i32 0, align 4
@WLAN_STA_TIM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Re-unsetting TIM for aid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.ieee80211_hdr*, %struct.hostap_80211_rx_status*)* @handle_pspoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pspoll(%struct.TYPE_6__* %0, %struct.ieee80211_hdr* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* @DEBUG_PS2, align 4
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_has_pm(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @PDEBUG(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %28)
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i64 @memcmp(i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load i32, i32* @DEBUG_AP, align 4
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @PDEBUG(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %179

45:                                               ; preds = %3
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BIT(i32 15)
  %52 = call i32 @BIT(i32 14)
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = call i32 @BIT(i32 15)
  %56 = call i32 @BIT(i32 14)
  %57 = or i32 %55, %56
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @DEBUG_PS, align 4
  %61 = call i32 (i32, i8*, ...) @PDEBUG(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %179

62:                                               ; preds = %45
  %63 = call i32 @BIT(i32 15)
  %64 = call i32 @BIT(i32 14)
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %62
  %76 = load i32, i32* @DEBUG_PS, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i32, i8*, ...) @PDEBUG(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %179

79:                                               ; preds = %71
  %80 = load i32, i32* @DEBUG_PS2, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32, i8*, ...) @PDEBUG(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_bh(i32* %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_7__* %90, i32 %93)
  store %struct.sta_info* %94, %struct.sta_info** %8, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %96 = icmp ne %struct.sta_info* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %79
  %98 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 2
  %100 = call i32 @atomic_inc(i32* %99)
  br label %101

101:                                              ; preds = %97, %79
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %108 = icmp eq %struct.sta_info* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @DEBUG_PS, align 4
  %111 = call i32 (i32, i8*, ...) @PDEBUG(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %179

112:                                              ; preds = %101
  %113 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* @DEBUG_PS, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @PDEBUG(i32 %119, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %123)
  br label %179

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %148, %125
  %127 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 3
  %129 = call %struct.sk_buff* @skb_dequeue(i32* %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %10, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br i1 %130, label %131, label %149

131:                                              ; preds = %126
  %132 = load i32, i32* @DEBUG_PS2, align 4
  %133 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 3
  %135 = call i32 @skb_queue_len(i32* %134)
  %136 = call i32 (i32, i8*, ...) @PDEBUG(i32 %132, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %140 = call i32 @pspoll_send_buffered(%struct.TYPE_6__* %137, %struct.sta_info* %138, %struct.sk_buff* %139)
  %141 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @WLAN_STA_PS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %131
  br label %149

148:                                              ; preds = %131
  br label %126

149:                                              ; preds = %147, %126
  %150 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %151 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %150, i32 0, i32 3
  %152 = call i64 @skb_queue_empty(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %149
  %155 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %156 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @WLAN_STA_TIM, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @DEBUG_PS2, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (i32, i8*, ...) @PDEBUG(i32 %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @hostap_set_tim(%struct.TYPE_6__* %166, i32 %167, i32 0)
  %169 = load i32, i32* @WLAN_STA_TIM, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %172 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %165, %149
  %176 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %177 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %176, i32 0, i32 2
  %178 = call i32 @atomic_dec(i32* %177)
  br label %179

179:                                              ; preds = %175, %118, %109, %75, %59, %39
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @ieee80211_has_pm(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @pspoll_send_buffered(%struct.TYPE_6__*, %struct.sta_info*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @hostap_set_tim(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
