; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_3__*, %struct.nouveau_vm* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nouveau_vm = type { i32, %struct.TYPE_4__*, %struct.nouveau_vmmgr* }
%struct.TYPE_4__ = type { %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_vmmgr = type { i64, i32, i32 (%struct.nouveau_vm.0*)*, i32 (%struct.nouveau_vma.1*, %struct.nouveau_gpuobj.2*, %struct.nouveau_mem*, i32, i32, i32*)* }
%struct.nouveau_vm.0 = type opaque
%struct.nouveau_vma.1 = type opaque
%struct.nouveau_gpuobj.2 = type opaque
%struct.nouveau_mem = type opaque
%struct.nouveau_mem.3 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_vm_map_sg(%struct.nouveau_vma* %0, i32 %1, i32 %2, %struct.nouveau_mem.3* %3) #0 {
  %5 = alloca %struct.nouveau_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_mem.3*, align 8
  %9 = alloca %struct.nouveau_vm*, align 8
  %10 = alloca %struct.nouveau_vmmgr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nouveau_gpuobj*, align 8
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nouveau_mem.3* %3, %struct.nouveau_mem.3** %8, align 8
  %22 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %22, i32 0, i32 1
  %24 = load %struct.nouveau_vm*, %struct.nouveau_vm** %23, align 8
  store %struct.nouveau_vm* %24, %struct.nouveau_vm** %9, align 8
  %25 = load %struct.nouveau_vm*, %struct.nouveau_vm** %9, align 8
  %26 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %25, i32 0, i32 2
  %27 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %26, align 8
  store %struct.nouveau_vmmgr* %27, %struct.nouveau_vmmgr** %10, align 8
  %28 = load %struct.nouveau_mem.3*, %struct.nouveau_mem.3** %8, align 8
  %29 = getelementptr inbounds %struct.nouveau_mem.3, %struct.nouveau_mem.3* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %37 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %42 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 12
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %50 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 12
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = ashr i32 %56, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %66 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %64, %67
  %69 = load %struct.nouveau_vm*, %struct.nouveau_vm** %9, align 8
  %70 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %75 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %73, %78
  %80 = load i32, i32* %14, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %83 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = shl i32 1, %86
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %151, %4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %88
  %92 = load %struct.nouveau_vm*, %struct.nouveau_vm** %9, align 8
  %93 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %99, i64 %101
  %103 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %102, align 8
  store %struct.nouveau_gpuobj* %103, %struct.nouveau_gpuobj** %21, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp sge i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %91
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %91
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %20, align 4
  %119 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %120 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %119, i32 0, i32 3
  %121 = load i32 (%struct.nouveau_vma.1*, %struct.nouveau_gpuobj.2*, %struct.nouveau_mem*, i32, i32, i32*)*, i32 (%struct.nouveau_vma.1*, %struct.nouveau_gpuobj.2*, %struct.nouveau_mem*, i32, i32, i32*)** %120, align 8
  %122 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %123 = bitcast %struct.nouveau_vma* %122 to %struct.nouveau_vma.1*
  %124 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %21, align 8
  %125 = bitcast %struct.nouveau_gpuobj* %124 to %struct.nouveau_gpuobj.2*
  %126 = load %struct.nouveau_mem.3*, %struct.nouveau_mem.3** %8, align 8
  %127 = bitcast %struct.nouveau_mem.3* %126 to %struct.nouveau_mem*
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 %121(%struct.nouveau_vma.1* %123, %struct.nouveau_gpuobj.2* %125, %struct.nouveau_mem* %127, i32 %128, i32 %129, i32* %130)
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %11, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp sge i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %115
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %148, %115
  br label %88

152:                                              ; preds = %88
  %153 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  %154 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %153, i32 0, i32 2
  %155 = load i32 (%struct.nouveau_vm.0*)*, i32 (%struct.nouveau_vm.0*)** %154, align 8
  %156 = load %struct.nouveau_vm*, %struct.nouveau_vm** %9, align 8
  %157 = bitcast %struct.nouveau_vm* %156 to %struct.nouveau_vm.0*
  %158 = call i32 %155(%struct.nouveau_vm.0* %157)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
