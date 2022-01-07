; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_nic* }
%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32*, i64 }
%struct.efx_ptp_match = type { i32*, i32, i64 }
%struct.skb_shared_hwtstamps = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PKT_EVENT_LIFETIME_MS = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V1 = common dso_local global i64 0, align 8
@PTP_V1_MIN_LENGTH = common dso_local global i32 0, align 4
@PTP_V1_VERSION_OFFSET = common dso_local global i64 0, align 8
@PTP_VERSION_V1 = common dso_local global i32 0, align 4
@PTP_V1_UUID_OFFSET = common dso_local global i32 0, align 4
@PTP_V2_MIN_LENGTH = common dso_local global i32 0, align 4
@PTP_V2_VERSION_OFFSET = common dso_local global i64 0, align 8
@PTP_VERSION_V2_MASK = common dso_local global i32 0, align 4
@PTP_VERSION_V2 = common dso_local global i32 0, align 4
@PTP_V2_UUID_OFFSET = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V2 = common dso_local global i64 0, align 8
@MC_CMD_PTP_MODE_V2_ENHANCED = common dso_local global i64 0, align 8
@PTP_DPORT_OFFSET = common dso_local global i64 0, align 8
@PTP_EVENT_PORT = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_UNMATCHED = common dso_local global i32 0, align 4
@PTP_V1_SEQUENCE_OFFSET = common dso_local global i32 0, align 4
@PTP_V2_SEQUENCE_OFFSET = common dso_local global i32 0, align 4
@PTP_V1_SEQUENCE_LENGTH = common dso_local global i32 0, align 4
@PTP_V2_SEQUENCE_LENGTH = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_MATCH_UNWANTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*, %struct.sk_buff*)* @efx_ptp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_rx(%struct.efx_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ptp_data*, align 8
  %8 = alloca %struct.efx_ptp_match*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %6, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %17, align 8
  store %struct.efx_ptp_data* %18, %struct.efx_ptp_data** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.efx_ptp_match*
  store %struct.efx_ptp_match* %22, %struct.efx_ptp_match** %8, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @PKT_EVENT_LIFETIME_MS, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %28 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %30 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MC_CMD_PTP_MODE_V1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @PTP_V1_MIN_LENGTH, align 4
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %211

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @PTP_V1_VERSION_OFFSET, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PTP_VERSION_V1, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %211

52:                                               ; preds = %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @PTP_V1_UUID_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @PTP_V1_UUID_OFFSET, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32* %65, i32** %10, align 8
  br label %122

66:                                               ; preds = %2
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @PTP_V2_MIN_LENGTH, align 4
  %69 = call i32 @pskb_may_pull(%struct.sk_buff* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %211

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @PTP_V2_VERSION_OFFSET, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @PTP_VERSION_V2_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @PTP_VERSION_V2, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %211

85:                                               ; preds = %72
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  store i32* %92, i32** %10, align 8
  %93 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %94 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MC_CMD_PTP_MODE_V2, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %85
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32* %105, i32** %9, align 8
  br label %121

106:                                              ; preds = %85
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32* %113, i32** %9, align 8
  %114 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %115 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MC_CMD_PTP_MODE_V2_ENHANCED, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  br label %121

121:                                              ; preds = %106, %98
  br label %122

122:                                              ; preds = %121, %52
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @PTP_DPORT_OFFSET, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = load i32, i32* @PTP_EVENT_PORT, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %196

132:                                              ; preds = %122
  %133 = load i32, i32* @PTP_PACKET_STATE_UNMATCHED, align 4
  %134 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %135 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %136)
  store %struct.skb_shared_hwtstamps* %137, %struct.skb_shared_hwtstamps** %12, align 8
  %138 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %12, align 8
  %139 = call i32 @memset(%struct.skb_shared_hwtstamps* %138, i32 0, i32 4)
  %140 = load i32, i32* @PTP_V1_SEQUENCE_OFFSET, align 4
  %141 = load i32, i32* @PTP_V2_SEQUENCE_OFFSET, align 4
  %142 = icmp ne i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @BUILD_BUG_ON(i32 %143)
  %145 = load i32, i32* @PTP_V1_SEQUENCE_LENGTH, align 4
  %146 = load i32, i32* @PTP_V2_SEQUENCE_LENGTH, align 4
  %147 = icmp ne i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUILD_BUG_ON(i32 %148)
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = or i32 %152, %156
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %157, %161
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 24
  %167 = or i32 %162, %166
  %168 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %169 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 8
  %179 = or i32 %174, %178
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @PTP_V1_SEQUENCE_OFFSET, align 4
  %184 = load i32, i32* @PTP_V1_SEQUENCE_LENGTH, align 4
  %185 = add nsw i32 %183, %184
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 16
  %191 = or i32 %179, %190
  %192 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %193 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %191, i32* %195, align 4
  br label %200

196:                                              ; preds = %122
  %197 = load i32, i32* @PTP_PACKET_STATE_MATCH_UNWANTED, align 4
  %198 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %199 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %196, %132
  %201 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %202 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %201, i32 0, i32 3
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call i32 @skb_queue_tail(i32* %202, %struct.sk_buff* %203)
  %205 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %206 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %209 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %208, i32 0, i32 1
  %210 = call i32 @queue_work(i32 %207, i32* %209)
  store i32 1, i32* %3, align 4
  br label %211

211:                                              ; preds = %200, %84, %71, %51, %39
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
