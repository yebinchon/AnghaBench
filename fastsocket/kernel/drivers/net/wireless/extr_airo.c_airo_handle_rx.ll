; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_18__*, i32*, i32, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.sk_buff = type { i32, i32, i32*, i32 }
%struct.rx_hdr = type { i64*, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@FLAG_MPI = common dso_local global i32 0, align 4
@FLAG_802_11 = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_RX = common dso_local global i32 0, align 4
@RXFID = common dso_local global i32 0, align 4
@BAP0 = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad size %d\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"gaplen too big. Problems will follow...\00", align 1
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @airo_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_rx(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rx_hdr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @FLAG_MPI, align 4
  %16 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load i32, i32* @FLAG_802_11, align 4
  %22 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %28 = call i32 @mpi_receive_802_11(%struct.airo_info* %27)
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %31 = call i32 @mpi_receive_802_3(%struct.airo_info* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %34 = load i32, i32* @EVACK, align 4
  %35 = load i32, i32* @EV_RX, align 4
  %36 = call i32 @OUT4500(%struct.airo_info* %33, i32 %34, i32 %35)
  br label %304

37:                                               ; preds = %1
  %38 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %39 = load i32, i32* @RXFID, align 4
  %40 = call i32 @IN4500(%struct.airo_info* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @FLAG_802_11, align 4
  %42 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 2
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %37
  %47 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @BAP0, align 4
  %50 = call i32 @bap_setup(%struct.airo_info* %47, i32 %48, i32 4, i32 %49)
  %51 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %52 = bitcast %struct.rx_hdr* %12 to i64*
  %53 = load i32, i32* @BAP0, align 4
  %54 = call i32 @bap_read(%struct.airo_info* %51, i64* %52, i32 24, i32 %53)
  %55 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @le16_to_cpu(i64 %56)
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %60, %46
  %63 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %64 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %67, %62
  br label %79

70:                                               ; preds = %37
  %71 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @BAP0, align 4
  %74 = call i32 @bap_setup(%struct.airo_info* %71, i32 %72, i32 54, i32 %73)
  %75 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %76 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  %77 = load i32, i32* @BAP0, align 4
  %78 = call i32 @bap_read(%struct.airo_info* %75, i64* %76, i32 2, i32 %77)
  br label %79

79:                                               ; preds = %70, %69
  %80 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le16_to_cpu(i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @AIRO_DEF_MTU, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %88 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i32, i8*, ...) @airo_print_err(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %262

94:                                               ; preds = %79
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %262

98:                                               ; preds = %94
  %99 = load i32, i32* @FLAG_802_11, align 4
  %100 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %101 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %100, i32 0, i32 2
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %106 = load i32, i32* @BAP0, align 4
  %107 = call i32 @bap_read(%struct.airo_info* %105, i64* %4, i32 8, i32 %106)
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @header_len(i64 %108)
  store i32 %109, i32* %9, align 4
  br label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %114, %115
  %117 = add nsw i32 %116, 2
  %118 = add nsw i32 %117, 2
  %119 = call %struct.sk_buff* @dev_alloc_skb(i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %3, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %262

130:                                              ; preds = %113
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 @skb_reserve(%struct.sk_buff* %131, i32 2)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i64 @skb_put(%struct.sk_buff* %133, i32 %136)
  %138 = inttoptr i64 %137 to i64*
  store i64* %138, i64** %6, align 8
  %139 = load i32, i32* @FLAG_802_11, align 4
  %140 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %141 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %140, i32 0, i32 2
  %142 = call i64 @test_bit(i32 %139, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %130
  %145 = load i64, i64* %4, align 8
  %146 = load i64*, i64** %6, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %149 = load i64*, i64** %6, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 2
  %153 = load i32, i32* @BAP0, align 4
  %154 = call i32 @bap_read(%struct.airo_info* %148, i64* %150, i32 %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 24
  br i1 %156, label %157, label %162

157:                                              ; preds = %144
  %158 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %159 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %160 = load i32, i32* @BAP0, align 4
  %161 = call i32 @bap_read(%struct.airo_info* %158, i64* %159, i32 6, i32 %160)
  br label %162

162:                                              ; preds = %157, %144
  %163 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %164 = load i32, i32* @BAP0, align 4
  %165 = call i32 @bap_read(%struct.airo_info* %163, i64* %5, i32 8, i32 %164)
  %166 = load i64, i64* %5, align 8
  %167 = call i32 @le16_to_cpu(i64 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %162
  %171 = load i32, i32* %10, align 4
  %172 = icmp sle i32 %171, 8
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %175 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @BAP0, align 4
  %178 = call i32 @bap_read(%struct.airo_info* %174, i64* %175, i32 %176, i32 %177)
  br label %186

179:                                              ; preds = %170
  %180 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %181 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %180, i32 0, i32 0
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @airo_print_err(i32 %184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %179, %173
  br label %187

187:                                              ; preds = %186, %162
  %188 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %189 = load i64*, i64** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sdiv i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %189, i64 %192
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @BAP0, align 4
  %196 = call i32 @bap_read(%struct.airo_info* %188, i64* %193, i32 %194, i32 %195)
  br label %261

197:                                              ; preds = %130
  %198 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %199 = load i64*, i64** %6, align 8
  %200 = load i32, i32* @ETH_ALEN, align 4
  %201 = mul nsw i32 %200, 2
  %202 = load i32, i32* @BAP0, align 4
  %203 = call i32 @bap_read(%struct.airo_info* %198, i64* %199, i32 %201, i32 %202)
  %204 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %205 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %241

209:                                              ; preds = %197
  %210 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %211 = bitcast %struct.TYPE_17__* %14 to i64*
  %212 = load i32, i32* @BAP0, align 4
  %213 = call i32 @bap_read(%struct.airo_info* %210, i64* %211, i32 4, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ntohs(i32 %215)
  %217 = icmp sgt i32 %216, 1500
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* @BAP0, align 4
  %222 = call i32 @bap_setup(%struct.airo_info* %219, i32 %220, i32 68, i32 %221)
  br label %240

223:                                              ; preds = %209
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp ule i64 %225, 4
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %228)
  br label %262

230:                                              ; preds = %223
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %8, align 4
  %235 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %236, %237
  %239 = call i32 @skb_trim(%struct.sk_buff* %235, i32 %238)
  br label %240

240:                                              ; preds = %230, %218
  br label %241

241:                                              ; preds = %240, %197
  %242 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %243 = load i64*, i64** %6, align 8
  %244 = load i32, i32* @ETH_ALEN, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @BAP0, align 4
  %249 = call i32 @bap_read(%struct.airo_info* %242, i64* %246, i32 %247, i32 %248)
  %250 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %251 = load i64*, i64** %6, align 8
  %252 = bitcast i64* %251 to i32*
  %253 = load i32, i32* %8, align 4
  %254 = call i64 @decapsulate(%struct.airo_info* %250, %struct.TYPE_17__* %14, i32* %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %241
  %257 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %258 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %257)
  br label %260

259:                                              ; preds = %241
  store i32 1, i32* %13, align 4
  br label %260

260:                                              ; preds = %259, %256
  br label %261

261:                                              ; preds = %260, %187
  br label %262

262:                                              ; preds = %261, %227, %122, %97, %86
  %263 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %264 = load i32, i32* @EVACK, align 4
  %265 = load i32, i32* @EV_RX, align 4
  %266 = call i32 @OUT4500(%struct.airo_info* %263, i32 %264, i32 %265)
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %304

269:                                              ; preds = %262
  %270 = load i32, i32* @FLAG_802_11, align 4
  %271 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %272 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %271, i32 0, i32 2
  %273 = call i64 @test_bit(i32 %270, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %269
  %276 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %277 = call i32 @skb_reset_mac_header(%struct.sk_buff* %276)
  %278 = load i32, i32* @PACKET_OTHERHOST, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 8
  %281 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %282 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 2
  store i32* %283, i32** %285, align 8
  %286 = load i32, i32* @ETH_P_802_2, align 4
  %287 = call i32 @htons(i32 %286)
  %288 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  br label %298

290:                                              ; preds = %269
  %291 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %292 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %293 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %292, i32 0, i32 0
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %293, align 8
  %295 = call i32 @eth_type_trans(%struct.sk_buff* %291, %struct.TYPE_18__* %294)
  %296 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %297 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %290, %275
  %299 = load i32, i32* @CHECKSUM_NONE, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %301 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %303 = call i32 @netif_rx(%struct.sk_buff* %302)
  br label %304

304:                                              ; preds = %32, %298, %262
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mpi_receive_802_11(%struct.airo_info*) #1

declare dso_local i32 @mpi_receive_802_3(%struct.airo_info*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @bap_setup(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @bap_read(%struct.airo_info*, i64*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local i32 @header_len(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @decapsulate(%struct.airo_info*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_18__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
