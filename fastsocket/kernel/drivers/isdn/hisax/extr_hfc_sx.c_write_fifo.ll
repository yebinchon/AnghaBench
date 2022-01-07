; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.sk_buff = type { i32, i32* }
%struct.hfcsx_extra = type { i16* }

@D_FIFO_SIZE = common dso_local global i32 0, align 4
@MAX_D_FRAMES = common dso_local global i32 0, align 4
@MAX_B_FRAMES = common dso_local global i32 0, align 4
@HFCSX_FIF_Z1H = common dso_local global i32 0, align 4
@HFCSX_FIF_Z1L = common dso_local global i32 0, align 4
@HFCSX_FIF_Z2H = common dso_local global i32 0, align 4
@HFCSX_FIF_Z2L = common dso_local global i32 0, align 4
@HFCSX_FIF_DWR = common dso_local global i32 0, align 4
@HFCSX_FIF_F1 = common dso_local global i32 0, align 4
@HFCSX_FIF_F2 = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hfcsx_write_fifo %d more as %d frames\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"hfcsx_write_fifo %d f1(%x) f2(%x) z1(f1)(%x)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hfcsx_write_fifo %d count(%ld/%d)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"hfcsx_write_fifo %d no fifo mem\00", align 1
@HFCSX_FIF_INCF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, %struct.sk_buff*, i32, i32)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.IsdnCardState* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %277

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %277

29:                                               ; preds = %24
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fifo_select(%struct.IsdnCardState* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @D_FIFO_SIZE, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @MAX_D_FRAMES, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %277

42:                                               ; preds = %36
  br label %50

43:                                               ; preds = %29
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @MAX_B_FRAMES, align 4
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %52 = load i32, i32* @HFCSX_FIF_Z1H, align 4
  %53 = call i32 @Read_hfc(%struct.IsdnCardState* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %57 = load i32, i32* @HFCSX_FIF_Z1L, align 4
  %58 = call i32 @Read_hfc(%struct.IsdnCardState* %56, i32 %57)
  %59 = or i32 %55, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %117

62:                                               ; preds = %50
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %64 = load i32, i32* @HFCSX_FIF_Z2H, align 4
  %65 = call i32 @Read_hfc(%struct.IsdnCardState* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %69 = load i32, i32* @HFCSX_FIF_Z2L, align 4
  %70 = call i32 @Read_hfc(%struct.IsdnCardState* %68, i32 %69)
  %71 = or i32 %67, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %62
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %277

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 2, %94
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %277

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %12, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %18, align 8
  br label %105

105:                                              ; preds = %109, %98
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %12, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %111 = load i32, i32* @HFCSX_FIF_DWR, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %18, align 8
  %114 = load i32, i32* %112, align 4
  %115 = call i32 @Write_hfc(%struct.IsdnCardState* %110, i32 %111, i32 %114)
  br label %105

116:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %277

117:                                              ; preds = %50
  %118 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %119 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.hfcsx_extra*
  %124 = getelementptr inbounds %struct.hfcsx_extra, %struct.hfcsx_extra* %123, i32 0, i32 0
  %125 = load i16*, i16** %124, align 8
  store i16* %125, i16** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = ashr i32 %126, 1
  %128 = and i32 %127, 3
  %129 = load i32, i32* @MAX_B_FRAMES, align 4
  %130 = add nsw i32 %129, 1
  %131 = mul nsw i32 %128, %130
  %132 = load i16*, i16** %10, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i16, i16* %132, i64 %133
  store i16* %134, i16** %10, align 8
  %135 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %136 = load i32, i32* @HFCSX_FIF_F1, align 4
  %137 = call i32 @Read_hfc(%struct.IsdnCardState* %135, i32 %136)
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %16, align 4
  %140 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %141 = load i32, i32* @HFCSX_FIF_F2, align 4
  %142 = call i32 @Read_hfc(%struct.IsdnCardState* %140, i32 %141)
  %143 = load i32, i32* %15, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %117
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %150, %117
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %162 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sub nsw i32 %170, 1
  %172 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %168, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %169, i32 %171)
  br label %173

173:                                              ; preds = %167, %160
  store i32 0, i32* %5, align 4
  br label %277

174:                                              ; preds = %155
  %175 = load i32, i32* %13, align 4
  %176 = trunc i32 %175 to i16
  %177 = load i16*, i16** %10, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i16, i16* %177, i64 %179
  store i16 %176, i16* %180, align 2
  %181 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %182 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %174
  %188 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %188, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %187, %174
  %195 = load i16*, i16** %10, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i16, i16* %195, i64 %197
  %199 = load i16, i16* %198, align 2
  %200 = zext i16 %199 to i32
  %201 = load i32, i32* %13, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %194
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %205, %194
  %210 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %211 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %209
  %217 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %218, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %216, %209
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %227 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %224
  %231 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %232 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %238, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %237, %230
  store i32 0, i32* %5, align 4
  br label %277

242:                                              ; preds = %224
  %243 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %12, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** %18, align 8
  br label %249

249:                                              ; preds = %253, %242
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %12, align 4
  %252 = icmp ne i32 %250, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %255 = load i32, i32* @HFCSX_FIF_DWR, align 4
  %256 = load i32*, i32** %18, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %18, align 8
  %258 = load i32, i32* %256, align 4
  %259 = call i32 @Write_hfc(%struct.IsdnCardState* %254, i32 %255, i32 %258)
  br label %249

260:                                              ; preds = %249
  %261 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %262 = load i32, i32* @HFCSX_FIF_INCF1, align 4
  %263 = call i32 @Read_hfc(%struct.IsdnCardState* %261, i32 %262)
  %264 = call i32 @udelay(i32 1)
  br label %265

265:                                              ; preds = %275, %260
  %266 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %267 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  %272 = call i32 @bytein(i64 %271)
  %273 = and i32 %272, 1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %265

276:                                              ; preds = %265
  store i32 1, i32* %5, align 4
  br label %277

277:                                              ; preds = %276, %241, %173, %116, %97, %88, %41, %28, %23
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @fifo_select(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @Read_hfc(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bytein(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
