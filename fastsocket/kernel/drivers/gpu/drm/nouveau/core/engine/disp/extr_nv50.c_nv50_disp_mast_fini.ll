; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_mast_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_mast_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_dmac = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"fini: 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv50_disp_mast_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_mast_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_disp_priv*, align 8
  %7 = alloca %struct.nv50_disp_dmac*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %12, %struct.nv50_disp_priv** %6, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv50_disp_dmac*
  store %struct.nv50_disp_dmac* %15, %struct.nv50_disp_dmac** %7, align 8
  %16 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %17 = call i32 @nv_mask(%struct.nv50_disp_priv* %16, i32 6357504, i32 16, i32 0)
  %18 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %19 = call i32 @nv_mask(%struct.nv50_disp_priv* %18, i32 6357504, i32 3, i32 0)
  %20 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %21 = call i32 @nv_wait(%struct.nv50_disp_priv* %20, i32 6357504, i32 1966080, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %2
  %24 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %7, align 8
  %25 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %26 = call i32 @nv_rd32(%struct.nv50_disp_priv* %25, i32 6357504)
  %27 = call i32 @nv_error(%struct.nv50_disp_dmac* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %36 = call i32 @nv_mask(%struct.nv50_disp_priv* %35, i32 6357032, i32 65537, i32 0)
  %37 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %7, align 8
  %38 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @nv50_disp_chan_fini(i32* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_dmac*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv50_disp_chan_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
