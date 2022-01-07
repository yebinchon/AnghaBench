; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpuobj*, i32, i32*, i32, i32)* @nv44_vm_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vm_fill(%struct.nouveau_gpuobj* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 %14, 2
  %16 = and i32 %15, -16
  store i32 %16, i32* %11, align 4
  %17 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 0
  %20 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %17, i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 4
  %25 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %22, i32 %24)
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 8
  %30 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %27, i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 12
  %35 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %32, i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %116, %5
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %117

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %45, align 4
  %48 = ashr i32 %47, 12
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 12
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %48, %44 ], [ %51, %49 ]
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = and i32 %54, 3
  switch i32 %56, label %116 [
    i32 0, label %57
    i32 1, label %65
    i32 2, label %82
    i32 3, label %99
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = and i32 %59, -134217728
  store i32 %60, i32* %58, align 16
  %61 = load i32, i32* %13, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 16
  br label %116

65:                                               ; preds = %52
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = and i32 %67, 134217727
  store i32 %68, i32* %66, align 16
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 %69, 27
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 16
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -4194304
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %13, align 4
  %78 = ashr i32 %77, 5
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %116

82:                                               ; preds = %52
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 4194303
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 22
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, -131072
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %94, 10
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 8
  br label %116

99:                                               ; preds = %52
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 131071
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %13, align 4
  %104 = shl i32 %103, 17
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -4096
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %13, align 4
  %112 = ashr i32 %111, 15
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %52, %99, %82, %65, %57
  br label %37

117:                                              ; preds = %37
  %118 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %122 = load i32, i32* %121, align 16
  %123 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %118, i32 %120, i32 %122)
  %124 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 4
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %124, i32 %126, i32 %128)
  %130 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %130, i32 %132, i32 %134)
  %136 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 12
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, 1073741824
  %142 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %136, i32 %138, i32 %141)
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_gpuobj*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
