; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_15__, i8*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i64, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_13__ = type { i64*, i64*, i32*, i64*, i32 (%struct.TYPE_15__*)*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@N_OK_FC_PENDING = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i64 0, align 8
@INC_ACT_PENDING = common dso_local global i64 0, align 8
@B2_V120_ASYNC = common dso_local global i64 0, align 8
@B2_V120_ASYNC_V42BIS = common dso_local global i64 0, align 8
@B2_V120_BIT_TRANSPARENT = common dso_local global i64 0, align 8
@v120_break_header = common dso_local global i8* null, align 8
@v120_default_header = common dso_local global i8* null, align 8
@N_DATA = common dso_local global i32 0, align 4
@N_UDATA = common dso_local global i64 0, align 8
@B3_RTP = common dso_local global i64 0, align 8
@N_BDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%x:DREQ(%x:%x)\00", align 1
@N_DISC = common dso_local global i8* null, align 8
@_DISCONNECT_B3_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %350, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %350

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 11
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %344, %16
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %33
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %5, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %23
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @N_OK_FC_PENDING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %332, label %57

57:                                               ; preds = %42, %23
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %292

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @INC_ACT_PENDING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %287

86:                                               ; preds = %80, %71, %62
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %92
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %4, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @B2_V120_ASYNC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %86
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @B2_V120_ASYNC_V42BIS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @B2_V120_BIT_TRANSPARENT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %174

111:                                              ; preds = %105, %99, %86
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @TransmitBufferGet(i32 %114, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i8* %118, i8** %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 %126, i32* %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 16
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %111
  %138 = load i8*, i8** @v120_break_header, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i8* %138, i8** %143, align 8
  br label %151

144:                                              ; preds = %111
  %145 = load i8*, i8** @v120_default_header, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i8* %145, i8** %150, align 8
  br label %151

151:                                              ; preds = %144, %137
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32 2, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 7
  %164 = shl i32 %163, 4
  %165 = load i32, i32* @N_DATA, align 4
  %166 = or i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 7
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  store i8* %168, i8** %173, align 8
  br label %245

174:                                              ; preds = %105
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @TransmitBufferGet(i32 %177, i32 %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  store i8* %181, i8** %186, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 16
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %174
  %201 = load i64, i64* @N_UDATA, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 7
  store i8* %202, i8** %204, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  store i8* %202, i8** %207, align 8
  br label %244

208:                                              ; preds = %174
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @B3_RTP, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %214
  %221 = load i64, i64* @N_BDATA, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 7
  store i8* %222, i8** %224, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  store i8* %222, i8** %227, align 8
  br label %243

228:                                              ; preds = %214, %208
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 7
  %233 = shl i32 %232, 4
  %234 = load i32, i32* @N_DATA, align 4
  %235 = or i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 7
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  store i8* %237, i8** %242, align 8
  br label %243

243:                                              ; preds = %228, %220
  br label %244

244:                                              ; preds = %243, %200
  br label %245

245:                                              ; preds = %244, %151
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 4
  store %struct.TYPE_10__* %248, %struct.TYPE_10__** %251, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* %6, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  store i64 %257, i64* %260, align 8
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 6
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %263, i32 %267, i8* %271)
  %273 = call i32 @dbug(i32 1, i32 %272)
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  store i32 1, i32* %275, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 9
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %282, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 6
  %286 = call i32 %283(%struct.TYPE_15__* %285)
  br label %291

287:                                              ; preds = %80
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %289 = load i64, i64* %6, align 8
  %290 = call i32 @cleanup_ncci_data(%struct.TYPE_11__* %288, i64 %289)
  br label %291

291:                                              ; preds = %287, %245
  br label %331

292:                                              ; preds = %57
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* %6, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %330

298:                                              ; preds = %292
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  store i32 0, i32* %303, align 8
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* %6, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 6
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 1
  store i64 %309, i64* %312, align 8
  %313 = load i8*, i8** @N_DISC, align 8
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 7
  store i8* %313, i8** %315, align 8
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 2
  store i8* %313, i8** %318, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 4
  %321 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %320, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 6
  %324 = call i32 %321(%struct.TYPE_15__* %323)
  %325 = load i32, i32* @_DISCONNECT_B3_R, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  br label %330

330:                                              ; preds = %298, %292
  br label %331

331:                                              ; preds = %330, %291
  br label %332

332:                                              ; preds = %331, %42
  br label %333

333:                                              ; preds = %332
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 7
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %344, label %338

338:                                              ; preds = %333
  %339 = load i64, i64* %6, align 8
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %339, %342
  br label %344

344:                                              ; preds = %338, %333
  %345 = phi i1 [ false, %333 ], [ %343, %338 ]
  br i1 %345, label %23, label %346

346:                                              ; preds = %344
  %347 = load i64, i64* %6, align 8
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %346, %11, %1
  ret void
}

declare dso_local i8* @TransmitBufferGet(i32, i32) #1

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i8*) #1

declare dso_local i32 @cleanup_ncci_data(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
