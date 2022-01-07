; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i64, i32, i32 }
%struct.nvc0_grctx = type { i32, %struct.nouveau_gpuobj*, i64, %struct.nvc0_graph_priv*, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nouveau_object = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate channel memory, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"load_ctx timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HUB_SET_CHAN timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_grctx_init(%struct.nvc0_graph_priv* %0, %struct.nvc0_grctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvc0_graph_priv*, align 8
  %5 = alloca %struct.nvc0_grctx*, align 8
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_gpuobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %4, align 8
  store %struct.nvc0_grctx* %1, %struct.nvc0_grctx** %5, align 8
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %14 = call %struct.nouveau_bar* @nouveau_bar(%struct.nvc0_graph_priv* %13)
  store %struct.nouveau_bar* %14, %struct.nouveau_bar** %6, align 8
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %16 = call %struct.nouveau_object* @nv_object(%struct.nvc0_graph_priv* %15)
  store %struct.nouveau_object* %16, %struct.nouveau_object** %7, align 8
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %18 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 524288, %19
  %21 = add nsw i32 %20, 4095
  %22 = and i32 %21, -4096
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %26 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %27 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %26, i32 0, i32 1
  %28 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %23, i32* null, i32 %24, i32 4096, i32 %25, %struct.nouveau_gpuobj** %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %30 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %29, i32 0, i32 1
  %31 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %30, align 8
  store %struct.nouveau_gpuobj* %31, %struct.nouveau_gpuobj** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %202

39:                                               ; preds = %2
  %40 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %41 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %42 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 4096
  %45 = call i32 @lower_32_bits(i32 %44)
  %46 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %40, i32 512, i32 %45)
  %47 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %48 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %49 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 4096
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %47, i32 516, i32 %52)
  %54 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %55 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %54, i32 520, i32 -1)
  %56 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %57 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %56, i32 524, i32 255)
  %58 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %59 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %58, i32 4096, i32 0)
  %60 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %61 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %62 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 8192
  %65 = ashr i32 %64, 8
  %66 = or i32 1, %65
  %67 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %60, i32 4100, i32 %66)
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %96, %39
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %70, 4096
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %75 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 4096
  %79 = add nsw i32 %76, %78
  %80 = ashr i32 %79, 8
  %81 = or i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 8
  %85 = add nsw i32 8192, %84
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %82, i32 %85, i32 %87)
  %89 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %90, 8
  %92 = add nsw i32 8196, %91
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @upper_32_bits(i32 %93)
  %95 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %89, i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %68

99:                                               ; preds = %68
  %100 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %101 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %100, i32 528, i32 524292)
  %102 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %103 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %102, i32 532, i32 0)
  %104 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %105 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %104, i32 0, i32 0
  %106 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %105, align 8
  %107 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %108 = call i32 %106(%struct.nouveau_bar* %107)
  %109 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %110 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %111 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 4096
  %114 = ashr i32 %113, 8
  %115 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %109, i32 1051832, i32 %114)
  %116 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %117 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %116, i32 1051836, i32 -2147483647)
  %118 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %119 = call i32 @nv_wait(%struct.nvc0_graph_priv* %118, i32 1051776, i32 32768, i32 32768)
  %120 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %121 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %124 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %126 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %129 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %130, 8
  %132 = add nsw i32 8192, %131
  %133 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %134 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %136 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %137 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %136, i32 0, i32 3
  store %struct.nvc0_graph_priv* %135, %struct.nvc0_graph_priv** %137, align 8
  %138 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %139 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %141 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %99
  %145 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %146 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %145, i32 4233280, i32 48)
  %147 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %148 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %149 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 12
  %152 = or i32 -2147483648, %151
  %153 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %147, i32 4232448, i32 %152)
  %154 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %155 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %154, i32 4232452, i32 3)
  %156 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %157 = call i32 @nv_wait(%struct.nvc0_graph_priv* %156, i32 4233216, i32 16, i32 16)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %144
  %160 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %161 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %144
  %163 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %164 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %163, i32 524316, i32 1)
  %165 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %166 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %165, i32 524320, i32 0)
  %167 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %168 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %167, i32 524328, i32 0)
  %169 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %170 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %169, i32 524332, i32 0)
  %171 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %172 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %171, i32 0, i32 0
  %173 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %172, align 8
  %174 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %175 = call i32 %173(%struct.nouveau_bar* %174)
  store i32 0, i32* %3, align 4
  br label %202

176:                                              ; preds = %99
  %177 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %178 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %177, i32 4233280, i32 -2147483648)
  %179 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %180 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %181 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 12
  %184 = or i32 -2147483648, %183
  %185 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %179, i32 4232448, i32 %184)
  %186 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %187 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %186, i32 4232452, i32 1)
  %188 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %189 = call i32 @nv_wait(%struct.nvc0_graph_priv* %188, i32 4233216, i32 -2147483648, i32 -2147483648)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %176
  %192 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %193 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %194 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %195 = call i32 @nvc0_graph_ctxctl_debug(%struct.nvc0_graph_priv* %194)
  %196 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %197 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %196, i32 0, i32 1
  %198 = call i32 @nouveau_gpuobj_ref(i32* null, %struct.nouveau_gpuobj** %197)
  %199 = load i32, i32* @EBUSY, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %202

201:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %191, %162, %34
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nvc0_graph_priv*) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, ...) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nvc0_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nvc0_graph_ctxctl_debug(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, %struct.nouveau_gpuobj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
