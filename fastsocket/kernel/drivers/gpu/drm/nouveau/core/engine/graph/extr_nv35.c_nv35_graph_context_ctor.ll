; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv35.c_nv35_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv35.c_nv35_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv20_graph_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv35_graph_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv35_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv20_graph_chan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %19 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %20 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %21 = call i32 @nouveau_graph_context_create(%struct.nouveau_object* %17, %struct.nouveau_object* %18, %struct.nouveau_oclass* %19, i32* null, i32 22396, i32 16, i32 %20, %struct.nv20_graph_chan** %14)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %23 = call %struct.nouveau_object* @nv_object(%struct.nv20_graph_chan* %22)
  %24 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %23, %struct.nouveau_object** %24, align 8
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %7, align 4
  br label %218

29:                                               ; preds = %6
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %31 = call %struct.TYPE_2__* @nouveau_fifo_chan(%struct.nouveau_object* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %35 = getelementptr inbounds %struct.nv20_graph_chan, %struct.nv20_graph_chan* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %37 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %38 = getelementptr inbounds %struct.nv20_graph_chan, %struct.nv20_graph_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 24
  %41 = or i32 1, %40
  %42 = call i32 @nv_wo32(%struct.nv20_graph_chan* %36, i32 40, i32 %41)
  %43 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %44 = call i32 @nv_wo32(%struct.nv20_graph_chan* %43, i32 1036, i32 257)
  %45 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %46 = call i32 @nv_wo32(%struct.nv20_graph_chan* %45, i32 1056, i32 273)
  %47 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %48 = call i32 @nv_wo32(%struct.nv20_graph_chan* %47, i32 1060, i32 96)
  %49 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %50 = call i32 @nv_wo32(%struct.nv20_graph_chan* %49, i32 1088, i32 128)
  %51 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %52 = call i32 @nv_wo32(%struct.nv20_graph_chan* %51, i32 1092, i32 -65536)
  %53 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %54 = call i32 @nv_wo32(%struct.nv20_graph_chan* %53, i32 1096, i32 1)
  %55 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %56 = call i32 @nv_wo32(%struct.nv20_graph_chan* %55, i32 1116, i32 1145044992)
  %57 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %58 = call i32 @nv_wo32(%struct.nv20_graph_chan* %57, i32 1160, i32 -65536)
  store i32 1244, i32* %16, align 4
  br label %59

59:                                               ; preds = %66, %29
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 1252
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @nv_wo32(%struct.nv20_graph_chan* %63, i32 %64, i32 268369920)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 4
  store i32 %68, i32* %16, align 4
  br label %59

69:                                               ; preds = %59
  %70 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %71 = call i32 @nv_wo32(%struct.nv20_graph_chan* %70, i32 1256, i32 69888)
  store i32 1284, i32* %16, align 4
  br label %72

72:                                               ; preds = %79, %69
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 1348
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @nv_wo32(%struct.nv20_graph_chan* %76, i32 %77, i32 134152192)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %16, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %84 = call i32 @nv_wo32(%struct.nv20_graph_chan* %83, i32 1356, i32 1266679807)
  %85 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %86 = call i32 @nv_wo32(%struct.nv20_graph_chan* %85, i32 1416, i32 128)
  %87 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %88 = call i32 @nv_wo32(%struct.nv20_graph_chan* %87, i32 1420, i32 807407616)
  %89 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %90 = call i32 @nv_wo32(%struct.nv20_graph_chan* %89, i32 1424, i32 1885360192)
  %91 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %92 = call i32 @nv_wo32(%struct.nv20_graph_chan* %91, i32 1428, i32 -1196910456)
  %93 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %94 = call i32 @nv_wo32(%struct.nv20_graph_chan* %93, i32 1432, i32 -118957880)
  %95 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %96 = call i32 @nv_wo32(%struct.nv20_graph_chan* %95, i32 1452, i32 -1342177280)
  store i32 1540, i32* %16, align 4
  br label %97

97:                                               ; preds = %104, %82
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 1604
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @nv_wo32(%struct.nv20_graph_chan* %101, i32 %102, i32 66952)
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %16, align 4
  br label %97

107:                                              ; preds = %97
  store i32 1604, i32* %16, align 4
  br label %108

108:                                              ; preds = %115, %107
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %109, 1668
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @nv_wo32(%struct.nv20_graph_chan* %112, i32 %113, i32 197379)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %16, align 4
  br label %108

118:                                              ; preds = %108
  store i32 1732, i32* %16, align 4
  br label %119

119:                                              ; preds = %126, %118
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 1796
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @nv_wo32(%struct.nv20_graph_chan* %123, i32 %124, i32 568036)
  br label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %16, align 4
  br label %119

129:                                              ; preds = %119
  store i32 1796, i32* %16, align 4
  br label %130

130:                                              ; preds = %137, %129
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %131, 1860
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @nv_wo32(%struct.nv20_graph_chan* %134, i32 %135, i32 16850944)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 4
  store i32 %139, i32* %16, align 4
  br label %130

140:                                              ; preds = %130
  store i32 1860, i32* %16, align 4
  br label %141

141:                                              ; preds = %148, %140
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 1924
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @nv_wo32(%struct.nv20_graph_chan* %145, i32 %146, i32 524296)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 4
  store i32 %150, i32* %16, align 4
  br label %141

151:                                              ; preds = %141
  %152 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %153 = call i32 @nv_wo32(%struct.nv20_graph_chan* %152, i32 2144, i32 262144)
  %154 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %155 = call i32 @nv_wo32(%struct.nv20_graph_chan* %154, i32 2148, i32 65536)
  store i32 2152, i32* %16, align 4
  br label %156

156:                                              ; preds = %163, %151
  %157 = load i32, i32* %16, align 4
  %158 = icmp slt i32 %157, 2168
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @nv_wo32(%struct.nv20_graph_chan* %160, i32 %161, i32 262148)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %16, align 4
  br label %156

166:                                              ; preds = %156
  store i32 7964, i32* %16, align 4
  br label %167

167:                                              ; preds = %183, %166
  %168 = load i32, i32* %16, align 4
  %169 = icmp sle i32 %168, 12428
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 0
  %174 = call i32 @nv_wo32(%struct.nv20_graph_chan* %171, i32 %173, i32 275779577)
  %175 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 4
  %178 = call i32 @nv_wo32(%struct.nv20_graph_chan* %175, i32 %177, i32 70649964)
  %179 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 8
  %182 = call i32 @nv_wo32(%struct.nv20_graph_chan* %179, i32 %181, i32 786459)
  br label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 16
  store i32 %185, i32* %16, align 4
  br label %167

186:                                              ; preds = %167
  store i32 12476, i32* %16, align 4
  br label %187

187:                                              ; preds = %194, %186
  %188 = load i32, i32* %16, align 4
  %189 = icmp slt i32 %188, 12492
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @nv_wo32(%struct.nv20_graph_chan* %191, i32 %192, i32 65535)
  br label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 4
  store i32 %196, i32* %16, align 4
  br label %187

197:                                              ; preds = %187
  %198 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %199 = call i32 @nv_wo32(%struct.nv20_graph_chan* %198, i32 13392, i32 1065353216)
  %200 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %201 = call i32 @nv_wo32(%struct.nv20_graph_chan* %200, i32 14348, i32 1065353216)
  %202 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %203 = call i32 @nv_wo32(%struct.nv20_graph_chan* %202, i32 14368, i32 1065353216)
  %204 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %205 = call i32 @nv_wo32(%struct.nv20_graph_chan* %204, i32 14412, i32 1073741824)
  %206 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %207 = call i32 @nv_wo32(%struct.nv20_graph_chan* %206, i32 14416, i32 1065353216)
  %208 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %209 = call i32 @nv_wo32(%struct.nv20_graph_chan* %208, i32 14420, i32 1056964608)
  %210 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %211 = call i32 @nv_wo32(%struct.nv20_graph_chan* %210, i32 14428, i32 1073741824)
  %212 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %213 = call i32 @nv_wo32(%struct.nv20_graph_chan* %212, i32 14432, i32 1065353216)
  %214 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %215 = call i32 @nv_wo32(%struct.nv20_graph_chan* %214, i32 14440, i32 -1082130432)
  %216 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %217 = call i32 @nv_wo32(%struct.nv20_graph_chan* %216, i32 14448, i32 -1082130432)
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %197, %27
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @nouveau_graph_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nv20_graph_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv20_graph_chan*) #1

declare dso_local %struct.TYPE_2__* @nouveau_fifo_chan(%struct.nouveau_object*) #1

declare dso_local i32 @nv_wo32(%struct.nv20_graph_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
