; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dt3k_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @TRIG_NOW, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TRIG_TIMER, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %31
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @TRIG_TIMER, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %53
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @TRIG_COUNT, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %75
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @TRIG_COUNT, align 4
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %97
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110, %97
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 1, i32* %4, align 4
  br label %344

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 2, i32* %4, align 4
  br label %344

127:                                              ; preds = %123
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TRIG_TIMER, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %170

143:                                              ; preds = %137
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %151, %143
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = icmp sgt i32 %162, 104856000
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 6
  store i32 104856000, i32* %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %164, %159
  br label %171

170:                                              ; preds = %137
  br label %171

171:                                              ; preds = %170, %169
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @TRIG_TIMER, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %171
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %185, %177
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 52428000
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 7
  store i32 52428000, i32* %200, align 4
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %198, %193
  br label %205

204:                                              ; preds = %171
  br label %205

205:                                              ; preds = %204, %203
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %205
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %213, %205
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @TRIG_COUNT, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = icmp sgt i32 %230, 16777215
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 10
  store i32 16777215, i32* %234, align 8
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %232, %227
  br label %249

238:                                              ; preds = %221
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 10
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 10
  store i32 0, i32* %245, align 8
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %243, %238
  br label %249

249:                                              ; preds = %248, %237
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 3, i32* %4, align 4
  br label %344

253:                                              ; preds = %249
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @TRIG_TIMER, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %280

259:                                              ; preds = %253
  %260 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %261 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %9, align 4
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 6
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 11
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %269 = and i32 %267, %268
  %270 = call i32 @dt3k_ns_to_timer(i32 100, i32* %264, i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %259
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %276, %259
  br label %281

280:                                              ; preds = %253
  br label %281

281:                                              ; preds = %280, %279
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @TRIG_TIMER, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %338

287:                                              ; preds = %281
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %9, align 4
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 7
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %297 = and i32 %295, %296
  %298 = call i32 @dt3k_ns_to_timer(i32 50, i32* %292, i32 %297)
  %299 = load i32, i32* %9, align 4
  %300 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %301 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %299, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %287
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %307

307:                                              ; preds = %304, %287
  %308 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %309 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @TRIG_TIMER, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %337

313:                                              ; preds = %307
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %318 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 %319, %322
  %324 = icmp slt i32 %316, %323
  br i1 %324, label %325, label %337

325:                                              ; preds = %313
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = mul nsw i32 %328, %331
  %333 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %334 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %333, i32 0, i32 6
  store i32 %332, i32* %334, align 8
  %335 = load i32, i32* %8, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %8, align 4
  br label %337

337:                                              ; preds = %325, %313, %307
  br label %339

338:                                              ; preds = %281
  br label %339

339:                                              ; preds = %338, %337
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  store i32 4, i32* %4, align 4
  br label %344

343:                                              ; preds = %339
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %343, %342, %252, %126, %122
  %345 = load i32, i32* %4, align 4
  ret i32 %345
}

declare dso_local i32 @dt3k_ns_to_timer(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
