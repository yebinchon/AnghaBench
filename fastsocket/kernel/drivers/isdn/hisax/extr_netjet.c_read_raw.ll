; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_read_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32*, i32, i8*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@NETJET_DMA_RXSIZE = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@HDLC_ZERO_SEARCH = common dso_local global i32 0, align 4
@HDLC_FLAG_SEARCH = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tiger read_raw: zBit(%d,%d,%d) %x\00", align 1
@HDLC_FLAG_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tiger read_raw: flag(%d,%d,%d) %x\00", align 1
@HDLC_FRAME_FOUND = common dso_local global i32 0, align 4
@PPP_INITFCS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"tiger read_raw: byte1(%d,%d,%d) rval %x val %x i %x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"tiger: frame not byte aligned\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"tiger frame end(%d,%d): fcs(%x) i %x\00", align 1
@PPP_GOODFCS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"tiger FCS error\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@HSCX_BUFMAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"tiger: frame too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32*, i32)* @read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_raw(%struct.BCState* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.BCState*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.BCState*, %struct.BCState** %4, align 8
  %19 = getelementptr inbounds %struct.BCState, %struct.BCState* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @NETJET_DMA_RXSIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 -1
  store i32* %26, i32** %10, align 8
  %27 = load %struct.BCState*, %struct.BCState** %4, align 8
  %28 = getelementptr inbounds %struct.BCState, %struct.BCState* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.BCState*, %struct.BCState** %4, align 8
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.BCState*, %struct.BCState** %4, align 8
  %38 = getelementptr inbounds %struct.BCState, %struct.BCState* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.BCState*, %struct.BCState** %4, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %5, align 8
  store i32* %47, i32** %15, align 8
  %48 = load %struct.BCState*, %struct.BCState** %4, align 8
  %49 = getelementptr inbounds %struct.BCState, %struct.BCState* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @L1_MODE_HDLC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  store i32 255, i32* %17, align 4
  store i32 8, i32* %16, align 4
  br label %55

54:                                               ; preds = %3
  store i32 127, i32* %17, align 4
  store i32 7, i32* %16, align 4
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %493, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %496

60:                                               ; preds = %56
  %61 = load %struct.BCState*, %struct.BCState** %4, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  br label %74

70:                                               ; preds = %60
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i32 [ %69, %65 ], [ %73, %70 ]
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ugt i32* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.BCState*, %struct.BCState** %4, align 8
  %83 = getelementptr inbounds %struct.BCState, %struct.BCState* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %15, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %17, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.BCState*, %struct.BCState** %4, align 8
  %96 = getelementptr inbounds %struct.BCState, %struct.BCState* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %493

101:                                              ; preds = %87
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %483, %101
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %486

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %141

117:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  %118 = load i32, i32* @HDLC_FLAG_SEARCH, align 4
  store i32 %118, i32* %11, align 4
  %119 = load %struct.BCState*, %struct.BCState** %4, align 8
  %120 = getelementptr inbounds %struct.BCState, %struct.BCState* %119, i32 0, i32 3
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @L1_DEB_HSCX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %117
  %128 = load %struct.BCState*, %struct.BCState** %4, align 8
  %129 = getelementptr inbounds %struct.BCState, %struct.BCState* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load %struct.BCState*, %struct.BCState** %4, align 8
  %132 = getelementptr inbounds %struct.BCState, %struct.BCState* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %127, %117
  br label %141

141:                                              ; preds = %140, %114
  br label %480

142:                                              ; preds = %106
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @HDLC_FLAG_SEARCH, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %187

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp sgt i32 %153, 6
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %155, %150
  br label %186

158:                                              ; preds = %146
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 6
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %162 = load i32, i32* @HDLC_FLAG_FOUND, align 4
  store i32 %162, i32* %11, align 4
  %163 = load %struct.BCState*, %struct.BCState** %4, align 8
  %164 = getelementptr inbounds %struct.BCState, %struct.BCState* %163, i32 0, i32 3
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @L1_DEB_HSCX, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %161
  %172 = load %struct.BCState*, %struct.BCState** %4, align 8
  %173 = getelementptr inbounds %struct.BCState, %struct.BCState* %172, i32 0, i32 3
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load %struct.BCState*, %struct.BCState** %4, align 8
  %176 = getelementptr inbounds %struct.BCState, %struct.BCState* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %171, %161
  br label %185

185:                                              ; preds = %184, %158
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %185, %157
  br label %479

187:                                              ; preds = %142
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @HDLC_FLAG_FOUND, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %292

191:                                              ; preds = %187
  %192 = load i32, i32* %9, align 4
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp sgt i32 %198, 6
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  store i32 %201, i32* %11, align 4
  br label %209

202:                                              ; preds = %195
  %203 = load i32, i32* %13, align 4
  %204 = ashr i32 %203, 1
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = or i32 %205, 128
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %202, %200
  br label %228

210:                                              ; preds = %191
  %211 = load i32, i32* %12, align 4
  %212 = icmp eq i32 %211, 6
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %214 = load i32, i32* %9, align 4
  %215 = ashr i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %483

216:                                              ; preds = %210
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 5
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = ashr i32 %220, 1
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, 127
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %219, %216
  br label %227

227:                                              ; preds = %226
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %227, %209
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %291

232:                                              ; preds = %228
  %233 = load i32, i32* %14, align 4
  %234 = and i32 %233, 7
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %291, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* @HDLC_FRAME_FOUND, align 4
  store i32 %237, i32* %11, align 4
  %238 = load i8*, i8** @PPP_INITFCS, align 8
  %239 = load %struct.BCState*, %struct.BCState** %4, align 8
  %240 = getelementptr inbounds %struct.BCState, %struct.BCState* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 7
  store i8* %238, i8** %242, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.BCState*, %struct.BCState** %4, align 8
  %245 = getelementptr inbounds %struct.BCState, %struct.BCState* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 5
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %243, i32* %249, align 4
  %250 = load %struct.BCState*, %struct.BCState** %4, align 8
  %251 = getelementptr inbounds %struct.BCState, %struct.BCState* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 7
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = call i8* @PPP_FCS(i8* %254, i32 %255)
  %257 = load %struct.BCState*, %struct.BCState** %4, align 8
  %258 = getelementptr inbounds %struct.BCState, %struct.BCState* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 7
  store i8* %256, i8** %260, align 8
  %261 = load %struct.BCState*, %struct.BCState** %4, align 8
  %262 = getelementptr inbounds %struct.BCState, %struct.BCState* %261, i32 0, i32 3
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @L1_DEB_HSCX, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %236
  %270 = load %struct.BCState*, %struct.BCState** %4, align 8
  %271 = getelementptr inbounds %struct.BCState, %struct.BCState* %270, i32 0, i32 3
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = load %struct.BCState*, %struct.BCState** %4, align 8
  %274 = getelementptr inbounds %struct.BCState, %struct.BCState* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.BCState*, %struct.BCState** %4, align 8
  %283 = getelementptr inbounds %struct.BCState, %struct.BCState* %282, i32 0, i32 3
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %272, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %288)
  br label %290

