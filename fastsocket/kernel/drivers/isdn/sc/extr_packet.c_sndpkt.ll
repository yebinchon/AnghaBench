; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_packet.c_sndpkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_packet.c_sndpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"invalid param: %d is not a valid card id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: sndpkt: frst = 0x%lx nxt = %d  f = %d n = %d\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_6__** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: out of TX buffers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: data overflows buffer size (data > buffer)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: writing %d bytes to buffer offset 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: sndpkt size=%d, buf_offset=0x%lx buf_indx=%d\0A\00", align 1
@CEPID = common dso_local global i32 0, align 4
@ceReqTypeLnk = common dso_local global i32 0, align 4
@ceReqClass1 = common dso_local global i32 0, align 4
@ceReqLnkWrite = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: failed to send packet, status = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: packet sent successfully\0A\00", align 1
@ISDN_STAT_BSENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndpkt(i32 %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_card_from_id(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @IS_VALID_CARD(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %312

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %43, i32 %55, i32 %67, i32 %79)
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %24
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %312

105:                                              ; preds = %24
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BUFFER_SIZE, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %312

122:                                              ; preds = %105
  %123 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %123, i64 %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BUFFER_SIZE, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %138, i64 %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %137, %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  %156 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %156, i64 %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %164, i64 %166)
  %168 = load i32, i32* %12, align 4
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @memcpy_toshmem(i32 %168, i8* %171, i32 %174, i32 %176)
  %178 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %178, i64 %180
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %189, i64 %191
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %186, i64 %188, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @CEPID, align 4
  %204 = load i32, i32* @ceReqTypeLnk, align 4
  %205 = load i32, i32* @ceReqClass1, align 4
  %206 = load i32, i32* @ceReqLnkWrite, align 4
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  %209 = bitcast %struct.TYPE_5__* %10 to i32*
  %210 = call i32 @sendmessage(i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %208, i32 16, i32* %209)
  store i32 %210, i32* %11, align 4
  %211 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %13, align 8
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %122
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %224, i32 %225)
  store i32 -1, i32* %5, align 4
  br label %312

227:                                              ; preds = %122
  %228 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %228, i64 %230
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 8
  %241 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %241, i64 %243
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  %254 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %254, i64 %256
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %253, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %227
  br label %281

268:                                              ; preds = %227
  %269 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %269, i64 %271
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  br label %281

281:                                              ; preds = %268, %267
  %282 = phi i32 [ 0, %267 ], [ %280, %268 ]
  %283 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %283, i64 %285
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  store i32 %282, i32* %293, align 8
  %294 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %294, i64 %296
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %300)
  %302 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %303 = call i32 @dev_kfree_skb(%struct.sk_buff* %302)
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @ISDN_STAT_BSENT, align 4
  %306 = load i32, i32* %7, align 4
  %307 = bitcast i64* %13 to i8*
  %308 = call i32 @indicate_status(i32 %304, i32 %305, i32 %306, i8* %307)
  br label %309

309:                                              ; preds = %281
  %310 = load i64, i64* %13, align 8
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %5, align 4
  br label %312

312:                                              ; preds = %309, %217, %111, %94, %19
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @get_card_from_id(i32) #1

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @memcpy_toshmem(i32, i8*, i32, i32) #1

declare dso_local i32 @sendmessage(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @indicate_status(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
