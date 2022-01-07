; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_solos_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_solos_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32, i64, i32, %struct.TYPE_6__*, %struct.sk_buff**, i64*, i64, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.pkt_hdr = type { i32, i32, i32, i32 }
%struct.atm_vcc = type { %struct.TYPE_5__*, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RX_DMA_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid buffer size\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate sk_buff for RX\0A\00", align 1
@atmdebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Received: device %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"size: %d VPI: %d VCI: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Received packet for unknown VCI.VPI %d.%d on port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Bad status packet of %d bytes on port %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Dropping console response on port %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to allocate RX skb\00", align 1
@FLAGS_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solos_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.solos_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkt_hdr, align 4
  %8 = alloca %struct.pkt_hdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.solos_card*
  store %struct.solos_card* %15, %struct.solos_card** %3, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %17 = call i32 @fpga_tx(%struct.solos_card* %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %363, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %21 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %366

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 16, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %288

30:                                               ; preds = %24
  %31 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %32 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %30
  %36 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %37 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %36, i32 0, i32 5
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %44 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %43, i32 0, i32 5
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  store %struct.sk_buff* null, %struct.sk_buff** %48, align 8
  %49 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %50 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %49, i32 0, i32 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RX_DMA_SIZE, align 4
  %57 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %58 = call i32 @pci_unmap_single(%struct.TYPE_6__* %51, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %63, %struct.pkt_hdr** %8, align 8
  %64 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = call %struct.pkt_hdr* @skb_put(%struct.sk_buff* %68, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @skb_pull(%struct.sk_buff* %74, i32 16)
  br label %131

76:                                               ; preds = %30
  store %struct.pkt_hdr* %7, %struct.pkt_hdr** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 16, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %82 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @RX_BUF(%struct.solos_card* %82, i32 %83)
  %85 = call i32 @memcpy_fromio(%struct.pkt_hdr* %81, i64 %84, i32 16)
  %86 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %87 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %93 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, 16
  %97 = icmp ugt i64 %91, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %76
  %99 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %100 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_warn(i32* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %363

104:                                              ; preds = %76
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @GFP_ATOMIC, align 4
  %108 = call %struct.sk_buff* @alloc_skb(i32 %106, i32 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %9, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %104
  %112 = call i64 (...) @net_ratelimit()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %116 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_warn(i32* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %114, %111
  br label %363

121:                                              ; preds = %104
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.pkt_hdr* @skb_put(%struct.sk_buff* %122, i32 %123)
  %125 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @RX_BUF(%struct.solos_card* %125, i32 %126)
  %128 = add i64 %127, 16
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @memcpy_fromio(%struct.pkt_hdr* %124, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %35
  %132 = load i64, i64* @atmdebug, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %136 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %142 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %141, i32 0, i32 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %147 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le16_to_cpu(i32 %148)
  %150 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %151 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  %154 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %149, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %156 = call i32 @print_buffer(%struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %134, %131
  %158 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %159 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  switch i32 %161, label %242 [
    i32 129, label %162
    i32 128, label %217
    i32 130, label %241
  ]

162:                                              ; preds = %157
  %163 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %164 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %163, i32 0, i32 6
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %171 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %175 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = call %struct.atm_vcc* @find_vcc(i64 %169, i32 %173, i32 %177)
  store %struct.atm_vcc* %178, %struct.atm_vcc** %10, align 8
  %179 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %180 = icmp ne %struct.atm_vcc* %179, null
  br i1 %180, label %200, label %181

181:                                              ; preds = %162
  %182 = call i64 (...) @net_ratelimit()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %186 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %190 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %194 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le16_to_cpu(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (i32*, i8*, ...) @dev_warn(i32* %188, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %184, %181
  br label %363

200:                                              ; preds = %162
  %201 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @atm_charge(%struct.atm_vcc* %201, i32 %204)
  %206 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %207 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %206, i32 0, i32 1
  %208 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %207, align 8
  %209 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %211 = call i32 %208(%struct.atm_vcc* %209, %struct.sk_buff* %210)
  %212 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %213 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = call i32 @atomic_inc(i32* %215)
  br label %287

217:                                              ; preds = %157
  %218 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %221 = call i32 @process_status(%struct.solos_card* %218, i32 %219, %struct.sk_buff* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %217
  %224 = call i64 (...) @net_ratelimit()
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %228 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %227, i32 0, i32 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = call i32 (i32*, i8*, ...) @dev_warn(i32* %230, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %233, i32 %234)
  %236 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %237 = call i32 @print_buffer(%struct.sk_buff* %236)
  br label %238

238:                                              ; preds = %226, %223, %217
  %239 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %240 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %239)
  br label %287

241:                                              ; preds = %157
  br label %242

242:                                              ; preds = %157, %241
  %243 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %246 = call i32 @process_command(%struct.solos_card* %243, i32 %244, %struct.sk_buff* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %287

249:                                              ; preds = %242
  %250 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %251 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %250, i32 0, i32 8
  %252 = call i32 @spin_lock(i32* %251)
  %253 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %254 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = call i32 @skb_queue_len(i32* %258)
  %260 = icmp sgt i32 %259, 10
  br i1 %260, label %261, label %274

261:                                              ; preds = %249
  %262 = call i64 (...) @net_ratelimit()
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %266 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %265, i32 0, i32 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %6, align 4
  %270 = call i32 (i32*, i8*, ...) @dev_warn(i32* %268, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %264, %261
  %272 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %273 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %272)
  br label %283

274:                                              ; preds = %249
  %275 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %276 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %275, i32 0, i32 9
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %282 = call i32 @skb_queue_tail(i32* %280, %struct.sk_buff* %281)
  br label %283

283:                                              ; preds = %274, %271
  %284 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %285 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %284, i32 0, i32 8
  %286 = call i32 @spin_unlock(i32* %285)
  br label %287

287:                                              ; preds = %283, %248, %238, %200
  br label %288

288:                                              ; preds = %287, %24
  %289 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %290 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %289, i32 0, i32 7
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %362

293:                                              ; preds = %288
  %294 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %295 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %294, i32 0, i32 6
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %362

302:                                              ; preds = %293
  %303 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %304 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %303, i32 0, i32 5
  %305 = load %struct.sk_buff**, %struct.sk_buff*** %304, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %305, i64 %307
  %309 = load %struct.sk_buff*, %struct.sk_buff** %308, align 8
  %310 = icmp ne %struct.sk_buff* %309, null
  br i1 %310, label %362, label %311

311:                                              ; preds = %302
  %312 = load i32, i32* @RX_DMA_SIZE, align 4
  %313 = load i32, i32* @GFP_ATOMIC, align 4
  %314 = call %struct.sk_buff* @alloc_skb(i32 %312, i32 %313)
  store %struct.sk_buff* %314, %struct.sk_buff** %12, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %316 = icmp ne %struct.sk_buff* %315, null
  br i1 %316, label %317, label %348

317:                                              ; preds = %311
  %318 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %319 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %318, i32 0, i32 4
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @RX_DMA_SIZE, align 4
  %325 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %326 = call i32 @pci_map_single(%struct.TYPE_6__* %320, i64 %323, i32 %324, i32 %325)
  %327 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %328 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %327)
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  store i32 %326, i32* %329, align 4
  %330 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %331 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %330)
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %335 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = call i64 @RX_DMA_ADDR(i32 %337)
  %339 = add nsw i64 %336, %338
  %340 = call i32 @iowrite32(i32 %333, i64 %339)
  %341 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %342 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %343 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %342, i32 0, i32 5
  %344 = load %struct.sk_buff**, %struct.sk_buff*** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %344, i64 %346
  store %struct.sk_buff* %341, %struct.sk_buff** %347, align 8
  br label %361

348:                                              ; preds = %311
  %349 = call i64 (...) @net_ratelimit()
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %353 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %352, i32 0, i32 4
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = call i32 (i32*, i8*, ...) @dev_warn(i32* %355, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %357

357:                                              ; preds = %351, %348
  %358 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %359 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %358, i32 0, i32 3
  %360 = call i32 @tasklet_schedule(i32* %359)
  br label %361

361:                                              ; preds = %357, %317
  br label %362

362:                                              ; preds = %361, %302, %293, %288
  br label %363

363:                                              ; preds = %362, %199, %120, %98
  %364 = load i32, i32* %6, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %6, align 4
  br label %18

366:                                              ; preds = %18
  %367 = load i32, i32* %5, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  %370 = load i32, i32* %5, align 4
  %371 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %372 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @FLAGS_ADDR, align 8
  %375 = add nsw i64 %373, %374
  %376 = call i32 @iowrite32(i32 %370, i64 %375)
  br label %377

377:                                              ; preds = %369, %366
  ret void
}

declare dso_local i32 @fpga_tx(%struct.solos_card*) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.pkt_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.pkt_hdr*, i64, i32) #1

declare dso_local i64 @RX_BUF(%struct.solos_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @print_buffer(%struct.sk_buff*) #1

declare dso_local %struct.atm_vcc* @find_vcc(i64, i32, i32) #1

declare dso_local i32 @atm_charge(%struct.atm_vcc*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @process_status(%struct.solos_card*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @process_command(%struct.solos_card*, i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @RX_DMA_ADDR(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
