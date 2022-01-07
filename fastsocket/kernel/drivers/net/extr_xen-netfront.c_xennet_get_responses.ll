; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_responses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.netfront_rx_info = type { %struct.xen_netif_extra_info*, %struct.xen_netif_rx_response }
%struct.xen_netif_extra_info = type { i32 }
%struct.xen_netif_rx_response = type { i64, i32, i64, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@NETRXF_extra_info = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"rx->offset: %x, size: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad rx response id %d.\0A\00", align 1
@NETRXF_more_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Need more frags\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Too many frags\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_info*, %struct.netfront_rx_info*, i64, %struct.sk_buff_head*)* @xennet_get_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_get_responses(%struct.netfront_info* %0, %struct.netfront_rx_info* %1, i64 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.netfront_info*, align 8
  %6 = alloca %struct.netfront_rx_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.xen_netif_rx_response*, align 8
  %10 = alloca %struct.xen_netif_extra_info*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %5, align 8
  store %struct.netfront_rx_info* %1, %struct.netfront_rx_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %19 = load %struct.netfront_rx_info*, %struct.netfront_rx_info** %6, align 8
  %20 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %19, i32 0, i32 1
  store %struct.xen_netif_rx_response* %20, %struct.xen_netif_rx_response** %9, align 8
  %21 = load %struct.netfront_rx_info*, %struct.netfront_rx_info** %6, align 8
  %22 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %21, i32 0, i32 0
  %23 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %22, align 8
  store %struct.xen_netif_extra_info* %23, %struct.xen_netif_extra_info** %10, align 8
  %24 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %25 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %11, align 8
  %28 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %29 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info* %32, i64 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %13, align 8
  %35 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @xennet_get_rx_ref(%struct.netfront_info* %35, i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %39 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %40 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %43 = icmp sle i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %38, %44
  store i32 %45, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %46 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %47 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NETRXF_extra_info, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %4
  %53 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %54 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @xennet_get_extras(%struct.netfront_info* %53, %struct.xen_netif_extra_info* %54, i64 %55)
  store i32 %56, i32* %17, align 4
  %57 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %58 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %52, %4
  br label %62

62:                                               ; preds = %156, %61
  %63 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %64 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %69 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %72 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = icmp sgt i64 %74, %75
  br label %77

77:                                               ; preds = %67, %62
  %78 = phi i1 [ true, %62 ], [ %76, %67 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = call i64 (...) @net_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %11, align 8
  %87 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %88 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %91 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %92)
  br label %94

94:                                               ; preds = %85, %82
  %95 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @xennet_move_rx_slot(%struct.netfront_info* %95, %struct.sk_buff* %96, i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %17, align 4
  br label %132

101:                                              ; preds = %77
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @GRANT_INVALID_REF, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = call i64 (...) @net_ratelimit()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %11, align 8
  %110 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %111 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %17, align 4
  br label %132

117:                                              ; preds = %101
  %118 = load i64, i64* %14, align 8
  %119 = call i64 @gnttab_end_foreign_access_ref(i64 %118, i32 0)
  store i64 %119, i64* %18, align 8
  %120 = load i64, i64* %18, align 8
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %126 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %125, i32 0, i32 1
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @gnttab_release_grant_reference(i32* %126, i64 %127)
  %129 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %129, %struct.sk_buff* %130)
  br label %132

132:                                              ; preds = %117, %114, %94
  %133 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %134 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @NETRXF_more_data, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %178

140:                                              ; preds = %132
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load i64, i64* %7, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = call i64 (...) @net_ratelimit()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.device*, %struct.device** %11, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* @ENOENT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %17, align 4
  br label %178

156:                                              ; preds = %140
  %157 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %158 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %157, i32 0, i32 0
  %159 = load i64, i64* %12, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = call %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_4__* %158, i64 %162)
  store %struct.xen_netif_rx_response* %163, %struct.xen_netif_rx_response** %9, align 8
  %164 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info* %164, i64 %168)
  store %struct.sk_buff* %169, %struct.sk_buff** %13, align 8
  %170 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = call i64 @xennet_get_rx_ref(%struct.netfront_info* %170, i64 %174)
  store i64 %175, i64* %14, align 8
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %62

178:                                              ; preds = %153, %139
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp sgt i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = call i64 (...) @net_ratelimit()
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.device*, %struct.device** %11, align 8
  %190 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* @E2BIG, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %191, %178
  %195 = load i32, i32* %17, align 4
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %204 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  br label %206

206:                                              ; preds = %198, %194
  %207 = load i32, i32* %17, align 4
  ret i32 %207
}

declare dso_local %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info*, i64) #1

declare dso_local i64 @xennet_get_rx_ref(%struct.netfront_info*, i64) #1

declare dso_local i32 @xennet_get_extras(%struct.netfront_info*, %struct.xen_netif_extra_info*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @xennet_move_rx_slot(%struct.netfront_info*, %struct.sk_buff*, i64) #1

declare dso_local i64 @gnttab_end_foreign_access_ref(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gnttab_release_grant_reference(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
