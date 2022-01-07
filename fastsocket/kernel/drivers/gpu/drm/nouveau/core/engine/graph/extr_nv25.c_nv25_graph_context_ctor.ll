; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv25.c_nv25_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv25.c_nv25_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv20_graph_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv25_graph_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv25_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
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
  %21 = call i32 @nouveau_graph_context_create(%struct.nouveau_object* %17, %struct.nouveau_object* %18, %struct.nouveau_oclass* %19, i32* null, i32 14116, i32 16, i32 %20, %struct.nv20_graph_chan** %14)
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
  br label %206

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
  %44 = call i32 @nv_wo32(%struct.nv20_graph_chan* %43, i32 860, i32 -65536)
  %45 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %46 = call i32 @nv_wo32(%struct.nv20_graph_chan* %45, i32 960, i32 268369920)
  %47 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %48 = call i32 @nv_wo32(%struct.nv20_graph_chan* %47, i32 964, i32 268369920)
  %49 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %50 = call i32 @nv_wo32(%struct.nv20_graph_chan* %49, i32 1180, i32 257)
  %51 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %52 = call i32 @nv_wo32(%struct.nv20_graph_chan* %51, i32 1200, i32 273)
  %53 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %54 = call i32 @nv_wo32(%struct.nv20_graph_chan* %53, i32 1224, i32 128)
  %55 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %56 = call i32 @nv_wo32(%struct.nv20_graph_chan* %55, i32 1228, i32 -65536)
  %57 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %58 = call i32 @nv_wo32(%struct.nv20_graph_chan* %57, i32 1232, i32 1)
  %59 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %60 = call i32 @nv_wo32(%struct.nv20_graph_chan* %59, i32 1252, i32 1145044992)
  %61 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %62 = call i32 @nv_wo32(%struct.nv20_graph_chan* %61, i32 1276, i32 1266679808)
  store i32 1296, i32* %16, align 4
  br label %63

63:                                               ; preds = %70, %29
  %64 = load i32, i32* %16, align 4
  %65 = icmp sle i32 %64, 1308
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @nv_wo32(%struct.nv20_graph_chan* %67, i32 %68, i32 197379)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %16, align 4
  br label %63

73:                                               ; preds = %63
  store i32 1328, i32* %16, align 4
  br label %74

74:                                               ; preds = %81, %73
  %75 = load i32, i32* %16, align 4
  %76 = icmp sle i32 %75, 1340
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @nv_wo32(%struct.nv20_graph_chan* %78, i32 %79, i32 524288)
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %16, align 4
  br label %74

84:                                               ; preds = %74
  store i32 1352, i32* %16, align 4
  br label %85

85:                                               ; preds = %92, %84
  %86 = load i32, i32* %16, align 4
  %87 = icmp sle i32 %86, 1364
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @nv_wo32(%struct.nv20_graph_chan* %89, i32 %90, i32 16850944)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %16, align 4
  br label %85

95:                                               ; preds = %85
  store i32 1368, i32* %16, align 4
  br label %96

96:                                               ; preds = %103, %95
  %97 = load i32, i32* %16, align 4
  %98 = icmp sle i32 %97, 1380
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @nv_wo32(%struct.nv20_graph_chan* %100, i32 %101, i32 67000)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %16, align 4
  br label %96

106:                                              ; preds = %96
  store i32 1384, i32* %16, align 4
  br label %107

107:                                              ; preds = %114, %106
  %108 = load i32, i32* %16, align 4
  %109 = icmp sle i32 %108, 1396
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @nv_wo32(%struct.nv20_graph_chan* %111, i32 %112, i32 524296)
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 4
  store i32 %116, i32* %16, align 4
  br label %107

117:                                              ; preds = %107
  store i32 1432, i32* %16, align 4
  br label %118

118:                                              ; preds = %125, %117
  %119 = load i32, i32* %16, align 4
  %120 = icmp sle i32 %119, 1492
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @nv_wo32(%struct.nv20_graph_chan* %122, i32 %123, i32 134152192)
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %16, align 4
  br label %118

