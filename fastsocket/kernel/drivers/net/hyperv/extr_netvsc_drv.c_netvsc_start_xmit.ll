; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.net_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.net_device_context = type { i32 }
%struct.hv_netvsc_packet = type { i32, %struct.TYPE_11__, %struct.TYPE_9__*, i64, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.hv_netvsc_packet*, i32 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@NDIS_VLAN_PPI_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to allocate hv_netvsc_packet\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@netvsc_xmit_completion = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netvsc_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.hv_netvsc_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %13)
  store %struct.net_device_context* %14, %struct.net_device_context** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @skb_headlen(%struct.sk_buff* %18)
  %20 = add i64 %17, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = sub i64 %23, %28
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %35, %36
  %38 = add i32 %37, 2
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = add i64 64, %41
  %43 = add i64 %42, 4
  %44 = load i64, i64* @NDIS_VLAN_PPI_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.hv_netvsc_packet* @kzalloc(i64 %45, i32 %46)
  store %struct.hv_netvsc_packet* %47, %struct.hv_netvsc_packet** %7, align 8
  %48 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %49 = icmp ne %struct.hv_netvsc_packet* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %2
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @dev_kfree_skb(%struct.sk_buff* %53)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %326

61:                                               ; preds = %2
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %66 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %68 = ptrtoint %struct.hv_netvsc_packet* %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr i8, i8* %69, i64 64
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = getelementptr i8, i8* %70, i64 %73
  %75 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %76 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %77, 1
  %79 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %80 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %85 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @virt_to_phys(i64 %88)
  %90 = load i64, i64* @PAGE_SHIFT, align 8
  %91 = lshr i64 %89, %90
  %92 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %93 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 %91, i64* %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = and i64 %99, %102
  %104 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %105 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i64 %103, i64* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %119

111:                                              ; preds = %61
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i64 @skb_headlen(%struct.sk_buff* %112)
  %114 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %115 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  store i64 %113, i64* %118, align 8
  br label %134

119:                                              ; preds = %61
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %123 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %121, %127
  %129 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %130 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %129, i32 0, i32 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i64 %128, i64* %133, align 8
  br label %134

134:                                              ; preds = %119, %111
  store i32 2, i32* %9, align 4
  br label %135

135:                                              ; preds = %175, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ule i32 %136, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %135
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = load i32, i32* %9, align 4
  %145 = sub i32 %144, 1
  %146 = mul i32 %143, %145
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %142, %147
  %149 = call i64 @virt_to_phys(i64 %148)
  %150 = load i64, i64* @PAGE_SHIFT, align 8
  %151 = lshr i64 %149, %150
  %152 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %153 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i64 %151, i64* %158, align 8
  %159 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %160 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %169 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %168, i32 0, i32 2
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  store i64 %167, i64* %174, align 8
  br label %175

175:                                              ; preds = %139
  %176 = load i32, i32* %9, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %135

178:                                              ; preds = %135
  %179 = load i32, i32* %11, align 4
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = call i64 @skb_headlen(%struct.sk_buff* %185)
  %187 = add i64 %184, %186
  %188 = sub i64 %187, 1
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = and i64 %188, %191
  %193 = add i64 %192, 1
  %194 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %195 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  store i64 %193, i64* %200, align 8
  br label %201

201:                                              ; preds = %181, %178
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %256, %201
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %205 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %203, %207
  br i1 %208, label %209, label %259

209:                                              ; preds = %202
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %210)
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i64 %215
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %12, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %218 = call i32 @skb_frag_page(%struct.TYPE_13__* %217)
  %219 = call i64 @page_to_pfn(i32 %218)
  %220 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %221 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %220, i32 0, i32 2
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %11, align 4
  %225 = add i32 %223, %224
  %226 = add i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  store i64 %219, i64* %229, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %235 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %234, i32 0, i32 2
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %11, align 4
  %239 = add i32 %237, %238
  %240 = add i32 %239, 1
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  store i64 %233, i64* %243, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %245 = call i64 @skb_frag_size(%struct.TYPE_13__* %244)
  %246 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %247 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %246, i32 0, i32 2
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %11, align 4
  %251 = add i32 %249, %250
  %252 = add i32 %251, 1
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  store i64 %245, i64* %255, align 8
  br label %256

256:                                              ; preds = %209
  %257 = load i32, i32* %9, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %9, align 4
  br label %202

259:                                              ; preds = %202
  %260 = load i32, i32* @netvsc_xmit_completion, align 4
  %261 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %262 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  store i32 %260, i32* %264, align 8
  %265 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %266 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %267 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  store %struct.hv_netvsc_packet* %265, %struct.hv_netvsc_packet** %269, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %271 = ptrtoint %struct.sk_buff* %270 to i64
  %272 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %273 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  store i64 %271, i64* %275, align 8
  %276 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %277 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %280 = call i32 @rndis_filter_send(i32 %278, %struct.hv_netvsc_packet* %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %259
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.net_device*, %struct.net_device** %5, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %286
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 4
  %294 = load %struct.net_device*, %struct.net_device** %5, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  br label %315

299:                                              ; preds = %259
  %300 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %301 = call i32 @kfree(%struct.hv_netvsc_packet* %300)
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @EAGAIN, align 4
  %304 = sub nsw i32 0, %303
  %305 = icmp ne i32 %302, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %299
  %307 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %308 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %307)
  %309 = load %struct.net_device*, %struct.net_device** %5, align 8
  %310 = getelementptr inbounds %struct.net_device, %struct.net_device* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %306, %299
  br label %315

315:                                              ; preds = %314, %283
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @EAGAIN, align 4
  %318 = sub nsw i32 0, %317
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i32, i32* @NETDEV_TX_BUSY, align 4
  br label %324

322:                                              ; preds = %315
  %323 = load i32, i32* @NETDEV_TX_OK, align 4
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %321, %320 ], [ %323, %322 ]
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %324, %50
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.hv_netvsc_packet* @kzalloc(i64, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @skb_frag_page(%struct.TYPE_13__*) #1

declare dso_local i64 @skb_frag_size(%struct.TYPE_13__*) #1

declare dso_local i32 @rndis_filter_send(i32, %struct.hv_netvsc_packet*) #1

declare dso_local i32 @kfree(%struct.hv_netvsc_packet*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