290:                                              ; preds = %269, %236
  br label %291

291:                                              ; preds = %290, %232, %228
  br label %478

292:                                              ; preds = %187
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @HDLC_FRAME_FOUND, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %477

296:                                              ; preds = %292
  %297 = load i32, i32* %9, align 4
  %298 = and i32 %297, 1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %296
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  %303 = load i32, i32* %12, align 4
  %304 = icmp sgt i32 %303, 6
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @HDLC_ZERO_SEARCH, align 4
  store i32 %306, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %314

307:                                              ; preds = %300
  %308 = load i32, i32* %13, align 4
  %309 = ashr i32 %308, 1
  store i32 %309, i32* %13, align 4
  %310 = load i32, i32* %13, align 4
  %311 = or i32 %310, 128
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %14, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %14, align 4
  br label %314

314:                                              ; preds = %307, %305
  br label %427

315:                                              ; preds = %296
  %316 = load i32, i32* %12, align 4
  %317 = icmp eq i32 %316, 6
  br i1 %317, label %318, label %412

318:                                              ; preds = %315
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %14, align 4
  %322 = and i32 %321, 7
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load %struct.BCState*, %struct.BCState** %4, align 8
  %326 = getelementptr inbounds %struct.BCState, %struct.BCState* %325, i32 0, i32 3
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %329 = load i32, i32* @HDLC_FLAG_SEARCH, align 4
  store i32 %329, i32* %11, align 4
  %330 = load %struct.BCState*, %struct.BCState** %4, align 8
  %331 = getelementptr inbounds %struct.BCState, %struct.BCState* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 8
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %333, align 8
  br label %411

