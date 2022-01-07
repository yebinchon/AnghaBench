; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_netjet_fill_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_netjet_fill_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32* }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tiger fill_dma1: c%d %4x\00", align 1
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"tiger fill_dma2: c%d %4x\00", align 1
@BC_FLG_NOFRAME = common dso_local global i32 0, align 4
@BC_FLG_HALF = common dso_local global i32 0, align 4
@NETJET_DMA_READ_ADR = common dso_local global i64 0, align 8
@BC_FLG_EMPTY = common dso_local global i32 0, align 4
@NETJET_DMA_TXSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"tiger fill_dma3: c%d %4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netjet_fill_dma(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %6 = load %struct.BCState*, %struct.BCState** %2, align 8
  %7 = getelementptr inbounds %struct.BCState, %struct.BCState* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %305

11:                                               ; preds = %1
  %12 = load %struct.BCState*, %struct.BCState** %2, align 8
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @L1_DEB_HSCX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load %struct.BCState*, %struct.BCState** %2, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load %struct.BCState*, %struct.BCState** %2, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.BCState*, %struct.BCState** %2, align 8
  %28 = getelementptr inbounds %struct.BCState, %struct.BCState* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @debugl1(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %20, %11
  %32 = load i32, i32* @BC_FLG_BUSY, align 4
  %33 = load %struct.BCState*, %struct.BCState** %2, align 8
  %34 = getelementptr inbounds %struct.BCState, %struct.BCState* %33, i32 0, i32 1
  %35 = call i64 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %305

38:                                               ; preds = %31
  %39 = load %struct.BCState*, %struct.BCState** %2, align 8
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @L1_MODE_HDLC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = call i64 @make_raw_data(%struct.BCState* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %305

49:                                               ; preds = %44
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.BCState*, %struct.BCState** %2, align 8
  %52 = call i64 @make_raw_data_56k(%struct.BCState* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %305

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.BCState*, %struct.BCState** %2, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @L1_DEB_HSCX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.BCState*, %struct.BCState** %2, align 8
  %67 = getelementptr inbounds %struct.BCState, %struct.BCState* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load %struct.BCState*, %struct.BCState** %2, align 8
  %70 = getelementptr inbounds %struct.BCState, %struct.BCState* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.BCState*, %struct.BCState** %2, align 8
  %73 = getelementptr inbounds %struct.BCState, %struct.BCState* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @debugl1(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %65, %56
  %77 = load i32, i32* @BC_FLG_NOFRAME, align 4
  %78 = load %struct.BCState*, %struct.BCState** %2, align 8
  %79 = getelementptr inbounds %struct.BCState, %struct.BCState* %78, i32 0, i32 1
  %80 = call i64 @test_and_clear_bit(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.BCState*, %struct.BCState** %2, align 8
  %84 = load %struct.BCState*, %struct.BCState** %2, align 8
  %85 = getelementptr inbounds %struct.BCState, %struct.BCState* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.BCState*, %struct.BCState** %2, align 8
  %90 = getelementptr inbounds %struct.BCState, %struct.BCState* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @write_raw(%struct.BCState* %83, i32* %88, i32 %93)
  br label %285

95:                                               ; preds = %76
  %96 = load i32, i32* @BC_FLG_HALF, align 4
  %97 = load %struct.BCState*, %struct.BCState** %2, align 8
  %98 = getelementptr inbounds %struct.BCState, %struct.BCState* %97, i32 0, i32 1
  %99 = call i64 @test_and_clear_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %218

101:                                              ; preds = %95
  %102 = load %struct.BCState*, %struct.BCState** %2, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NETJET_DMA_READ_ADR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @inl(i64 %110)
  %112 = call i32* @bus_to_virt(i32 %111)
  store i32* %112, i32** %3, align 8
  %113 = load %struct.BCState*, %struct.BCState** %2, align 8
  %114 = getelementptr inbounds %struct.BCState, %struct.BCState* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %4, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.BCState*, %struct.BCState** %2, align 8
  %120 = getelementptr inbounds %struct.BCState, %struct.BCState* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %118, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %101
  %126 = load %struct.BCState*, %struct.BCState** %2, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 -1
  store i32* %131, i32** %3, align 8
  br label %132

132:                                              ; preds = %125, %101
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.BCState*, %struct.BCState** %2, align 8
  %135 = getelementptr inbounds %struct.BCState, %struct.BCState* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %133, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.BCState*, %struct.BCState** %2, align 8
  %142 = getelementptr inbounds %struct.BCState, %struct.BCState* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 -1
  store i32* %146, i32** %4, align 8
  br label %147

147:                                              ; preds = %140, %132
  %148 = load i32*, i32** %3, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %147
  %158 = load %struct.BCState*, %struct.BCState** %2, align 8
  %159 = load %struct.BCState*, %struct.BCState** %2, align 8
  %160 = getelementptr inbounds %struct.BCState, %struct.BCState* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.BCState*, %struct.BCState** %2, align 8
  %165 = getelementptr inbounds %struct.BCState, %struct.BCState* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @write_raw(%struct.BCState* %158, i32* %163, i32 %168)
  br label %217

170:                                              ; preds = %147
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %3, align 8
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  %175 = load i32*, i32** %3, align 8
  %176 = load %struct.BCState*, %struct.BCState** %2, align 8
  %177 = getelementptr inbounds %struct.BCState, %struct.BCState* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ugt i32* %175, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %170
  %183 = load %struct.BCState*, %struct.BCState** %2, align 8
  %184 = getelementptr inbounds %struct.BCState, %struct.BCState* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  store i32* %187, i32** %3, align 8
  br label %188

188:                                              ; preds = %182, %170
  %189 = load i32*, i32** %3, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %3, align 8
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = load i32*, i32** %3, align 8
  %194 = load %struct.BCState*, %struct.BCState** %2, align 8
  %195 = getelementptr inbounds %struct.BCState, %struct.BCState* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ugt i32* %193, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %188
  %201 = load %struct.BCState*, %struct.BCState** %2, align 8
  %202 = getelementptr inbounds %struct.BCState, %struct.BCState* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %3, align 8
  br label %206

206:                                              ; preds = %200, %188
  %207 = load %struct.BCState*, %struct.BCState** %2, align 8
  %208 = load i32*, i32** %3, align 8
  %209 = load %struct.BCState*, %struct.BCState** %2, align 8
  %210 = getelementptr inbounds %struct.BCState, %struct.BCState* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 @write_raw(%struct.BCState* %207, i32* %208, i32 %215)
  br label %217

217:                                              ; preds = %206, %157
  br label %284

218:                                              ; preds = %95
  %219 = load i32, i32* @BC_FLG_EMPTY, align 4
  %220 = load %struct.BCState*, %struct.BCState** %2, align 8
  %221 = getelementptr inbounds %struct.BCState, %struct.BCState* %220, i32 0, i32 1
  %222 = call i64 @test_and_clear_bit(i32 %219, i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %283

224:                                              ; preds = %218
  %225 = load %struct.BCState*, %struct.BCState** %2, align 8
  %226 = getelementptr inbounds %struct.BCState, %struct.BCState* %225, i32 0, i32 3
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @NETJET_DMA_READ_ADR, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @inl(i64 %233)
  %235 = call i32* @bus_to_virt(i32 %234)
  store i32* %235, i32** %3, align 8
  %236 = load %struct.BCState*, %struct.BCState** %2, align 8
  %237 = getelementptr inbounds %struct.BCState, %struct.BCState* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %3, align 8
  %242 = ptrtoint i32* %240 to i64
  %243 = ptrtoint i32* %241 to i64
  %244 = sub i64 %242, %243
  %245 = sdiv exact i64 %244, 4
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %249, label %259

249:                                              ; preds = %224
  %250 = load %struct.BCState*, %struct.BCState** %2, align 8
  %251 = getelementptr inbounds %struct.BCState, %struct.BCState* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  store i32* %255, i32** %3, align 8
  %256 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %257 = sdiv i32 %256, 2
  %258 = sub nsw i32 %257, 2
  store i32 %258, i32* %5, align 4
  br label %278

259:                                              ; preds = %224
  %260 = load i32*, i32** %3, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %261, i32** %3, align 8
  %262 = load i32*, i32** %3, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %3, align 8
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %266 = sdiv i32 %265, 2
  %267 = icmp sle i32 %264, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %259
  %269 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %270 = sdiv i32 %269, 2
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %268, %259
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %5, align 4
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %273, %249
  %279 = load %struct.BCState*, %struct.BCState** %2, align 8
  %280 = load i32*, i32** %3, align 8
  %281 = load i32, i32* %5, align 4
  %282 = call i32 @write_raw(%struct.BCState* %279, i32* %280, i32 %281)
  br label %283

283:                                              ; preds = %278, %218
  br label %284

284:                                              ; preds = %283, %217
  br label %285

285:                                              ; preds = %284, %82
  %286 = load %struct.BCState*, %struct.BCState** %2, align 8
  %287 = getelementptr inbounds %struct.BCState, %struct.BCState* %286, i32 0, i32 3
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @L1_DEB_HSCX, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %285
  %295 = load %struct.BCState*, %struct.BCState** %2, align 8
  %296 = getelementptr inbounds %struct.BCState, %struct.BCState* %295, i32 0, i32 3
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = load %struct.BCState*, %struct.BCState** %2, align 8
  %299 = getelementptr inbounds %struct.BCState, %struct.BCState* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.BCState*, %struct.BCState** %2, align 8
  %302 = getelementptr inbounds %struct.BCState, %struct.BCState* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @debugl1(%struct.TYPE_10__* %297, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %300, i32 %303)
  br label %305

305:                                              ; preds = %10, %37, %48, %54, %294, %285
  ret void
}

declare dso_local i32 @debugl1(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @make_raw_data(%struct.BCState*) #1

declare dso_local i64 @make_raw_data_56k(%struct.BCState*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @write_raw(%struct.BCState*, i32*, i32) #1

declare dso_local i32* @bus_to_virt(i32) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
