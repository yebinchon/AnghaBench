; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_mast_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_mast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_dmac = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"init: 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_disp_mast_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_mast_init(%struct.nouveau_object* %0) #0 {
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
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %24 = call i32 @nv_mask(%struct.nv50_disp_priv* %23, i32 6357032, i32 65537, i32 65537)
  %25 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %26 = call i32 @nv_rd32(%struct.nv50_disp_priv* %25, i32 6357504)
  %27 = and i32 %26, 10420224
  %28 = icmp eq i32 %27, 131072
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %31 = call i32 @nv_mask(%struct.nv50_disp_priv* %30, i32 6357504, i32 8388608, i32 8388608)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %34 = call i32 @nv_rd32(%struct.nv50_disp_priv* %33, i32 6357504)
  %35 = and i32 %34, 4128768
  %36 = icmp eq i32 %35, 196608
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %39 = call i32 @nv_mask(%struct.nv50_disp_priv* %38, i32 6357504, i32 6291456, i32 6291456)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %42 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %5, align 8
  %43 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nv_wr32(%struct.nv50_disp_priv* %41, i32 6357508, i32 %44)
  %46 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %47 = call i32 @nv_wr32(%struct.nv50_disp_priv* %46, i32 6357512, i32 65536)
  %48 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %49 = call i32 @nv_wr32(%struct.nv50_disp_priv* %48, i32 6357516, i32 0)
  %50 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %51 = call i32 @nv_mask(%struct.nv50_disp_priv* %50, i32 6357504, i32 16, i32 16)
  %52 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %53 = call i32 @nv_wr32(%struct.nv50_disp_priv* %52, i32 6553600, i32 0)
  %54 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %55 = call i32 @nv_wr32(%struct.nv50_disp_priv* %54, i32 6357504, i32 16777235)
  %56 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %57 = call i32 @nv_wait(%struct.nv50_disp_priv* %56, i32 6357504, i32 -2147483648, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %40
  %60 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %5, align 8
  %61 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %62 = call i32 @nv_rd32(%struct.nv50_disp_priv* %61, i32 6357504)
  %63 = call i32 @nv_error(%struct.nv50_disp_dmac* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %59, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @nv50_disp_chan_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_dmac*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
