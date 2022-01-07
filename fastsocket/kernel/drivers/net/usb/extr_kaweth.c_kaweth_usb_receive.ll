; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_usb_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.kaweth_device* }
%struct.kaweth_device = type { i32, %struct.TYPE_2__, i64, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Status was -EPIPE.\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Status was -ECONNRESET or -ESHUTDOWN.\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Status was -EPROTO, -ETIME, or -EILSEQ.\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Status was -EOVERFLOW.\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s RX status: %d count: %d packet_len: %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"Packet length too long for USB frame (pkt_len: %x, count: %x)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Packet len & 2047: %x\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Count 2: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @kaweth_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_usb_receive(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 3
  %12 = load %struct.kaweth_device*, %struct.kaweth_device** %11, align 8
  store %struct.kaweth_device* %12, %struct.kaweth_device** %3, align 8
  %13 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %14 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %26 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @le16_to_cpup(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EPIPE, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %1
  %38 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %39 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %44 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %46 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %45, i32 0, i32 6
  %47 = call i32 @wake_up(i32* %46)
  %48 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %220

49:                                               ; preds = %1
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @ECONNRESET, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ESHUTDOWN, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %66 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %68 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %67, i32 0, i32 6
  %69 = call i32 @wake_up(i32* %68)
  %70 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %220

71:                                               ; preds = %59
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @EPROTO, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ETIME, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @EILSEQ, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br label %86

86:                                               ; preds = %81, %76, %71
  %87 = phi i1 [ true, %76 ], [ true, %71 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %93 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = call i32 @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %220

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @EOVERFLOW, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %108 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %106, %98
  %114 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %115 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %114, i32 0, i32 4
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %118 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @IS_BLOCKED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %124 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %123, i32 0, i32 4
  %125 = call i32 @spin_unlock(i32* %124)
  br label %220

126:                                              ; preds = %113
  %127 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %128 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %127, i32 0, i32 4
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @EREMOTEIO, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %149 = load i32, i32* @GFP_ATOMIC, align 4
  %150 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %148, i32 %149)
  br label %220

151:                                              ; preds = %137, %132, %126
  %152 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %153 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %152, i32 0, i32 3
  %154 = load %struct.net_device*, %struct.net_device** %153, align 8
  %155 = icmp ne %struct.net_device* %154, null
  br i1 %155, label %156, label %216

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = icmp sgt i32 %157, 2
  br i1 %158, label %159, label %216

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %161, 2
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, 2047
  %170 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %174 = load i32, i32* @GFP_ATOMIC, align 4
  %175 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %173, i32 %174)
  br label %220

176:                                              ; preds = %159
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 2
  %179 = call %struct.sk_buff* @dev_alloc_skb(i32 %178)
  store %struct.sk_buff* %179, %struct.sk_buff** %9, align 8
  %180 = icmp ne %struct.sk_buff* %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %183 = load i32, i32* @GFP_ATOMIC, align 4
  %184 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %182, i32 %183)
  br label %220

185:                                              ; preds = %176
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = call i32 @skb_reserve(%struct.sk_buff* %186, i32 2)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %190 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 2
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %188, i64 %192, i32 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @skb_put(%struct.sk_buff* %195, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = load %struct.net_device*, %struct.net_device** %4, align 8
  %200 = call i32 @eth_type_trans(%struct.sk_buff* %198, %struct.net_device* %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %204 = call i32 @netif_rx(%struct.sk_buff* %203)
  %205 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %206 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %212 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %210
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %185, %156, %151
  %217 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %218 = load i32, i32* @GFP_ATOMIC, align 4
  %219 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %181, %164, %140, %122, %91, %64, %37
  ret void
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_BLOCKED(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
