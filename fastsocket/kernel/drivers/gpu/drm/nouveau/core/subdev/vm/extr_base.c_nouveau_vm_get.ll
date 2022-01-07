; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vm = type { %struct.TYPE_5__, i32, %struct.nouveau_vm_pgt*, %struct.nouveau_vmmgr* }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_vm_pgt = type { i32* }
%struct.nouveau_vmmgr = type { i32, i64 }
%struct.nouveau_vma = type { i32, i32, %struct.TYPE_6__*, %struct.nouveau_vm* }
%struct.TYPE_6__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_vm_get(%struct.nouveau_vm* %0, i32 %1, i32 %2, i32 %3, %struct.nouveau_vma* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_vma*, align 8
  %12 = alloca %struct.nouveau_vmmgr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nouveau_vm_pgt*, align 8
  %20 = alloca i32, align 4
  store %struct.nouveau_vm* %0, %struct.nouveau_vm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nouveau_vma* %4, %struct.nouveau_vma** %11, align 8
  %21 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %21, i32 0, i32 3
  %23 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %22, align 8
  store %struct.nouveau_vmmgr* %23, %struct.nouveau_vmmgr** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = ashr i32 %25, 12
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 12
  store i32 %28, i32* %14, align 4
  %29 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %30 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %34 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %40 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %39, i32 0, i32 2
  %41 = call i32 @nouveau_mm_head(%struct.TYPE_5__* %34, i32 %35, i32 %36, i32 %37, i32 %38, %struct.TYPE_6__** %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %5
  %48 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %49 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %6, align 4
  br label %179

53:                                               ; preds = %5
  %54 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %55 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %12, align 8
  %60 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %58, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %64 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %69 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %12, align 8
  %76 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %74, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %157, %53
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %160

84:                                               ; preds = %80
  %85 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %86 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %85, i32 0, i32 2
  %87 = load %struct.nouveau_vm_pgt*, %struct.nouveau_vm_pgt** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %90 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.nouveau_vm_pgt, %struct.nouveau_vm_pgt* %87, i64 %93
  store %struct.nouveau_vm_pgt* %94, %struct.nouveau_vm_pgt** %19, align 8
  %95 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %96 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %12, align 8
  %101 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %20, align 4
  %105 = load %struct.nouveau_vm_pgt*, %struct.nouveau_vm_pgt** %19, align 8
  %106 = getelementptr inbounds %struct.nouveau_vm_pgt, %struct.nouveau_vm_pgt* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @likely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %84
  %115 = load %struct.nouveau_vm_pgt*, %struct.nouveau_vm_pgt** %19, align 8
  %116 = getelementptr inbounds %struct.nouveau_vm_pgt, %struct.nouveau_vm_pgt* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %157

123:                                              ; preds = %84
  %124 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %127 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @nouveau_vm_map_pgt(%struct.nouveau_vm* %124, i32 %125, i64 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %123
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %17, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @nouveau_vm_unmap_pgt(%struct.nouveau_vm* %139, i32 %140, i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %138, %134
  %146 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %147 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %146, i32 0, i32 0
  %148 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %149 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %148, i32 0, i32 2
  %150 = call i32 @nouveau_mm_free(%struct.TYPE_5__* %147, %struct.TYPE_6__** %149)
  %151 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %152 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %18, align 4
  store i32 %155, i32* %6, align 4
  br label %179

156:                                              ; preds = %123
  br label %157

157:                                              ; preds = %156, %114
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %80

160:                                              ; preds = %80
  %161 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %162 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %166 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %167 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %166, i32 0, i32 3
  store %struct.nouveau_vm* %165, %struct.nouveau_vm** %167, align 8
  %168 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %169 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = shl i32 %172, 12
  %174 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %175 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %178 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %160, %145, %47
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nouveau_mm_head(%struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nouveau_vm_map_pgt(%struct.nouveau_vm*, i32, i64) #1

declare dso_local i32 @nouveau_vm_unmap_pgt(%struct.nouveau_vm*, i32, i32, i32) #1

declare dso_local i32 @nouveau_mm_free(%struct.TYPE_5__*, %struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
