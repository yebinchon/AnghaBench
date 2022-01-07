; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...)\0A\00", align 1
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...) err=%d ret=1\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...) err=%d ret=2\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...) err=%d ret=3\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...) err=%d ret=4\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_cmdtest(...) ret=0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci171x_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci171x_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @TRIG_NOW, align 4
  %17 = load i32, i32* @TRIG_EXT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @TRIG_FOLLOW, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %36
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @TRIG_TIMER, align 4
  %63 = load i32, i32* @TRIG_EXT, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %58
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @TRIG_COUNT, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @TRIG_COUNT, align 4
  %109 = load i32, i32* @TRIG_NONE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119, %104
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  store i32 1, i32* %4, align 4
  br label %412

134:                                              ; preds = %128
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TRIG_NOW, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TRIG_EXT, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32, i32* @TRIG_NOW, align 4
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %146, %140, %134
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TRIG_FOLLOW, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load i32, i32* @TRIG_FOLLOW, align 4
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %158, %152
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TRIG_TIMER, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TRIG_EXT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %176, %170, %164
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TRIG_COUNT, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @TRIG_COUNT, align 4
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %185, %179
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @TRIG_NONE, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @TRIG_COUNT, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %203, %197, %191
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  store i32 2, i32* %4, align 4
  br label %412

212:                                              ; preds = %206
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 6
  store i64 0, i64* %229, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @TRIG_TIMER, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %255

238:                                              ; preds = %232
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %238
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 7
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %246, %238
  br label %266

255:                                              ; preds = %232
  %256 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %257 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %262 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %261, i32 0, i32 7
  store i32 0, i32* %262, align 8
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %265

265:                                              ; preds = %260, %255
  br label %266

266:                                              ; preds = %265, %254
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %272, i32 0, i32 8
  store i32 1, i32* %273, align 4
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %278 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %279, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %276
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 8
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %284, %276
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %295, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %292
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 9
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %8, align 4
  br label %308

308:                                              ; preds = %300, %292
  %309 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @TRIG_COUNT, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %308
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 10
  store i32 1, i32* %321, align 4
  %322 = load i32, i32* %8, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %8, align 4
  br label %324

324:                                              ; preds = %319, %314
  br label %336

325:                                              ; preds = %308
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %332 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %331, i32 0, i32 10
  store i32 0, i32* %332, align 4
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %330, %325
  br label %336

336:                                              ; preds = %335, %324
  %337 = load i32, i32* %8, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i32, i32* %8, align 4
  %341 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %340)
  store i32 3, i32* %4, align 4
  br label %412

342:                                              ; preds = %336
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @TRIG_TIMER, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %386

348:                                              ; preds = %342
  %349 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %9, align 4
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %356 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %355, i32 0, i32 7
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 11
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %361 = and i32 %359, %360
  %362 = call i32 @i8253_cascade_ns_to_timer(i32 %354, i32* %10, i32* %11, i32* %356, i32 %361)
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %365, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %348
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %375 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %374, i32 0, i32 7
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %370, %348
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %379 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %377, %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %385

385:                                              ; preds = %382, %376
  br label %386

386:                                              ; preds = %385, %342
  %387 = load i32, i32* %8, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* %8, align 4
  %391 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %390)
  store i32 4, i32* %4, align 4
  br label %412

392:                                              ; preds = %386
  %393 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %394 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %393, i32 0, i32 12
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %392
  %398 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %399 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 12
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %404 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %403, i32 0, i32 8
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @check_channel_list(%struct.comedi_device* %398, %struct.comedi_subdevice* %399, i64 %402, i32 %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %397
  store i32 5, i32* %4, align 4
  br label %412

409:                                              ; preds = %397
  br label %410

410:                                              ; preds = %409, %392
  %411 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %412

412:                                              ; preds = %410, %408, %389, %339, %209, %131
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
