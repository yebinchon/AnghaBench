; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_ovly_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_ovly_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_display_ovly_class = type { i32, i32 }
%struct.nv50_disp_dmac = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nv50_disp_dmac_object_attach = common dso_local global i32 0, align 4
@nv50_disp_dmac_object_detach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_disp_ovly_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_ovly_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_display_ovly_class*, align 8
  %15 = alloca %struct.nv50_disp_dmac*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.nv50_display_ovly_class*
  store %struct.nv50_display_ovly_class* %18, %struct.nv50_display_ovly_class** %14, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.nv50_display_ovly_class*, %struct.nv50_display_ovly_class** %14, align 8
  %24 = getelementptr inbounds %struct.nv50_display_ovly_class, %struct.nv50_display_ovly_class* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %33 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %34 = load %struct.nv50_display_ovly_class*, %struct.nv50_display_ovly_class** %14, align 8
  %35 = getelementptr inbounds %struct.nv50_display_ovly_class, %struct.nv50_display_ovly_class* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nv50_display_ovly_class*, %struct.nv50_display_ovly_class** %14, align 8
  %38 = getelementptr inbounds %struct.nv50_display_ovly_class, %struct.nv50_display_ovly_class* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 3, %39
  %41 = bitcast %struct.nv50_disp_dmac** %15 to i8**
  %42 = call i32 @nv50_disp_dmac_create_(%struct.nouveau_object* %31, %struct.nouveau_object* %32, %struct.nouveau_oclass* %33, i32 %36, i32 %40, i32 4, i8** %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %15, align 8
  %44 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_dmac* %43)
  %45 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %44, %struct.nouveau_object** %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %30
  %51 = load i32, i32* @nv50_disp_dmac_object_attach, align 4
  %52 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %15, align 8
  %53 = call %struct.TYPE_2__* @nv_parent(%struct.nv50_disp_dmac* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @nv50_disp_dmac_object_detach, align 4
  %56 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %15, align 8
  %57 = call %struct.TYPE_2__* @nv_parent(%struct.nv50_disp_dmac* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %50, %48, %27
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @nv50_disp_dmac_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i8**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_dmac*) #1

declare dso_local %struct.TYPE_2__* @nv_parent(%struct.nv50_disp_dmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
