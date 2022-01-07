; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_read_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_read_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_ch = type { i64, %struct.TYPE_7__, i32, i64*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64, i32, %struct.tiger_hw* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.tiger_hw = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }

@RX_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: B%1d overrun at idx %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: B%1d receive out of memory\0A\00", align 1
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: B%1d overrun %d\0A\00", align 1
@FLG_HDLC = common dso_local global i32 0, align 4
@HDLC_CRC_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: B%1d receive frame CRC error\0A\00", align 1
@HDLC_FRAMING_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: B%1d receive framing error\0A\00", align 1
@HDLC_LENGTH_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: B%1d receive frame too long (> %d)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@LOG_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_ch*, i64, i32)* @read_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dma(%struct.tiger_ch* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tiger_ch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiger_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.tiger_ch* %0, %struct.tiger_ch** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %14 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %15, align 8
  store %struct.tiger_hw* %16, %struct.tiger_hw** %7, align 8
  %17 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %18 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @RX_OVERRUN, align 4
  %24 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %25 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %29 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %32 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %22, %3
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %40 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %42 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %37
  %47 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %48 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8* @mI_alloc_skb(i64 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  %54 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %55 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %58 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %46
  %63 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %64 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %67 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %69)
  br label %341

71:                                               ; preds = %46
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* @FLG_TRANSPARENT, align 4
  %74 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %75 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = call i64 @test_bit(i32 %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %72
  %80 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %81 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %90 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %88, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %79
  %95 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %96 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %99 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %103 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %101, i64 %110)
  %112 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %113 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @skb_trim(%struct.TYPE_6__* %115, i32 0)
  br label %341

117:                                              ; preds = %79
  %118 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %119 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i64* @skb_put(%struct.TYPE_6__* %121, i32 %122)
  store i64* %123, i64** %11, align 8
  br label %128

124:                                              ; preds = %72
  %125 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %126 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  store i64* %127, i64** %11, align 8
  br label %128

128:                                              ; preds = %124, %117
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %166, %128
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %169

133:                                              ; preds = %129
  %134 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %135 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %5, align 8
  %140 = getelementptr inbounds i64, i64* %137, i64 %138
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %10, align 8
  %142 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %143 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 2
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = load i64, i64* %10, align 8
  %150 = ashr i64 %149, 8
  store i64 %150, i64* %10, align 8
  br label %151

151:                                              ; preds = %148, %133
  %152 = load i64, i64* %5, align 8
  %153 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %154 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %152, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i64 0, i64* %5, align 8
  br label %159

159:                                              ; preds = %158, %151
  %160 = load i64, i64* %10, align 8
  %161 = and i64 %160, 255
  %162 = load i64*, i64** %11, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  store i64 %161, i64* %165, align 8
  br label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %129

169:                                              ; preds = %129
  %170 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %171 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  store i64* %172, i64** %12, align 8
  br label %173

173:                                              ; preds = %339, %169
  %174 = load i32, i32* @FLG_HDLC, align 4
  %175 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %176 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = call i64 @test_bit(i32 %174, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %255

180:                                              ; preds = %173
  %181 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %182 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %181, i32 0, i32 2
  %183 = load i64*, i64** %12, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %186 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %192 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @isdnhdlc_decode(i32* %182, i64* %183, i32 %184, i32* %8, i32 %190, i64 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %180
  %199 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %200 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i64* @skb_put(%struct.TYPE_6__* %202, i32 %203)
  store i64* %204, i64** %11, align 8
  br label %254

205:                                              ; preds = %180
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @HDLC_CRC_ERROR, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %212 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %215 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %213, i32 %217)
  br label %253

219:                                              ; preds = %205
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @HDLC_FRAMING_ERROR, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %226 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %229 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %227, i32 %231)
  br label %252

233:                                              ; preds = %219
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @HDLC_LENGTH_ERROR, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %233
  %239 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %240 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %243 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %247 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %241, i32 %245, i64 %249)
  br label %251

251:                                              ; preds = %238, %233
  br label %252

252:                                              ; preds = %251, %224
  br label %253

253:                                              ; preds = %252, %210
  br label %254

254:                                              ; preds = %253, %198
  br label %257

255:                                              ; preds = %173
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %255, %254
  %258 = load i32, i32* %9, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %290

260:                                              ; preds = %257
  %261 = load i32, i32* @debug, align 4
  %262 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %286

265:                                              ; preds = %260
  %266 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %267 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @LOG_SIZE, align 4
  %270 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %271 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %275 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @snprintf(i32 %268, i32 %269, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %273, i8* %276, i32 %277)
  %279 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %280 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %283 = load i64*, i64** %11, align 8
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @print_hex_dump_bytes(i32 %281, i32 %282, i64* %283, i32 %284)
  br label %286

286:                                              ; preds = %265, %260
  %287 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %288 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %287, i32 0, i32 1
  %289 = call i32 @recv_Bchannel(%struct.TYPE_7__* %288, i32 0)
  br label %290

290:                                              ; preds = %286, %257
  %291 = load i32, i32* @FLG_HDLC, align 4
  %292 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %293 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 3
  %295 = call i64 @test_bit(i32 %291, i32* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %341

297:                                              ; preds = %290
  %298 = load i32, i32* %8, align 4
  %299 = load i64*, i64** %12, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i64, i64* %299, i64 %300
  store i64* %301, i64** %12, align 8
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %6, align 4
  %304 = sub nsw i32 %303, %302
  store i32 %304, i32* %6, align 4
  %305 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %306 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = icmp ne %struct.TYPE_6__* %308, null
  br i1 %309, label %336, label %310

310:                                              ; preds = %297
  %311 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %312 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* @GFP_ATOMIC, align 4
  %316 = call i8* @mI_alloc_skb(i64 %314, i32 %315)
  %317 = bitcast i8* %316 to %struct.TYPE_6__*
  %318 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %319 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 1
  store %struct.TYPE_6__* %317, %struct.TYPE_6__** %320, align 8
  %321 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %322 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = icmp ne %struct.TYPE_6__* %324, null
  br i1 %325, label %335, label %326

326:                                              ; preds = %310
  %327 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %328 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %331 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %329, i32 %333)
  br label %341

335:                                              ; preds = %310
  br label %336

336:                                              ; preds = %335, %297
  %337 = load i32, i32* %6, align 4
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  br label %173

340:                                              ; preds = %336
  br label %341

341:                                              ; preds = %62, %94, %326, %340, %290
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*, i32, ...) #1

declare dso_local i8* @mI_alloc_skb(i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i64) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i32) #1

declare dso_local i64* @skb_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @isdnhdlc_decode(i32*, i64*, i32, i32*, i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i64*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
