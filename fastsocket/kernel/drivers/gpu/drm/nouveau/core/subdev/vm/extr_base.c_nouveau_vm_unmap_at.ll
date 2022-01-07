; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_unmap_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_unmap_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_3__*, %struct.nouveau_vm* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nouveau_vm = type { i32, %struct.TYPE_4__*, %struct.nouveau_vmmgr* }
%struct.TYPE_4__ = type { %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_vmmgr = type { i64, i32, i32 (%struct.nouveau_vm.0*)*, i32 (%struct.nouveau_gpuobj.1*, i32, i32)* }
%struct.nouveau_vm.0 = type opaque
%struct.nouveau_gpuobj.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_vm_unmap_at(%struct.nouveau_vma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_vma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_vm*, align 8
  %8 = alloca %struct.nouveau_vmmgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nouveau_gpuobj*, align 8
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %19, i32 0, i32 1
  %21 = load %struct.nouveau_vm*, %struct.nouveau_vm** %20, align 8
  store %struct.nouveau_vm* %21, %struct.nouveau_vm** %7, align 8
  %22 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %22, i32 0, i32 2
  %24 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %23, align 8
  store %struct.nouveau_vmmgr* %24, %struct.nouveau_vmmgr** %8, align 8
  %25 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 12
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %44 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 12
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = ashr i32 %50, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %60 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %58, %61
  %63 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %64 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 1, %70
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %67, %72
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %77 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  %81 = shl i32 1, %80
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %136, %3
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %137

85:                                               ; preds = %82
  %86 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %87 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %93, i64 %95
  %97 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %96, align 8
  store %struct.nouveau_gpuobj* %97, %struct.nouveau_gpuobj** %18, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sge i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %85
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %107, %85
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %17, align 4
  %113 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %114 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %113, i32 0, i32 3
  %115 = load i32 (%struct.nouveau_gpuobj.1*, i32, i32)*, i32 (%struct.nouveau_gpuobj.1*, i32, i32)** %114, align 8
  %116 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %18, align 8
  %117 = bitcast %struct.nouveau_gpuobj* %116 to %struct.nouveau_gpuobj.1*
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 %115(%struct.nouveau_gpuobj.1* %117, i32 %118, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp sge i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %109
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %109
  br label %82

137:                                              ; preds = %82
  %138 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %139 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %138, i32 0, i32 2
  %140 = load i32 (%struct.nouveau_vm.0*)*, i32 (%struct.nouveau_vm.0*)** %139, align 8
  %141 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %142 = bitcast %struct.nouveau_vm* %141 to %struct.nouveau_vm.0*
  %143 = call i32 %140(%struct.nouveau_vm.0* %142)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
