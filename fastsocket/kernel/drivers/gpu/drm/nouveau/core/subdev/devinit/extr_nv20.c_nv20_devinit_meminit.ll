; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv20.c_nv20_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv20.c_nv20_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_devinit = type { i32 }
%struct.nv20_devinit_priv = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.io_mapping = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV10_PFB_REFCTRL = common dso_local global i32 0, align 4
@NV10_PFB_REFCTRL_VALID_1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_devinit*)* @nv20_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv20_devinit_meminit(%struct.nouveau_devinit* %0) #0 {
  %2 = alloca %struct.nouveau_devinit*, align 8
  %3 = alloca %struct.nv20_devinit_priv*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_mapping*, align 8
  store %struct.nouveau_devinit* %0, %struct.nouveau_devinit** %2, align 8
  %9 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %2, align 8
  %10 = bitcast %struct.nouveau_devinit* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv20_devinit_priv*
  store %struct.nv20_devinit_priv* %11, %struct.nv20_devinit_priv** %3, align 8
  %12 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %13 = call %struct.nouveau_device* @nv_device(%struct.nv20_devinit_priv* %12)
  store %struct.nouveau_device* %13, %struct.nouveau_device** %4, align 8
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 37
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 768, i32 2304
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %21 = call %struct.nouveau_device* @nv_device(%struct.nv20_devinit_priv* %20)
  %22 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.io_mapping* @fbmem_init(i32 %23)
  store %struct.io_mapping* %24, %struct.io_mapping** %8, align 8
  %25 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %26 = icmp ne %struct.io_mapping* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %29 = call i32 @nv_error(%struct.nv20_devinit_priv* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %71

30:                                               ; preds = %1
  %31 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %32 = load i32, i32* @NV10_PFB_REFCTRL, align 4
  %33 = load i32, i32* @NV10_PFB_REFCTRL_VALID_1, align 4
  %34 = call i32 @nv_wr32(%struct.nv20_devinit_priv* %31, i32 %32, i32 %33)
  %35 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %36 = load i32, i32* @NV04_PFB_CFG0, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @nv_mask(%struct.nv20_devinit_priv* %35, i32 %36, i32 0, i32 %37)
  %39 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %40 = call i32 @nv_rd32(%struct.nv20_devinit_priv* %39, i32 1049100)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %51, %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 33554432
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fbmem_poke(%struct.io_mapping* %46, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 33554432
  store i32 %53, i32* %7, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %56 = call i32 @nv_rd32(%struct.nv20_devinit_priv* %55, i32 1049100)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 4
  %61 = call i32 @fbmem_peek(%struct.io_mapping* %58, i32 %60)
  %62 = icmp ne i32 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.nv20_devinit_priv*, %struct.nv20_devinit_priv** %3, align 8
  %65 = load i32, i32* @NV04_PFB_CFG0, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @nv_mask(%struct.nv20_devinit_priv* %64, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %70 = call i32 @fbmem_fini(%struct.io_mapping* %69)
  br label %71

71:                                               ; preds = %68, %27
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nv20_devinit_priv*) #1

declare dso_local %struct.io_mapping* @fbmem_init(i32) #1

declare dso_local i32 @nv_error(%struct.nv20_devinit_priv*, i8*) #1

declare dso_local i32 @nv_wr32(%struct.nv20_devinit_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv20_devinit_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv20_devinit_priv*, i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i32) #1

declare dso_local i32 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
