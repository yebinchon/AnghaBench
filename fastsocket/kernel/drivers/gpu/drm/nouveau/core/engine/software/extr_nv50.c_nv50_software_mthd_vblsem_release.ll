; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nv50.c_nv50_software_mthd_vblsem_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nv50.c_nv50_software_mthd_vblsem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_software_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_disp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv50_software_mthd_vblsem_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_software_mthd_vblsem_release(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_software_chan*, align 8
  %11 = alloca %struct.nouveau_disp*, align 8
  %12 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nv_engctx(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv50_software_chan*
  store %struct.nv50_software_chan* %18, %struct.nv50_software_chan** %10, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %20 = call %struct.nouveau_disp* @nouveau_disp(%struct.nouveau_object* %19)
  store %struct.nouveau_disp* %20, %struct.nouveau_disp** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %4
  %30 = load %struct.nouveau_disp*, %struct.nouveau_disp** %11, align 8
  %31 = getelementptr inbounds %struct.nouveau_disp, %struct.nouveau_disp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.nv50_software_chan*, %struct.nv50_software_chan** %10, align 8
  %35 = getelementptr inbounds %struct.nv50_software_chan, %struct.nv50_software_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @nouveau_event_get(i32 %32, i32 %33, i32* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @nv_engctx(i32) #1

declare dso_local %struct.nouveau_disp* @nouveau_disp(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_event_get(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
