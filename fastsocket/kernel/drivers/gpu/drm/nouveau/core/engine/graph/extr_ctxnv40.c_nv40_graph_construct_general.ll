; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv40.c_nv40_graph_construct_general.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv40.c_nv40_graph_construct_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv40_graph_construct_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_graph_construct_general(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %5 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %5, i32 0, i32 0
  %7 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  store %struct.nouveau_device* %7, %struct.nouveau_device** %3, align 8
  %8 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %9 = call i32 @cp_ctx(%struct.nouveau_grctx* %8, i32 4194468, i32 1)
  %10 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %11 = call i32 @gr_def(%struct.nouveau_grctx* %10, i32 4194468, i32 8)
  %12 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %13 = call i32 @cp_ctx(%struct.nouveau_grctx* %12, i32 4194628, i32 58)
  %14 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %15 = call i32 @gr_def(%struct.nouveau_grctx* %14, i32 4194628, i32 1)
  %16 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %17 = call i32 @cp_ctx(%struct.nouveau_grctx* %16, i32 4195092, i32 1)
  %18 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %19 = call i32 @gr_def(%struct.nouveau_grctx* %18, i32 4195092, i32 0)
  %20 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %21 = call i32 @cp_ctx(%struct.nouveau_grctx* %20, i32 4195328, i32 10)
  %22 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %23 = call i32 @cp_ctx(%struct.nouveau_grctx* %22, i32 4195456, i32 10)
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = call i32 @cp_ctx(%struct.nouveau_grctx* %24, i32 4195584, i32 19)
  %26 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %27 = call i32 @gr_def(%struct.nouveau_grctx* %26, i32 4195604, i32 262144)
  %28 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %29 = call i32 @gr_def(%struct.nouveau_grctx* %28, i32 4195620, i32 1431655765)
  %30 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %31 = call i32 @gr_def(%struct.nouveau_grctx* %30, i32 4195624, i32 1431655765)
  %32 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %33 = call i32 @gr_def(%struct.nouveau_grctx* %32, i32 4195628, i32 1431655765)
  %34 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %35 = call i32 @gr_def(%struct.nouveau_grctx* %34, i32 4195632, i32 1431655765)
  %36 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %37 = call i32 @cp_ctx(%struct.nouveau_grctx* %36, i32 4195680, i32 6)
  %38 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %39 = call i32 @gr_def(%struct.nouveau_grctx* %38, i32 4195688, i32 65535)
  %40 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %41 = call i32 @gr_def(%struct.nouveau_grctx* %40, i32 4195692, i32 65535)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = call i32 @cp_ctx(%struct.nouveau_grctx* %42, i32 4195708, i32 5)
  %44 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %45 = call i32 @cp_ctx(%struct.nouveau_grctx* %44, i32 4196112, i32 3)
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @gr_def(%struct.nouveau_grctx* %46, i32 4196112, i32 536936449)
  %48 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %49 = call i32 @gr_def(%struct.nouveau_grctx* %48, i32 4196116, i32 259256064)
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = call i32 @cp_ctx(%struct.nouveau_grctx* %50, i32 4196132, i32 1)
  %52 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %53 = call i32 @gr_def(%struct.nouveau_grctx* %52, i32 4196132, i32 33589281)
  %54 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %55 = call i32 @cp_ctx(%struct.nouveau_grctx* %54, i32 4196208, i32 3)
  %56 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 64
  br i1 %59, label %60, label %97

60:                                               ; preds = %1
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %62 = call i32 @cp_ctx(%struct.nouveau_grctx* %61, i32 4196372, i32 4)
  %63 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %64 = call i32 @cp_ctx(%struct.nouveau_grctx* %63, i32 4196392, i32 5)
  %65 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %66 = call i32 @cp_ctx(%struct.nouveau_grctx* %65, i32 4196416, i32 5)
  %67 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %68 = call i32 @gr_def(%struct.nouveau_grctx* %67, i32 4196432, i32 64)
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @cp_ctx(%struct.nouveau_grctx* %69, i32 4196440, i32 4)
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = call i32 @gr_def(%struct.nouveau_grctx* %71, i32 4196440, i32 64)
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @gr_def(%struct.nouveau_grctx* %73, i32 4196444, i32 64)
  %75 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %76 = call i32 @gr_def(%struct.nouveau_grctx* %75, i32 4196452, i32 -2147483648)
  %77 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %78 = call i32 @cp_ctx(%struct.nouveau_grctx* %77, i32 4196460, i32 9)
  %79 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %80 = call i32 @gr_def(%struct.nouveau_grctx* %79, i32 4196460, i32 -2147483648)
  %81 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %82 = call i32 @gr_def(%struct.nouveau_grctx* %81, i32 4196464, i32 -2147483648)
  %83 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %84 = call i32 @gr_def(%struct.nouveau_grctx* %83, i32 4196468, i32 -2147483648)
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @gr_def(%struct.nouveau_grctx* %85, i32 4196472, i32 -2147483648)
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @gr_def(%struct.nouveau_grctx* %87, i32 4196488, i32 64)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @gr_def(%struct.nouveau_grctx* %89, i32 4196492, i32 -2147483648)
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @cp_ctx(%struct.nouveau_grctx* %91, i32 4196800, i32 8)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @gr_def(%struct.nouveau_grctx* %93, i32 4196812, i32 -2147483648)
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @gr_def(%struct.nouveau_grctx* %95, i32 4196828, i32 -2147483648)
  br label %168

97:                                               ; preds = %1
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = call i32 @cp_ctx(%struct.nouveau_grctx* %98, i32 4196416, i32 20)
  %100 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %101 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %100, i32 0, i32 0
  %102 = load %struct.nouveau_device*, %struct.nouveau_device** %101, align 8
  %103 = call i64 @nv44_graph_class(%struct.nouveau_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %115, %105
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 4196448, %112
  %114 = call i32 @gr_def(%struct.nouveau_grctx* %110, i32 %113, i32 1)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %106

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %121 = call i32 @gr_def(%struct.nouveau_grctx* %120, i32 4196480, i32 64)
  %122 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %123 = call i32 @gr_def(%struct.nouveau_grctx* %122, i32 4196484, i32 64)
  %124 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %125 = call i32 @gr_def(%struct.nouveau_grctx* %124, i32 4196488, i32 64)
  %126 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %127 = call i32 @cp_ctx(%struct.nouveau_grctx* %126, i32 4196500, i32 11)
  %128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %129 = call i32 @gr_def(%struct.nouveau_grctx* %128, i32 4196500, i32 64)
  %130 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %131 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %130, i32 0, i32 0
  %132 = load %struct.nouveau_device*, %struct.nouveau_device** %131, align 8
  %133 = call i64 @nv44_graph_class(%struct.nouveau_device* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %145, %135
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = mul nsw i32 %141, 4
  %143 = add nsw i32 4196512, %142
  %144 = call i32 @gr_def(%struct.nouveau_grctx* %140, i32 %143, i32 -2147483648)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %136

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148, %119
  %150 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %151 = call i32 @cp_ctx(%struct.nouveau_grctx* %150, i32 4196576, i32 2)
  %152 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %153 = call i32 @cp_ctx(%struct.nouveau_grctx* %152, i32 4196600, i32 2)
  %154 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %155 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 76
  br i1 %157, label %164, label %158

158:                                              ; preds = %149
  %159 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %160 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 240
  %163 = icmp eq i32 %162, 96
  br i1 %163, label %164, label %167

164:                                              ; preds = %158, %149
  %165 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %166 = call i32 @cp_ctx(%struct.nouveau_grctx* %165, i32 4196856, i32 1)
  br label %167

167:                                              ; preds = %164, %158
  br label %168

168:                                              ; preds = %167, %60
  %169 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %170 = call i32 @cp_ctx(%struct.nouveau_grctx* %169, i32 4196864, i32 73)
  %171 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %172 = call i32 @gr_def(%struct.nouveau_grctx* %171, i32 4197132, i32 185273100)
  %173 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %174 = call i32 @cp_ctx(%struct.nouveau_grctx* %173, i32 4198400, i32 4)
  %175 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %176 = call i32 @cp_ctx(%struct.nouveau_grctx* %175, i32 4214788, i32 1)
  %177 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %178 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  switch i32 %179, label %185 [
    i32 71, label %180
    i32 73, label %180
    i32 75, label %180
  ]

180:                                              ; preds = %168, %168, %168
  %181 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %182 = call i32 @cp_ctx(%struct.nouveau_grctx* %181, i32 4207688, i32 1)
  %183 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %184 = call i32 @gr_def(%struct.nouveau_grctx* %183, i32 4207688, i32 4112)
  br label %202

185:                                              ; preds = %168
  %186 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %187 = call i32 @cp_ctx(%struct.nouveau_grctx* %186, i32 4207680, i32 1)
  %188 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %189 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %198 [
    i32 64, label %191
    i32 68, label %194
    i32 70, label %194
    i32 74, label %194
    i32 65, label %197
    i32 66, label %197
    i32 67, label %197
    i32 76, label %197
    i32 78, label %197
    i32 103, label %197
  ]

191:                                              ; preds = %185
  %192 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %193 = call i32 @gr_def(%struct.nouveau_grctx* %192, i32 4207680, i32 16)
  br label %201

194:                                              ; preds = %185, %185, %185
  %195 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %196 = call i32 @gr_def(%struct.nouveau_grctx* %195, i32 4207680, i32 12304)
  br label %201

197:                                              ; preds = %185, %185, %185, %185, %185, %185
  br label %198

198:                                              ; preds = %185, %197
  %199 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %200 = call i32 @gr_def(%struct.nouveau_grctx* %199, i32 4207680, i32 4112)
  br label %201

201:                                              ; preds = %198, %194, %191
  br label %202

202:                                              ; preds = %201, %180
  ret void
}

declare dso_local i32 @cp_ctx(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @gr_def(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i64 @nv44_graph_class(%struct.nouveau_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
