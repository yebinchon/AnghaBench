; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }
%struct.nv04_vmmgr_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpuobj*, i32, i32)* @nv44_vm_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vm_unmap(%struct.nouveau_gpuobj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_vmmgr_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %11 = call i64 @nouveau_vmmgr(%struct.nouveau_gpuobj* %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %13, %struct.nv04_vmmgr_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 3
  %20 = sub nsw i32 4, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %31 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %7, align 8
  %32 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @nv44_vm_fill(%struct.nouveau_gpuobj* %30, i32 %33, i32* null, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %3
  br label %44

44:                                               ; preds = %47, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = mul nsw i32 %49, 4
  %52 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %48, i32 %51, i32 0)
  %53 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = mul nsw i32 %54, 4
  %57 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %53, i32 %56, i32 0)
  %58 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = mul nsw i32 %59, 4
  %62 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %58, i32 %61, i32 0)
  %63 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = mul nsw i32 %64, 4
  %67 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %63, i32 %66, i32 0)
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 4
  store i32 %69, i32* %6, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %75 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %7, align 8
  %76 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @nv44_vm_fill(%struct.nouveau_gpuobj* %74, i32 %77, i32* null, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  ret void
}

declare dso_local i64 @nouveau_vmmgr(%struct.nouveau_gpuobj*) #1

declare dso_local i32 @nv44_vm_fill(%struct.nouveau_gpuobj*, i32, i32*, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
