; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpuobj*, i32, i32)* @nvc0_vm_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_vm_unmap(%struct.nouveau_gpuobj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = shl i32 %7, 3
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 0
  %17 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %14, i32 %16, i32 0)
  %18 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 4
  %21 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %18, i32 %20, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %5, align 4
  br label %9

24:                                               ; preds = %9
  ret void
}

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