336:                                              ; preds = %318
  %337 = load %struct.BCState*, %struct.BCState** %4, align 8
  %338 = getelementptr inbounds %struct.BCState, %struct.BCState* %337, i32 0, i32 3
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @L1_DEB_HSCX, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %364

345:                                              ; preds = %336
  %346 = load %struct.BCState*, %struct.BCState** %4, align 8
  %347 = getelementptr inbounds %struct.BCState, %struct.BCState* %346, i32 0, i32 3
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %8, align 4
  %351 = load %struct.BCState*, %struct.BCState** %4, align 8
  %352 = getelementptr inbounds %struct.BCState, %struct.BCState* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 7
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.BCState*, %struct.BCState** %4, align 8
  %357 = getelementptr inbounds %struct.BCState, %struct.BCState* %356, i32 0, i32 3
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %348, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %349, i32 %350, i8* %355, i32 %362)
  br label %364

364:                                              ; preds = %345, %336
  %365 = load %struct.BCState*, %struct.BCState** %4, align 8
  %366 = getelementptr inbounds %struct.BCState, %struct.BCState* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 7
  %369 = load i8*, i8** %368, align 8
  %370 = load i8*, i8** @PPP_GOODFCS, align 8
  %371 = icmp eq i8* %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %364
  %373 = load %struct.BCState*, %struct.BCState** %4, align 8
  %374 = load i32, i32* %14, align 4
  %375 = ashr i32 %374, 3
  %376 = sub nsw i32 %375, 3
  %377 = call i32 @got_frame(%struct.BCState* %373, i32 %376)
  br label %409

378:                                              ; preds = %364
  %379 = load %struct.BCState*, %struct.BCState** %4, align 8
  %380 = getelementptr inbounds %struct.BCState, %struct.BCState* %379, i32 0, i32 3
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %408

