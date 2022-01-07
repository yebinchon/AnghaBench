; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_graph_priv = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_graph_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = bitcast %struct.nouveau_object* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv50_graph_priv*
  store %struct.nv50_graph_priv* %10, %struct.nv50_graph_priv** %4, align 8
  %11 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %12 = getelementptr inbounds %struct.nv50_graph_priv, %struct.nv50_graph_priv* %11, i32 0, i32 1
  %13 = call i32 @nouveau_graph_init(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %187

18:                                               ; preds = %1
  %19 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %20 = call i32 @nv_wr32(%struct.nv50_graph_priv* %19, i32 4194444, i32 4)
  %21 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %22 = call i32 @nv_wr32(%struct.nv50_graph_priv* %21, i32 4196356, i32 -1073741824)
  %23 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %24 = call i32 @nv_wr32(%struct.nv50_graph_priv* %23, i32 4220928, i32 -1073741824)
  %25 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %26 = call i32 @nv_wr32(%struct.nv50_graph_priv* %25, i32 4197380, i32 -1073741824)
  %27 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %28 = call i32 @nv_wr32(%struct.nv50_graph_priv* %27, i32 4200448, i32 -1073741824)
  %29 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %30 = call i32 @nv_wr32(%struct.nv50_graph_priv* %29, i32 4214808, i32 -1073741824)
  %31 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %32 = call i32 @nv_wr32(%struct.nv50_graph_priv* %31, i32 4202496, i32 -1073741824)
  %33 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %34 = call i32 @nv_rd32(%struct.nv50_graph_priv* %33, i32 5440)
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %84, %18
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %87

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %84

45:                                               ; preds = %38
  %46 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %47 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 160
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 12
  %55 = add nsw i32 4229376, %54
  %56 = call i32 @nv_wr32(%struct.nv50_graph_priv* %52, i32 %55, i32 -1073741824)
  %57 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 12
  %60 = add nsw i32 4230664, %59
  %61 = call i32 @nv_wr32(%struct.nv50_graph_priv* %57, i32 %60, i32 -1073741824)
  %62 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 12
  %65 = add nsw i32 4227860, %64
  %66 = call i32 @nv_wr32(%struct.nv50_graph_priv* %62, i32 %65, i32 -1073741824)
  br label %83

67:                                               ; preds = %45
  %68 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 11
  %71 = add nsw i32 4228608, %70
  %72 = call i32 @nv_wr32(%struct.nv50_graph_priv* %68, i32 %71, i32 -1073741824)
  %73 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 %74, 11
  %76 = add nsw i32 4228872, %75
  %77 = call i32 @nv_wr32(%struct.nv50_graph_priv* %73, i32 %76, i32 -1073741824)
  %78 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 11
  %81 = add nsw i32 4227868, %80
  %82 = call i32 @nv_wr32(%struct.nv50_graph_priv* %78, i32 %81, i32 -1073741824)
  br label %83

83:                                               ; preds = %67, %51
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %35

87:                                               ; preds = %35
  %88 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %89 = call i32 @nv_wr32(%struct.nv50_graph_priv* %88, i32 4194568, i32 -1)
  %90 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %91 = call i32 @nv_wr32(%struct.nv50_graph_priv* %90, i32 4194616, i32 -1)
  %92 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %93 = call i32 @nv_wr32(%struct.nv50_graph_priv* %92, i32 4194560, i32 -1)
  %94 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %95 = call i32 @nv_wr32(%struct.nv50_graph_priv* %94, i32 4194620, i32 -1)
  %96 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %97 = call i32 @nv_wr32(%struct.nv50_graph_priv* %96, i32 4195584, i32 65537)
  %98 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %99 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %98)
  %100 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %101 = getelementptr inbounds %struct.nv50_graph_priv, %struct.nv50_graph_priv* %100, i32 0, i32 0
  %102 = call i32 @nv50_grctx_init(%struct.TYPE_3__* %99, i32* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %187

107:                                              ; preds = %87
  %108 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %109 = call i32 @nv_wr32(%struct.nv50_graph_priv* %108, i32 4196388, i32 0)
  %110 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %111 = call i32 @nv_wr32(%struct.nv50_graph_priv* %110, i32 4196392, i32 0)
  %112 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %113 = call i32 @nv_wr32(%struct.nv50_graph_priv* %112, i32 4196396, i32 0)
  %114 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %115 = call i32 @nv_wr32(%struct.nv50_graph_priv* %114, i32 4196400, i32 0)
  %116 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %117 = call i32 @nv_wr32(%struct.nv50_graph_priv* %116, i32 4195116, i32 0)
  %118 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %119 = call i32 @nv_wr32(%struct.nv50_graph_priv* %118, i32 4195120, i32 0)
  %120 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %121 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %120)
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 240
  switch i32 %124, label %129 [
    i32 80, label %125
    i32 128, label %125
    i32 144, label %125
    i32 160, label %128
  ]

125:                                              ; preds = %107, %107, %107
  %126 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %127 = call i32 @nv_wr32(%struct.nv50_graph_priv* %126, i32 4205736, i32 2048)
  br label %158

128:                                              ; preds = %107
  br label %129

129:                                              ; preds = %107, %128
  %130 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %131 = call i32 @nv_wr32(%struct.nv50_graph_priv* %130, i32 4205760, i32 0)
  %132 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %133 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %132)
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 160
  br i1 %136, label %149, label %137

137:                                              ; preds = %129
  %138 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %139 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %138)
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 170
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %145 = call %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv* %144)
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 172
  br i1 %148, label %149, label %152

149:                                              ; preds = %143, %137, %129
  %150 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %151 = call i32 @nv_wr32(%struct.nv50_graph_priv* %150, i32 4205736, i32 2050)
  br label %157

152:                                              ; preds = %143
  %153 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %154 = call i32 @nv_wr32(%struct.nv50_graph_priv* %153, i32 4205760, i32 0)
  %155 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %156 = call i32 @nv_wr32(%struct.nv50_graph_priv* %155, i32 4205736, i32 2)
  br label %157

157:                                              ; preds = %152, %149
  br label %158

158:                                              ; preds = %157, %125
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %183, %158
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 8
  br i1 %161, label %162, label %186

162:                                              ; preds = %159
  %163 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 %164, 8
  %166 = add nsw i32 4205600, %165
  %167 = call i32 @nv_wr32(%struct.nv50_graph_priv* %163, i32 %166, i32 0)
  %168 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %169 = load i32, i32* %7, align 4
  %170 = mul nsw i32 %169, 8
  %171 = add nsw i32 4205604, %170
  %172 = call i32 @nv_wr32(%struct.nv50_graph_priv* %168, i32 %171, i32 0)
  %173 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = mul nsw i32 %174, 8
  %176 = add nsw i32 4205608, %175
  %177 = call i32 @nv_wr32(%struct.nv50_graph_priv* %173, i32 %176, i32 0)
  %178 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = mul nsw i32 %179, 8
  %181 = add nsw i32 4205612, %180
  %182 = call i32 @nv_wr32(%struct.nv50_graph_priv* %178, i32 %181, i32 0)
  br label %183

183:                                              ; preds = %162
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %159

186:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %105, %16
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local %struct.TYPE_3__* @nv_device(%struct.nv50_graph_priv*) #1

declare dso_local i32 @nv50_grctx_init(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