128:                                              ; preds = %118
  %129 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %130 = call i32 @nv_wo32(%struct.nv20_graph_chan* %129, i32 1504, i32 1266679807)
  %131 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %132 = call i32 @nv_wo32(%struct.nv20_graph_chan* %131, i32 1568, i32 128)
  %133 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %134 = call i32 @nv_wo32(%struct.nv20_graph_chan* %133, i32 1572, i32 807407616)
  %135 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %136 = call i32 @nv_wo32(%struct.nv20_graph_chan* %135, i32 1576, i32 1885360192)
  %137 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %138 = call i32 @nv_wo32(%struct.nv20_graph_chan* %137, i32 1580, i32 -1331654528)
  %139 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %140 = call i32 @nv_wo32(%struct.nv20_graph_chan* %139, i32 1584, i32 -253701952)
  %141 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %142 = call i32 @nv_wo32(%struct.nv20_graph_chan* %141, i32 1636, i32 1)
  %143 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %144 = call i32 @nv_wo32(%struct.nv20_graph_chan* %143, i32 1644, i32 16384)
  %145 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %146 = call i32 @nv_wo32(%struct.nv20_graph_chan* %145, i32 1656, i32 1)
  %147 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %148 = call i32 @nv_wo32(%struct.nv20_graph_chan* %147, i32 1664, i32 262144)
  %149 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %150 = call i32 @nv_wo32(%struct.nv20_graph_chan* %149, i32 1668, i32 65536)
  store i32 6916, i32* %16, align 4
  br label %151

151:                                              ; preds = %167, %128
  %152 = load i32, i32* %16, align 4
  %153 = icmp sle i32 %152, 9076
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 0
  %158 = call i32 @nv_wo32(%struct.nv20_graph_chan* %155, i32 %157, i32 275779577)
  %159 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 4
  %162 = call i32 @nv_wo32(%struct.nv20_graph_chan* %159, i32 %161, i32 70649964)
  %163 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 8
  %166 = call i32 @nv_wo32(%struct.nv20_graph_chan* %163, i32 %165, i32 786459)
  br label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 16
  store i32 %169, i32* %16, align 4
  br label %151

170:                                              ; preds = %151
  %171 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %172 = call i32 @nv_wo32(%struct.nv20_graph_chan* %171, i32 9988, i32 1065353216)
  %173 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %174 = call i32 @nv_wo32(%struct.nv20_graph_chan* %173, i32 10008, i32 1065353216)
  %175 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %176 = call i32 @nv_wo32(%struct.nv20_graph_chan* %175, i32 10052, i32 1073741824)
  %177 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %178 = call i32 @nv_wo32(%struct.nv20_graph_chan* %177, i32 10056, i32 1065353216)
  %179 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %180 = call i32 @nv_wo32(%struct.nv20_graph_chan* %179, i32 10060, i32 1056964608)
  %181 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %182 = call i32 @nv_wo32(%struct.nv20_graph_chan* %181, i32 10068, i32 1073741824)
  %183 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %184 = call i32 @nv_wo32(%struct.nv20_graph_chan* %183, i32 10072, i32 1065353216)
  %185 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %186 = call i32 @nv_wo32(%struct.nv20_graph_chan* %185, i32 10080, i32 -1082130432)
  %187 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %188 = call i32 @nv_wo32(%struct.nv20_graph_chan* %187, i32 10088, i32 -1082130432)
  %189 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %190 = call i32 @nv_wo32(%struct.nv20_graph_chan* %189, i32 12428, i32 1040384)
  %191 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %192 = call i32 @nv_wo32(%struct.nv20_graph_chan* %191, i32 12552, i32 1016)
  %193 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %194 = call i32 @nv_wo32(%struct.nv20_graph_chan* %193, i32 13416, i32 3137536)
  store i32 13444, i32* %16, align 4
  br label %195

195:                                              ; preds = %202, %170
  %196 = load i32, i32* %16, align 4
  %197 = icmp sle i32 %196, 13472
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @nv_wo32(%struct.nv20_graph_chan* %199, i32 %200, i32 1856124)
  br label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 4
  store i32 %204, i32* %16, align 4
  br label %195

205:                                              ; preds = %195
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %205, %27
  %207 = load i32, i32* %7, align 4
  ret i32 %207
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
