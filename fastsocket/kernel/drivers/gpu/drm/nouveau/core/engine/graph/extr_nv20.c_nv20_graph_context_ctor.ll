; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv20_graph_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv20_graph_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv20_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
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
  %21 = call i32 @nouveau_graph_context_create(%struct.nouveau_object* %17, %struct.nouveau_object* %18, %struct.nouveau_oclass* %19, i32* null, i32 14320, i32 16, i32 %20, %struct.nv20_graph_chan** %14)
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
  br label %188

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
  %42 = call i32 @nv_wo32(%struct.nv20_graph_chan* %36, i32 0, i32 %41)
  %43 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %44 = call i32 @nv_wo32(%struct.nv20_graph_chan* %43, i32 828, i32 -65536)
  %45 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %46 = call i32 @nv_wo32(%struct.nv20_graph_chan* %45, i32 928, i32 268369920)
  %47 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %48 = call i32 @nv_wo32(%struct.nv20_graph_chan* %47, i32 932, i32 268369920)
  %49 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %50 = call i32 @nv_wo32(%struct.nv20_graph_chan* %49, i32 1148, i32 257)
  %51 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %52 = call i32 @nv_wo32(%struct.nv20_graph_chan* %51, i32 1168, i32 273)
  %53 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %54 = call i32 @nv_wo32(%struct.nv20_graph_chan* %53, i32 1192, i32 1145044992)
  store i32 1236, i32* %16, align 4
  br label %55

55:                                               ; preds = %62, %29
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 1248
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @nv_wo32(%struct.nv20_graph_chan* %59, i32 %60, i32 197379)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %16, align 4
  br label %55

65:                                               ; preds = %55
  store i32 1268, i32* %16, align 4
  br label %66

66:                                               ; preds = %73, %65
  %67 = load i32, i32* %16, align 4
  %68 = icmp sle i32 %67, 1280
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @nv_wo32(%struct.nv20_graph_chan* %70, i32 %71, i32 524288)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %16, align 4
  br label %66

76:                                               ; preds = %66
  store i32 1292, i32* %16, align 4
  br label %77

77:                                               ; preds = %84, %76
  %78 = load i32, i32* %16, align 4
  %79 = icmp sle i32 %78, 1304
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @nv_wo32(%struct.nv20_graph_chan* %81, i32 %82, i32 16850944)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %16, align 4
  br label %77

87:                                               ; preds = %77
  store i32 1308, i32* %16, align 4
  br label %88

88:                                               ; preds = %95, %87
  %89 = load i32, i32* %16, align 4
  %90 = icmp sle i32 %89, 1320
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @nv_wo32(%struct.nv20_graph_chan* %92, i32 %93, i32 67000)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 4
  store i32 %97, i32* %16, align 4
  br label %88

98:                                               ; preds = %88
  store i32 1324, i32* %16, align 4
  br label %99

99:                                               ; preds = %106, %98
  %100 = load i32, i32* %16, align 4
  %101 = icmp sle i32 %100, 1336
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @nv_wo32(%struct.nv20_graph_chan* %103, i32 %104, i32 524296)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %16, align 4
  br label %99

109:                                              ; preds = %99
  store i32 1372, i32* %16, align 4
  br label %110

110:                                              ; preds = %117, %109
  %111 = load i32, i32* %16, align 4
  %112 = icmp sle i32 %111, 1432
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @nv_wo32(%struct.nv20_graph_chan* %114, i32 %115, i32 134152192)
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %16, align 4
  br label %110

120:                                              ; preds = %110
  %121 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %122 = call i32 @nv_wo32(%struct.nv20_graph_chan* %121, i32 1444, i32 1266679807)
  %123 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %124 = call i32 @nv_wo32(%struct.nv20_graph_chan* %123, i32 1532, i32 1)
  %125 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %126 = call i32 @nv_wo32(%struct.nv20_graph_chan* %125, i32 1540, i32 16384)
  %127 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %128 = call i32 @nv_wo32(%struct.nv20_graph_chan* %127, i32 1552, i32 1)
  %129 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %130 = call i32 @nv_wo32(%struct.nv20_graph_chan* %129, i32 1560, i32 262144)
  %131 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %132 = call i32 @nv_wo32(%struct.nv20_graph_chan* %131, i32 1564, i32 65536)
  store i32 7196, i32* %16, align 4
  br label %133

133:                                              ; preds = %149, %120
  %134 = load i32, i32* %16, align 4
  %135 = icmp sle i32 %134, 9356
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 0
  %140 = call i32 @nv_wo32(%struct.nv20_graph_chan* %137, i32 %139, i32 275779577)
  %141 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 4
  %144 = call i32 @nv_wo32(%struct.nv20_graph_chan* %141, i32 %143, i32 70649964)
  %145 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 8
  %148 = call i32 @nv_wo32(%struct.nv20_graph_chan* %145, i32 %147, i32 786459)
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 16
  store i32 %151, i32* %16, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %154 = call i32 @nv_wo32(%struct.nv20_graph_chan* %153, i32 10268, i32 1065353216)
  %155 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %156 = call i32 @nv_wo32(%struct.nv20_graph_chan* %155, i32 10288, i32 1065353216)
  %157 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %158 = call i32 @nv_wo32(%struct.nv20_graph_chan* %157, i32 10332, i32 1073741824)
  %159 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %160 = call i32 @nv_wo32(%struct.nv20_graph_chan* %159, i32 10336, i32 1065353216)
  %161 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %162 = call i32 @nv_wo32(%struct.nv20_graph_chan* %161, i32 10340, i32 1056964608)
  %163 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %164 = call i32 @nv_wo32(%struct.nv20_graph_chan* %163, i32 10348, i32 1073741824)
  %165 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %166 = call i32 @nv_wo32(%struct.nv20_graph_chan* %165, i32 10352, i32 1065353216)
  %167 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %168 = call i32 @nv_wo32(%struct.nv20_graph_chan* %167, i32 10360, i32 -1082130432)
  %169 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %170 = call i32 @nv_wo32(%struct.nv20_graph_chan* %169, i32 10368, i32 -1082130432)
  %171 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %172 = call i32 @nv_wo32(%struct.nv20_graph_chan* %171, i32 13476, i32 1040384)
  %173 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %174 = call i32 @nv_wo32(%struct.nv20_graph_chan* %173, i32 13616, i32 1016)
  %175 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %176 = call i32 @nv_wo32(%struct.nv20_graph_chan* %175, i32 13632, i32 3137536)
  store i32 13660, i32* %16, align 4
  br label %177

177:                                              ; preds = %184, %152
  %178 = load i32, i32* %16, align 4
  %179 = icmp sle i32 %178, 13688
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %14, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @nv_wo32(%struct.nv20_graph_chan* %181, i32 %182, i32 1856124)
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 4
  store i32 %186, i32* %16, align 4
  br label %177

187:                                              ; preds = %177
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %187, %27
  %189 = load i32, i32* %7, align 4
  ret i32 %189
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
