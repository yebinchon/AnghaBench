; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_map_pgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_map_pgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpuobj*, i32, %struct.nouveau_gpuobj**)* @nv50_vm_map_pgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_vm_map_pgt(%struct.nouveau_gpuobj* %0, i32 %1, %struct.nouveau_gpuobj** %2) #0 {
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_gpuobj**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_gpuobj** %2, %struct.nouveau_gpuobj*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, i64 0
  %11 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %10, align 8
  %12 = icmp ne %struct.nouveau_gpuobj* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %14, i64 0
  %16 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 3, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %20, i64 0
  %22 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  %26 = shl i32 %25, 12
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %28, i64 1
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %29, align 8
  %31 = icmp ne %struct.nouveau_gpuobj* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %34 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %33, i64 1
  %35 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %34, align 8
  %36 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 1, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %6, align 8
  %40 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %39, i64 1
  %41 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %40, align 8
  %42 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 3
  %45 = shl i32 %44, 16
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %32, %27
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %52, 33554432
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 96
  store i32 %56, i32* %7, align 4
  br label %71

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %58, 67108864
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 64
  store i32 %62, i32* %7, align 4
  br label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %64, 134217728
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, 32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 8
  %76 = add nsw i32 %75, 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @lower_32_bits(i32 %77)
  %79 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %73, i32 %76, i32 %78)
  %80 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %81, 8
  %83 = add nsw i32 %82, 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @upper_32_bits(i32 %84)
  %86 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %80, i32 %83, i32 %85)
  ret void
}

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
