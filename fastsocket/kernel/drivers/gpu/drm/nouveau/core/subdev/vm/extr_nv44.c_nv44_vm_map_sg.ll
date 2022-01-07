; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_mem = type { i32 }
%struct.nv04_vmmgr_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vma*, %struct.nouveau_gpuobj*, %struct.nouveau_mem*, i32, i32, i32*)* @nv44_vm_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vm_map_sg(%struct.nouveau_vma* %0, %struct.nouveau_gpuobj* %1, %struct.nouveau_mem* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.nouveau_vma*, align 8
  %8 = alloca %struct.nouveau_gpuobj*, align 8
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nv04_vmmgr_priv*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %7, align 8
  store %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %8, align 8
  store %struct.nouveau_mem* %2, %struct.nouveau_mem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %24, %struct.nv04_vmmgr_priv** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 3
  %31 = sub nsw i32 4, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %16, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %17, align 4
  %41 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %42 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %13, align 8
  %43 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @nv44_vm_fill(%struct.nouveau_gpuobj* %41, i32 %44, i32* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %39, %6
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %61, 4
  br i1 %62, label %63, label %126

63:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %12, align 8
  %70 = load i32, i32* %68, align 4
  %71 = ashr i32 %70, 12
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = mul nsw i32 %80, 4
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = ashr i32 %84, 0
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 27
  %89 = or i32 %85, %88
  %90 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %79, i32 %82, i32 %89)
  %91 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = mul nsw i32 %92, 4
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 5
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 22
  %101 = or i32 %97, %100
  %102 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %91, i32 %94, i32 %101)
  %103 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = mul nsw i32 %104, 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = ashr i32 %108, 10
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 17
  %113 = or i32 %109, %112
  %114 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %103, i32 %106, i32 %113)
  %115 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = mul nsw i32 %116, 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 15
  %122 = or i32 %121, 1073741824
  %123 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %115, i32 %118, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 4
  store i32 %125, i32* %11, align 4
  br label %60

126:                                              ; preds = %60
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %131 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %13, align 8
  %132 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @nv44_vm_fill(%struct.nouveau_gpuobj* %130, i32 %133, i32* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %126
  ret void
}

declare dso_local i32 @nv44_vm_fill(%struct.nouveau_gpuobj*, i32, i32*, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
