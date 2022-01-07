; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_tp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_tp(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %4 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %5 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %9 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %8, i32 4298776, i32 0)
  %10 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %11 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %10, i32 4298812, i32 232391)
  %12 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %13 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %12, i32 4298824, i32 0)
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 193
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 217
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %1
  %20 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %21 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %20, i32 4298852, i32 297)
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %24 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %23, i32 4298852, i32 298)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %27 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %26, i32 4298888, i32 0)
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %29 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %28, i32 4299264, i32 496)
  %30 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %31 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %30, i32 4299268, i32 1)
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %33 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %32, i32 4299272, i32 35)
  %34 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %35 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %34, i32 4299276, i32 131072)
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %37 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %36, i32 4299280, i32 0)
  %38 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %39 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %38, i32 4299284, i32 512)
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %41 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %40, i32 4299292, i32 0)
  %42 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %43 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %42, i32 4299296, i32 2048)
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 217
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %48 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %47, i32 4299460, i32 1569856)
  br label %59

49:                                               ; preds = %25
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 192
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 200
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %57 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %56, i32 4299460, i32 521280)
  br label %58

58:                                               ; preds = %55, %52, %49
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %61 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %60, i32 4299520, i32 172066848)
  %62 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %63 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %62, i32 4299524, i32 102793446)
  %64 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %65 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %64, i32 4299528, i32 33790116)
  %66 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %67 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %66, i32 4299532, i32 241340514)
  %68 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %69 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %68, i32 4299536, i32 172066848)
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %71 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %70, i32 4299540, i32 230)
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %73 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %72, i32 4299728, i32 9437443)
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 193
  br i1 %75, label %79, label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %77, 217
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %59
  %80 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %81 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %80, i32 4299744, i32 4194305)
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %84 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %83, i32 4299744, i32 1)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %87 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %86, i32 4299748, i32 0)
  %88 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 217
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 2, i32 10
  %93 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %88, i32 4299776, i32 %92)
  %94 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %95 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %94, i32 4299780, i32 6)
  %96 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %97 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %96, i32 4299784, i32 2)
  %98 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %99 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %98, i32 4299808, i32 0)
  %100 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %101 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 217
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  %106 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %107 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %106, i32 4299812, i32 541200)
  %108 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %109 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %108, i32 4299816, i32 1022611260)
  %110 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %111 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %110, i32 4299952, i32 131144)
  br label %125

112:                                              ; preds = %85
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %113, 206
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %116, 207
  br i1 %117, label %118, label %121

118:                                              ; preds = %115, %112
  %119 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %120 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %119, i32 4299952, i32 131144)
  br label %124

121:                                              ; preds = %115
  %122 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %123 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %122, i32 4299952, i32 393288)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %105
  %126 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %127 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %126, i32 4300008, i32 0)
  %128 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %129 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %128, i32 4300020, i32 387)
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %130, 193
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 217
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %125
  %136 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %137 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %136, i32 4300064, i32 303562752)
  br label %141

138:                                              ; preds = %132
  %139 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %140 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %139, i32 4300064, i32 35127296)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %143 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %142, i32 4300068, i32 8191)
  %144 = load i32, i32* %3, align 4
  %145 = icmp eq i32 %144, 193
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 217
  br i1 %148, label %149, label %152

149:                                              ; preds = %146, %141
  %150 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %151 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %150, i32 4300100, i32 35127832)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %154 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %153, i32 4300292, i32 0)
  %155 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %156 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %155, i32 4300296, i32 0)
  %157 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %158 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %157, i32 4300300, i32 0)
  %159 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %160 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %159, i32 4300304, i32 2)
  %161 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %162 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %161, i32 4300356, i32 1830898)
  %163 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %164 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %163, i32 4300360, i32 0)
  %165 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %166 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %165, i32 4300364, i32 15)
  %167 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %168 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %167, i32 4300368, i32 0)
  %169 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %170 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %169, i32 4300372, i32 0)
  %171 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %172 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %171, i32 4300376, i32 0)
  %173 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %174 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %173, i32 4300380, i32 0)
  %175 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %176 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %175, i32 4300384, i32 0)
  %177 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %178 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %177, i32 4300388, i32 0)
  %179 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %180 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %179, i32 4300392, i32 0)
  %181 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %182 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %181, i32 4300396, i32 0)
  %183 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %184 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %183, i32 4300400, i32 0)
  %185 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %186 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %185, i32 4300404, i32 0)
  %187 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %188 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %187, i32 4300408, i32 0)
  %189 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %190 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %189, i32 4300412, i32 0)
  %191 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %192 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %191, i32 4300416, i32 0)
  %193 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %194 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %193, i32 4300420, i32 0)
  %195 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %196 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %195, i32 4300424, i32 0)
  %197 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %198 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %197, i32 4300428, i32 0)
  %199 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %200 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %199, i32 4300432, i32 0)
  %201 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %202 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %201, i32 4300440, i32 0)
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 192
  br i1 %204, label %205, label %211

205:                                              ; preds = %152
  %206 = load i32, i32* %3, align 4
  %207 = icmp ne i32 %206, 200
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %210 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %209, i32 4300512, i32 69904)
  br label %211

211:                                              ; preds = %208, %205, %152
  %212 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %213 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %212, i32 4300624, i32 0)
  %214 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %215 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %214, i32 4300628, i32 0)
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 192
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load i32, i32* %3, align 4
  %220 = icmp ne i32 %219, 200
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %223 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %222, i32 4300632, i32 0)
  br label %224

224:                                              ; preds = %221, %218, %211
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
