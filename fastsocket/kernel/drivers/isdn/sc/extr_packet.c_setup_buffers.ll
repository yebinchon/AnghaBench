; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_packet.c_setup_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_packet.c_setup_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"invalid param: %d is not a valid card id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: setting up channel buffer space in shared RAM\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_6__** null, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@BUFFER_BASE = common dso_local global i32 0, align 4
@BUFFERS_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: calculating buffer space: %d buffers, %d big\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: not enough buffer space\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s: channel buffer offset from shared RAM: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"%s: send buffer setup complete: first=0x%lx n=%d f=%d, nxt=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: adding %d RecvBuffers:\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s: adding RcvBuffer #%d offset=0x%lx sz=%d bufsz:%d\0A\00", align 1
@CEPID = common dso_local global i32 0, align 4
@ceReqTypeLnk = common dso_local global i32 0, align 4
@ceReqClass1 = common dso_local global i32 0, align 4
@ceReqLnkRead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_buffers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @IS_VALID_CARD(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %270

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @BUFFER_SIZE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUFFER_BASE, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = udiv i32 %37, %38
  %40 = udiv i32 %39, 2
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BUFFERS_MAX, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = load i32, i32* @BUFFERS_MAX, align 4
  br label %48

46:                                               ; preds = %19
  %47 = load i32, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %71

62:                                               ; preds = %48
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %3, align 4
  br label %270

71:                                               ; preds = %48
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = mul i32 %74, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @BUFFER_BASE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %87, %88
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %89, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = udiv i32 %102, 2
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %103, i32* %115, align 4
  %116 = load i32, i32* %6, align 4
  %117 = udiv i32 %116, 2
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %118, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 %117, i32* %129, align 4
  %130 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %130, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %149, i64 %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %162, i64 %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %175, i64 %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %188, i64 %190
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32 %161, i32 %174, i32 %187, i32 %200)
  %202 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %202, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %6, align 4
  %210 = udiv i32 %209, 2
  %211 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %210)
  store i32 0, i32* %7, align 4
  br label %212

212:                                              ; preds = %266, %71
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %6, align 4
  %215 = udiv i32 %214, 2
  %216 = icmp ult i32 %213, %215
  br i1 %216, label %217, label %269

217:                                              ; preds = %212
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %6, align 4
  %232 = udiv i32 %231, 2
  %233 = load i32, i32* %9, align 4
  %234 = mul i32 %232, %233
  %235 = add i32 %230, %234
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %7, align 4
  %238 = mul i32 %236, %237
  %239 = add i32 %235, %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* %9, align 4
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sc_adapter, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %243, i64 %245
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %7, align 4
  %251 = add i32 %250, 1
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %249, i32 %251, i32 %253, i32 %255, i32 %256)
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @CEPID, align 4
  %260 = load i32, i32* @ceReqTypeLnk, align 4
  %261 = load i32, i32* @ceReqClass1, align 4
  %262 = load i32, i32* @ceReqLnkRead, align 4
  %263 = load i32, i32* %5, align 4
  %264 = bitcast %struct.TYPE_5__* %10 to i32*
  %265 = call i32 @sendmessage(i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 8, i32* %264)
  br label %266

266:                                              ; preds = %217
  %267 = load i32, i32* %7, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %212

269:                                              ; preds = %212
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %62, %14
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @sendmessage(i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
