; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_unpack_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_unpack_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i8*, i32, %struct.net_device*, i64 }
%struct.ll_header = type { i64, i32 }

@LL_HEADER_LENGTH = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@CTCM_PROTO_S390 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@LOG_FLAG_ILLEGALPKT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s(%s): Illegal packet type 0x%04x - dropping\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@LOG_FLAG_ILLEGALSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s(%s): Illegal packet size %d(%d,%d)- dropping\00", align 1
@LOG_FLAG_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s(%s): Packet size %d (overrun) - dropping\00", align 1
@LOG_FLAG_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s(%s): MEMORY allocation error\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Overrun in ctcm_unpack_skb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctcm_unpack_skb(%struct.channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ctcm_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ll_header*, align 8
  store %struct.channel* %0, %struct.channel** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  store %struct.ctcm_priv* %16, %struct.ctcm_priv** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %24 = add nsw i32 2, %23
  %25 = call i32 @skb_put(%struct.sk_buff* %22, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i32 2)
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 3
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %313, %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %314

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ll_header*
  store %struct.ll_header* %41, %struct.ll_header** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %44 = call i32 @skb_pull(%struct.sk_buff* %42, i32 %43)
  %45 = load %struct.channel*, %struct.channel** %3, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CTCM_PROTO_S390, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %37
  %51 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %52 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ETH_P_IP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load %struct.channel*, %struct.channel** %3, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LOG_FLAG_ILLEGALPKT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @LOG_FLAG_ILLEGALPKT, align 4
  %65 = load %struct.channel*, %struct.channel** %3, align 8
  %66 = getelementptr inbounds %struct.channel, %struct.channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @CTC_DBF_ERROR, align 4
  %71 = load i32, i32* @CTCM_FUNTAIL, align 4
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %76 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %69, i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %63, %56
  %80 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %86 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %314

90:                                               ; preds = %50, %37
  %91 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %92 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ntohs(i64 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %98 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %144

106:                                              ; preds = %102, %90
  %107 = load %struct.channel*, %struct.channel** %3, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @LOG_FLAG_ILLEGALSIZE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @CTC_DBF_ERROR, align 4
  %116 = load i32, i32* @CTCM_FUNTAIL, align 4
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %121 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %114, i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119, i32 %122, i32 %125, i32 %126)
  %128 = load i32, i32* @LOG_FLAG_ILLEGALSIZE, align 4
  %129 = load %struct.channel*, %struct.channel** %3, align 8
  %130 = getelementptr inbounds %struct.channel, %struct.channel* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %113, %106
  %134 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %135 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %140 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %314

144:                                              ; preds = %102
  %145 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %146 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %147 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %154 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call i32 @skb_tailroom(%struct.sk_buff* %156)
  %158 = icmp sgt i32 %155, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %144
  %160 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %161 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %199

165:                                              ; preds = %159, %144
  %166 = load %struct.channel*, %struct.channel** %3, align 8
  %167 = getelementptr inbounds %struct.channel, %struct.channel* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @LOG_FLAG_OVERRUN, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* @ERROR, align 4
  %174 = load i32, i32* @CTC_DBF_ERROR, align 4
  %175 = load i32, i32* @CTCM_FUNTAIL, align 4
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %180 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %173, i32 %174, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %178, i32 %181)
  %183 = load i32, i32* @LOG_FLAG_OVERRUN, align 4
  %184 = load %struct.channel*, %struct.channel** %3, align 8
  %185 = getelementptr inbounds %struct.channel, %struct.channel* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %172, %165
  %189 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %190 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %195 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  br label %314

199:                                              ; preds = %159
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %202 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @skb_put(%struct.sk_buff* %200, i32 %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %206 = call i32 @skb_reset_mac_header(%struct.sk_buff* %205)
  %207 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %208 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call %struct.sk_buff* @dev_alloc_skb(i32 %214)
  store %struct.sk_buff* %215, %struct.sk_buff** %8, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %217 = icmp ne %struct.sk_buff* %216, null
  br i1 %217, label %244, label %218

218:                                              ; preds = %199
  %219 = load %struct.channel*, %struct.channel** %3, align 8
  %220 = getelementptr inbounds %struct.channel, %struct.channel* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @LOG_FLAG_NOMEM, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %238, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* @ERROR, align 4
  %227 = load i32, i32* @CTC_DBF_ERROR, align 4
  %228 = load i32, i32* @CTCM_FUNTAIL, align 4
  %229 = load %struct.net_device*, %struct.net_device** %5, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %226, i32 %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %231)
  %233 = load i32, i32* @LOG_FLAG_NOMEM, align 4
  %234 = load %struct.channel*, %struct.channel** %3, align 8
  %235 = getelementptr inbounds %struct.channel, %struct.channel* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %225, %218
  %239 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %240 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %314

244:                                              ; preds = %199
  %245 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %246 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @skb_put(%struct.sk_buff* %246, i32 %249)
  %251 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %245, i32 %250, i32 %253)
  %255 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %256 = call i32 @skb_reset_mac_header(%struct.sk_buff* %255)
  %257 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %258 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %257, i32 0, i32 3
  %259 = load %struct.net_device*, %struct.net_device** %258, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %260, i32 0, i32 3
  store %struct.net_device* %259, %struct.net_device** %261, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %266 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 1
  store i8* %267, i8** %269, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %9, align 4
  %273 = load %struct.channel*, %struct.channel** %3, align 8
  %274 = getelementptr inbounds %struct.channel, %struct.channel* %273, i32 0, i32 1
  store i32 0, i32* %274, align 8
  %275 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %276 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %282 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, %280
  store i32 %285, i32* %283, align 4
  %286 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %287 = call i32 @netif_rx_ni(%struct.sk_buff* %286)
  %288 = load i32, i32* %7, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %313

290:                                              ; preds = %244
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = load %struct.ll_header*, %struct.ll_header** %10, align 8
  %293 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @skb_pull(%struct.sk_buff* %291, i32 %294)
  %296 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %297 = call i32 @skb_tailroom(%struct.sk_buff* %296)
  %298 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %290
  %301 = load i32, i32* @TRACE, align 4
  %302 = load %struct.net_device*, %struct.net_device** %5, align 8
  %303 = call i32 @CTCM_DBF_DEV_NAME(i32 %301, %struct.net_device* %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %304 = load i32, i32* @LOG_FLAG_OVERRUN, align 4
  %305 = load %struct.channel*, %struct.channel** %3, align 8
  %306 = getelementptr inbounds %struct.channel, %struct.channel* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %314

309:                                              ; preds = %290
  %310 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %311 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %312 = call i32 @skb_put(%struct.sk_buff* %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %244
  br label %34

314:                                              ; preds = %79, %133, %188, %238, %300, %34
  ret void
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @CTCM_DBF_DEV_NAME(i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
