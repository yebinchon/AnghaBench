; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_intr_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_intr_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dio200_subdev_intr_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_intr_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %14 = load i32, i32* @TRIG_INT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @TRIG_EXT, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %33
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TRIG_NOW, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %55
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 129
  store i32 %84, i32* %82, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %77
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %9, align 4
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 129
  store i32 %105, i32* %103, align 8
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110, %98
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
  br label %260

123:                                              ; preds = %119
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub i32 %129, 1
  %131 = and i32 %126, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %133, %123
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub i32 %142, 1
  %144 = and i32 %139, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %136
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sub i32 %155, 1
  %157 = and i32 %152, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %149
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sub i32 %168, 1
  %170 = and i32 %165, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %162
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = sub i32 %181, 1
  %183 = and i32 %178, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %175
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 2, i32* %4, align 4
  br label %260

192:                                              ; preds = %188
  %193 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %194 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %204 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 6
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %207, %202
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 7
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 8
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %225, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %222
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 9
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 8
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %230, %222
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %254 [
    i32 129, label %242
    i32 128, label %243
  ]

242:                                              ; preds = %238
  br label %255

243:                                              ; preds = %238
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %250 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %249, i32 0, i32 10
  store i32 0, i32* %250, align 8
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %253

253:                                              ; preds = %248, %243
  br label %255

254:                                              ; preds = %238
  br label %255

255:                                              ; preds = %254, %253, %242
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 3, i32* %4, align 4
  br label %260

259:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %259, %258, %191, %122
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
