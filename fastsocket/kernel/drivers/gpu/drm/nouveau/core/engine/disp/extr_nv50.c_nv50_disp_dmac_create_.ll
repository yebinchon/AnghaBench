; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_dmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_dmac_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_oclass*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.nv50_disp_dmac*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %20 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %11, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i8**, i8*** %15, align 8
  %24 = call i32 @nv50_disp_chan_create_(%struct.nouveau_object* %18, %struct.nouveau_object* %19, %struct.nouveau_oclass* %20, i32 %21, i32 %22, i8** %23)
  store i32 %24, i32* %17, align 4
  %25 = load i8**, i8*** %15, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.nv50_disp_dmac*
  store %struct.nv50_disp_dmac* %27, %struct.nv50_disp_dmac** %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %8, align 4
  br label %102

32:                                               ; preds = %7
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @nouveau_handle_ref(%struct.nouveau_object* %33, i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.TYPE_2__*
  %38 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %39 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %38, i32 0, i32 1
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %41 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %102

47:                                               ; preds = %32
  %48 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %49 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @nv_mclass(%struct.TYPE_2__* %50)
  switch i32 %51, label %98 [
    i32 2, label %52
    i32 61, label %52
  ]

52:                                               ; preds = %47, %47
  %53 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %54 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %59 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %57, %62
  %64 = icmp ne i32 %63, 4095
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %102

68:                                               ; preds = %52
  %69 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %70 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %94 [
    i32 128, label %74
    i32 129, label %84
  ]

74:                                               ; preds = %68
  %75 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %76 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = or i32 0, %80
  %82 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %83 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %97

84:                                               ; preds = %68
  %85 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %86 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 8
  %91 = or i32 3, %90
  %92 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %16, align 8
  %93 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %97

94:                                               ; preds = %68
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %102

97:                                               ; preds = %84, %74
  br label %101

98:                                               ; preds = %47
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %102

101:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %101, %98, %94, %65, %44, %30
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @nv50_disp_chan_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i64 @nouveau_handle_ref(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_mclass(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
