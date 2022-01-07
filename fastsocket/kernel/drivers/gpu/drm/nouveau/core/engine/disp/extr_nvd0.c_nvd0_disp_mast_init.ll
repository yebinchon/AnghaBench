; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_mast_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_mast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_dmac = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"init: 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvd0_disp_mast_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_mast_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_disp_priv*, align 8
  %5 = alloca %struct.nv50_disp_dmac*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %11, %struct.nv50_disp_priv** %4, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %13 = bitcast %struct.nouveau_object* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv50_disp_dmac*
  store %struct.nv50_disp_dmac* %14, %struct.nv50_disp_dmac** %5, align 8
  %15 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %5, align 8
  %16 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %15, i32 0, i32 1
  %17 = call i32 @nv50_disp_chan_init(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %24 = call i32 @nv_mask(%struct.nv50_disp_priv* %23, i32 6357136, i32 1, i32 1)
  %25 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %26 = call i32 @nv_mask(%struct.nv50_disp_priv* %25, i32 6357152, i32 1, i32 1)
  %27 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %28 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %5, align 8
  %29 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nv_wr32(%struct.nv50_disp_priv* %27, i32 6358164, i32 %30)
  %32 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %33 = call i32 @nv_wr32(%struct.nv50_disp_priv* %32, i32 6358168, i32 65536)
  %34 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %35 = call i32 @nv_wr32(%struct.nv50_disp_priv* %34, i32 6358172, i32 1)
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %37 = call i32 @nv_mask(%struct.nv50_disp_priv* %36, i32 6358160, i32 16, i32 16)
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %39 = call i32 @nv_wr32(%struct.nv50_disp_priv* %38, i32 6553600, i32 0)
  %40 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %41 = call i32 @nv_wr32(%struct.nv50_disp_priv* %40, i32 6358160, i32 16777235)
  %42 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %43 = call i32 @nv_wait(%struct.nv50_disp_priv* %42, i32 6358160, i32 -2147483648, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %22
  %46 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %5, align 8
  %47 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %48 = call i32 @nv_rd32(%struct.nv50_disp_priv* %47, i32 6358160)
  %49 = call i32 @nv_error(%struct.nv50_disp_dmac* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %45, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @nv50_disp_chan_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_dmac*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
