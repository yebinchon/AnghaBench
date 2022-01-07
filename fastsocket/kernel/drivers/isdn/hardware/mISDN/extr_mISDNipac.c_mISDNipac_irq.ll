; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNipac_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNipac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipac_hw = type { i32, i32, %struct.TYPE_2__*, %struct.isac_hw }
%struct.TYPE_2__ = type { i64 }
%struct.isac_hw = type { i32 }

@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@ISACX_ISTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s: ISTA %02x\0A\00", align 1
@IPACX__ICA = common dso_local global i32 0, align 4
@IPACX__ICB = common dso_local global i32 0, align 4
@ISACX__ICD = common dso_local global i32 0, align 4
@ISACX__CIC = common dso_local global i32 0, align 4
@IPAC_TYPE_IPAC = common dso_local global i32 0, align 4
@IPAC_ISTA = common dso_local global i64 0, align 8
@IPAC__ICD = common dso_local global i32 0, align 4
@IPAC__EXD = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: ISTAD %02x\0A\00", align 1
@IPAC_D_TIN2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s TIN2 irq\0A\00", align 1
@IPAC__ICA = common dso_local global i32 0, align 4
@IPAC__EXA = common dso_local global i32 0, align 4
@IPAC__ICB = common dso_local global i32 0, align 4
@IPAC__EXB = common dso_local global i32 0, align 4
@IPAC_TYPE_HSCX = common dso_local global i32 0, align 4
@IPAC_ISTAB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: B2 ISTA %02x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: %d irqloops cpu%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: %d IRQ LOOP cpu%d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDNipac_irq(%struct.ipac_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipac_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.isac_hw*, align 8
  store %struct.ipac_hw* %0, %struct.ipac_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %12, i32 0, i32 3
  store %struct.isac_hw* %13, %struct.isac_hw** %9, align 8
  %14 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %2
  %21 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %22 = load i64, i64* @ISACX_ISTA, align 8
  %23 = call i32 @ReadIPAC(%struct.ipac_hw* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %74, %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %78

33:                                               ; preds = %31
  %34 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IPACX__ICA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ipac_irq(%struct.TYPE_2__* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IPACX__ICB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 1
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ipac_irq(%struct.TYPE_2__* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ISACX__ICD, align 4
  %65 = load i32, i32* @ISACX__CIC, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %71 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %70, i32 0, i32 3
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mISDNisac_irq(%struct.isac_hw* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %76 = load i64, i64* @ISACX_ISTA, align 8
  %77 = call i32 @ReadIPAC(%struct.ipac_hw* %75, i64 %76)
  store i32 %77, i32* %7, align 4
  br label %24

78:                                               ; preds = %31
  br label %237

79:                                               ; preds = %2
  %80 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %174

86:                                               ; preds = %79
  %87 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %88 = load i64, i64* @IPAC_ISTA, align 8
  %89 = call i32 @ReadIPAC(%struct.ipac_hw* %87, i64 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %169, %86
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  %96 = icmp ne i32 %94, 0
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  br i1 %98, label %99, label %173

99:                                               ; preds = %97
  %100 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %101 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @IPAC__ICD, align 4
  %107 = load i32, i32* @IPAC__EXD, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %99
  %112 = load %struct.isac_hw*, %struct.isac_hw** %9, align 8
  %113 = load i32, i32* @ISAC_ISTA, align 4
  %114 = call i32 @ReadISAC(%struct.isac_hw* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @IPAC_D_TIN2, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %126 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %111
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @IPAC__EXD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.isac_hw*, %struct.isac_hw** %9, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @mISDNisac_irq(%struct.isac_hw* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %99
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @IPAC__ICA, align 4
  %144 = load i32, i32* @IPAC__EXA, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %150 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 0
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @ipac_irq(%struct.TYPE_2__* %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %141
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @IPAC__ICB, align 4
  %158 = load i32, i32* @IPAC__EXB, align 4
  %159 = or i32 %157, %158
  %160 = and i32 %156, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %163, i32 0, i32 2
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 1
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @ipac_irq(%struct.TYPE_2__* %166, i32 %167)
  br label %169

169:                                              ; preds = %162, %155
  %170 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %171 = load i64, i64* @IPAC_ISTA, align 8
  %172 = call i32 @ReadIPAC(%struct.ipac_hw* %170, i64 %171)
  store i32 %172, i32* %7, align 4
  br label %90

173:                                              ; preds = %97
  br label %236

174:                                              ; preds = %79
  %175 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %176 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IPAC_TYPE_HSCX, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %235

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %231, %181
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %234

185:                                              ; preds = %182
  %186 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %187 = load i64, i64* @IPAC_ISTAB, align 8
  %188 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %189 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %187, %193
  %195 = call i32 @ReadIPAC(%struct.ipac_hw* %186, i64 %194)
  store i32 %195, i32* %7, align 4
  %196 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %197 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %185
  %204 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %205 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %204, i32 0, i32 2
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 1
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @ipac_irq(%struct.TYPE_2__* %207, i32 %208)
  br label %210

210:                                              ; preds = %203, %185
  %211 = load %struct.isac_hw*, %struct.isac_hw** %9, align 8
  %212 = load i32, i32* @ISAC_ISTA, align 4
  %213 = call i32 @ReadISAC(%struct.isac_hw* %211, i32 %212)
  store i32 %213, i32* %8, align 4
  %214 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %215 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %210
  %222 = load %struct.isac_hw*, %struct.isac_hw** %9, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @mISDNisac_irq(%struct.isac_hw* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %210
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = or i32 %226, %227
  %229 = icmp eq i32 0, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %6, align 4
  br label %182

234:                                              ; preds = %230, %182
  br label %235

235:                                              ; preds = %234, %174
  br label %236

236:                                              ; preds = %235, %173
  br label %237

237:                                              ; preds = %236, %78
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = load i32, i32* @IRQ_NONE, align 4
  store i32 %242, i32* %3, align 4
  br label %271

243:                                              ; preds = %237
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %243
  %248 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %249 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %6, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i32 (...) @smp_processor_id()
  %255 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %250, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %247, %243
  %257 = load i32, i32* %5, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %259
  %263 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %264 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = call i32 (...) @smp_processor_id()
  %268 = call i32 @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %262, %259, %256
  %270 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %269, %241
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @ReadIPAC(%struct.ipac_hw*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ipac_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mISDNisac_irq(%struct.isac_hw*, i32) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
