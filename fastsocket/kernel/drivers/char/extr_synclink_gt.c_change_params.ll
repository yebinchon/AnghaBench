; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_change_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_change_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s change_params\0A\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ASYNC_PARITY_ODD = common dso_local global i32 0, align 4
@ASYNC_PARITY_EVEN = common dso_local global i32 0, align 4
@ASYNC_PARITY_NONE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@IRQ_RXOVER = common dso_local global i32 0, align 4
@MASK_PARITY = common dso_local global i32 0, align 4
@MASK_FRAMING = common dso_local global i32 0, align 4
@MASK_BREAK = common dso_local global i32 0, align 4
@MASK_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @change_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_params(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %1
  br label %276

19:                                               ; preds = %10
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DBGINFO(i8* %24)
  %26 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CBAUD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %19
  %39 = load i32, i32* @SerialSignal_RTS, align 4
  %40 = load i32, i32* @SerialSignal_DTR, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %55

46:                                               ; preds = %19
  %47 = load i32, i32* @SerialSignal_RTS, align 4
  %48 = load i32, i32* @SerialSignal_DTR, align 4
  %49 = add nsw i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %46, %38
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @CSIZE, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %75 [
    i32 131, label %59
    i32 130, label %63
    i32 129, label %67
    i32 128, label %71
  ]

59:                                               ; preds = %55
  %60 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 5, i32* %62, align 8
  br label %79

63:                                               ; preds = %55
  %64 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 6, i32* %66, align 8
  br label %79

67:                                               ; preds = %55
  %68 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 7, i32* %70, align 8
  br label %79

71:                                               ; preds = %55
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 8, i32* %74, align 8
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 7, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71, %67, %63, %59
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @CSTOPB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 2, i32 1
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @PARENB, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %79
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @PARODD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @ASYNC_PARITY_ODD, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @ASYNC_PARITY_EVEN, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %105 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  br label %112

107:                                              ; preds = %79
  %108 = load i32, i32* @ASYNC_PARITY_NONE, align 4
  %109 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %110 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %114 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %118 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %116, %120
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  %123 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %124 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = call i32 @tty_get_baud_rate(%struct.TYPE_13__* %126)
  %128 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %129 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %132 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %112
  %137 = load i32, i32* @HZ, align 4
  %138 = mul nsw i32 32, %137
  %139 = load i32, i32* %4, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %142 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %140, %144
  %146 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %147 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %136, %112
  %149 = load i32, i32* @HZ, align 4
  %150 = sdiv i32 %149, 50
  %151 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %152 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @CRTSCTS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %148
  %160 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %161 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %162 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %174

166:                                              ; preds = %148
  %167 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %170 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %168
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %166, %159
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @CLOCAL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %183 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %181
  store i32 %186, i32* %184, align 8
  br label %194

187:                                              ; preds = %174
  %188 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %189 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %190 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %187, %179
  %195 = load i32, i32* @IRQ_RXOVER, align 4
  %196 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %197 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %199 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = call i64 @I_INPCK(%struct.TYPE_13__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %194
  %205 = load i32, i32* @MASK_PARITY, align 4
  %206 = load i32, i32* @MASK_FRAMING, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %209 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %204, %194
  %213 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %214 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = call i64 @I_BRKINT(%struct.TYPE_13__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %212
  %220 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %221 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = call i64 @I_PARMRK(%struct.TYPE_13__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219, %212
  %227 = load i32, i32* @MASK_BREAK, align 4
  %228 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %229 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %226, %219
  %233 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %234 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = call i64 @I_IGNPAR(%struct.TYPE_13__* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %232
  %240 = load i32, i32* @MASK_PARITY, align 4
  %241 = load i32, i32* @MASK_FRAMING, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %244 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %239, %232
  %248 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %249 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = call i64 @I_IGNBRK(%struct.TYPE_13__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %247
  %255 = load i32, i32* @MASK_BREAK, align 4
  %256 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %257 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %261 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = call i64 @I_IGNPAR(%struct.TYPE_13__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %254
  %267 = load i32, i32* @MASK_OVERRUN, align 4
  %268 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %269 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %266, %254
  br label %273

273:                                              ; preds = %272, %247
  %274 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %275 = call i32 @program_hw(%struct.slgt_info* %274)
  br label %276

276:                                              ; preds = %273, %18
  ret void
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.TYPE_13__*) #1

declare dso_local i64 @I_INPCK(%struct.TYPE_13__*) #1

declare dso_local i64 @I_BRKINT(%struct.TYPE_13__*) #1

declare dso_local i64 @I_PARMRK(%struct.TYPE_13__*) #1

declare dso_local i64 @I_IGNPAR(%struct.TYPE_13__*) #1

declare dso_local i64 @I_IGNBRK(%struct.TYPE_13__*) #1

declare dso_local i32 @program_hw(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
