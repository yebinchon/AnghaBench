; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@SLOWEST_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @atmio16d_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmio16d_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %35 = load i32, i32* @TRIG_FOLLOW, align 4
  %36 = load i32, i32* @TRIG_TIMER, align 4
  %37 = or i32 %35, %36
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

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %31
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TRIG_TIMER, align 4
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
  %81 = load i32, i32* @TRIG_COUNT, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %77
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @TRIG_COUNT, align 4
  %104 = load i32, i32* @TRIG_NONE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %99
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %4, align 4
  br label %244

127:                                              ; preds = %123
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TRIG_FOLLOW, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @TRIG_EXT, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TRIG_TIMER, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %145, %139, %133, %127
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TRIG_COUNT, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @TRIG_NONE, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %160, %154, %148
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 2, i32* %4, align 4
  br label %244

167:                                              ; preds = %163
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @TRIG_FOLLOW, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %188, %183
  br label %195

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %193
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 10000
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 7
  store i32 10000, i32* %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %200, %195
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 9
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %208, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %205
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 9
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 8
  store i64 %216, i64* %218, align 8
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
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %239

228:                                              ; preds = %221
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 10
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 10
  store i64 0, i64* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %233, %228
  br label %239

239:                                              ; preds = %238, %227
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 3, i32* %4, align 4
  br label %244

243:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %243, %242, %166, %126
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