385:                                              ; preds = %378
  %386 = load %struct.BCState*, %struct.BCState** %4, align 8
  %387 = getelementptr inbounds %struct.BCState, %struct.BCState* %386, i32 0, i32 3
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %387, align 8
  %389 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %388, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %390 = load %struct.BCState*, %struct.BCState** %4, align 8
  %391 = getelementptr inbounds %struct.BCState, %struct.BCState* %390, i32 0, i32 3
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %391, align 8
  %393 = load %struct.BCState*, %struct.BCState** %4, align 8
  %394 = getelementptr inbounds %struct.BCState, %struct.BCState* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 5
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %14, align 4
  %399 = ashr i32 %398, 3
  %400 = sub nsw i32 %399, 1
  %401 = call i32 @printframe(%struct.TYPE_11__* %392, i32* %397, i32 %400, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %402 = load %struct.BCState*, %struct.BCState** %4, align 8
  %403 = getelementptr inbounds %struct.BCState, %struct.BCState* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 8
  %406 = load i32, i32* %405, align 8
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %385, %378
  br label %409

409:                                              ; preds = %408, %372
  %410 = load i32, i32* @HDLC_FLAG_FOUND, align 4
  store i32 %410, i32* %11, align 4
  br label %411

411:                                              ; preds = %409, %324
  store i32 0, i32* %14, align 4
  br label %426

412:                                              ; preds = %315
  %413 = load i32, i32* %12, align 4
  %414 = icmp eq i32 %413, 5
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load i32, i32* %9, align 4
  %417 = ashr i32 %416, 1
  store i32 %417, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %483

418:                                              ; preds = %412
  %419 = load i32, i32* %13, align 4
  %420 = ashr i32 %419, 1
  store i32 %420, i32* %13, align 4
  %421 = load i32, i32* %13, align 4
  %422 = and i32 %421, 127
  store i32 %422, i32* %13, align 4
  %423 = load i32, i32* %14, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %14, align 4
  br label %425

425:                                              ; preds = %418
  br label %426

426:                                              ; preds = %425, %411
  store i32 0, i32* %12, align 4
  br label %427

427:                                              ; preds = %426, %314
  %428 = load i32, i32* %11, align 4
  %429 = load i32, i32* @HDLC_FRAME_FOUND, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %476

431:                                              ; preds = %427
  %432 = load i32, i32* %14, align 4
  %433 = and i32 %432, 7
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %476, label %435

435:                                              ; preds = %431
  %436 = load i32, i32* %14, align 4
  %437 = ashr i32 %436, 3
  %438 = load i32, i32* @HSCX_BUFMAX, align 4
  %439 = icmp sge i32 %437, %438
  br i1 %439, label %440, label %452

440:                                              ; preds = %435
  %441 = load %struct.BCState*, %struct.BCState** %4, align 8
  %442 = getelementptr inbounds %struct.BCState, %struct.BCState* %441, i32 0, i32 3
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %442, align 8
  %444 = call i32 (%struct.TYPE_11__*, i8*, ...) @debugl1(%struct.TYPE_11__* %443, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  %445 = load i32, i32* @HDLC_FLAG_SEARCH, align 4
  store i32 %445, i32* %11, align 4
  %446 = load %struct.BCState*, %struct.BCState** %4, align 8
  %447 = getelementptr inbounds %struct.BCState, %struct.BCState* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 8
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %449, align 8
  br label %475

452:                                              ; preds = %435
  %453 = load i32, i32* %13, align 4
  %454 = load %struct.BCState*, %struct.BCState** %4, align 8
  %455 = getelementptr inbounds %struct.BCState, %struct.BCState* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 5
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %14, align 4
  %460 = ashr i32 %459, 3
  %461 = sub nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %458, i64 %462
  store i32 %453, i32* %463, align 4
  %464 = load %struct.BCState*, %struct.BCState** %4, align 8
  %465 = getelementptr inbounds %struct.BCState, %struct.BCState* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 7
  %468 = load i8*, i8** %467, align 8
  %469 = load i32, i32* %13, align 4
  %470 = call i8* @PPP_FCS(i8* %468, i32 %469)
  %471 = load %struct.BCState*, %struct.BCState** %4, align 8
  %472 = getelementptr inbounds %struct.BCState, %struct.BCState* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 7
  store i8* %470, i8** %474, align 8
  br label %475

475:                                              ; preds = %452, %440
  br label %476

476:                                              ; preds = %475, %431, %427
  br label %477

477:                                              ; preds = %476, %292
  br label %478

478:                                              ; preds = %477, %291
  br label %479

479:                                              ; preds = %478, %186
  br label %480

480:                                              ; preds = %479, %141
  %481 = load i32, i32* %9, align 4
  %482 = ashr i32 %481, 1
  store i32 %482, i32* %9, align 4
  br label %483

483:                                              ; preds = %480, %415, %213
  %484 = load i32, i32* %8, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %8, align 4
  br label %102

486:                                              ; preds = %102
  %487 = load %struct.BCState*, %struct.BCState** %4, align 8
  %488 = getelementptr inbounds %struct.BCState, %struct.BCState* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 6
  %491 = load i32, i32* %490, align 8
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %490, align 8
  br label %493

493:                                              ; preds = %486, %93
  %494 = load i32, i32* %7, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %7, align 4
  br label %56

496:                                              ; preds = %56
  %497 = load i32, i32* %11, align 4
  %498 = load %struct.BCState*, %struct.BCState** %4, align 8
  %499 = getelementptr inbounds %struct.BCState, %struct.BCState* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 1
  store i32 %497, i32* %501, align 8
  %502 = load i32, i32* %12, align 4
  %503 = load %struct.BCState*, %struct.BCState** %4, align 8
  %504 = getelementptr inbounds %struct.BCState, %struct.BCState* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 2
  store i32 %502, i32* %506, align 4
  %507 = load i32, i32* %13, align 4
  %508 = load %struct.BCState*, %struct.BCState** %4, align 8
  %509 = getelementptr inbounds %struct.BCState, %struct.BCState* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 3
  store i32 %507, i32* %511, align 8
  %512 = load i32, i32* %14, align 4
  %513 = load %struct.BCState*, %struct.BCState** %4, align 8
  %514 = getelementptr inbounds %struct.BCState, %struct.BCState* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 4
  store i32 %512, i32* %516, align 4
  ret void
}

declare dso_local i32 @debugl1(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i8* @PPP_FCS(i8*, i32) #1

declare dso_local i32 @got_frame(%struct.BCState*, i32) #1

declare dso_local i32 @printframe(%struct.TYPE_11__*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
