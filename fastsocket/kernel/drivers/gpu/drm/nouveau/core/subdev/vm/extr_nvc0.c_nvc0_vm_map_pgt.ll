; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_map_pgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_map_pgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpuobj*, i32, %struct.nouveau_gpuobj**)* @nvc0_vm_map_pgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_vm_map_pgt(%struct.nouveau_gpuobj* %0, i32 %1, %struct.nouveau_gpuobj** %2) #0 {
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_gpuobj**, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_gpuobj** %2, %struct.nouveau_gpuobj*** %6, align 8
  %8 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, i64 0
  %11 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %10, align 8
  %12 = icmp ne %struct.nouveau_gpuobj* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %14, i64 0
  %16 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = or i32 1, %19
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %23, i64 1
  %25 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %26 = icmp ne %struct.nouveau_gpuobj* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %28, i64 1
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = or i32 1, %33
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 8
  %40 = add nsw i32 %39, 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %37, i32 %40, i32 %42)
  %44 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 8
  %47 = add nsw i32 %46, 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %44, i32 %47, i32 %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
