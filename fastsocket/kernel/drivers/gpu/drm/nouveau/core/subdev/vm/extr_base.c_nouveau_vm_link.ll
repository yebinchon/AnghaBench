; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vm = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.nouveau_vmmgr* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_vmmgr = type { i32 (%struct.nouveau_gpuobj*, i32, i32)* }
%struct.nouveau_gpuobj = type opaque
%struct.nouveau_gpuobj.0 = type { i32 }
%struct.nouveau_vm_pgd = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_vm*, %struct.nouveau_gpuobj.0*)* @nouveau_vm_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_vm_link(%struct.nouveau_vm* %0, %struct.nouveau_gpuobj.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_vm*, align 8
  %5 = alloca %struct.nouveau_gpuobj.0*, align 8
  %6 = alloca %struct.nouveau_vmmgr*, align 8
  %7 = alloca %struct.nouveau_vm_pgd*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_vm* %0, %struct.nouveau_vm** %4, align 8
  store %struct.nouveau_gpuobj.0* %1, %struct.nouveau_gpuobj.0** %5, align 8
  %9 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %9, i32 0, i32 5
  %11 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %10, align 8
  store %struct.nouveau_vmmgr* %11, %struct.nouveau_vmmgr** %6, align 8
  %12 = load %struct.nouveau_gpuobj.0*, %struct.nouveau_gpuobj.0** %5, align 8
  %13 = icmp ne %struct.nouveau_gpuobj.0* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nouveau_vm_pgd* @kzalloc(i32 8, i32 %16)
  store %struct.nouveau_vm_pgd* %17, %struct.nouveau_vm_pgd** %7, align 8
  %18 = load %struct.nouveau_vm_pgd*, %struct.nouveau_vm_pgd** %7, align 8
  %19 = icmp ne %struct.nouveau_vm_pgd* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %15
  %24 = load %struct.nouveau_gpuobj.0*, %struct.nouveau_gpuobj.0** %5, align 8
  %25 = load %struct.nouveau_vm_pgd*, %struct.nouveau_vm_pgd** %7, align 8
  %26 = getelementptr inbounds %struct.nouveau_vm_pgd, %struct.nouveau_vm_pgd* %25, i32 0, i32 1
  %27 = call i32 @nouveau_gpuobj_ref(%struct.nouveau_gpuobj.0* %24, i32* %26)
  %28 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %29 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %33 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %61, %23
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %38 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %6, align 8
  %43 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %42, i32 0, i32 0
  %44 = load i32 (%struct.nouveau_gpuobj*, i32, i32)*, i32 (%struct.nouveau_gpuobj*, i32, i32)** %43, align 8
  %45 = load %struct.nouveau_gpuobj.0*, %struct.nouveau_gpuobj.0** %5, align 8
  %46 = bitcast %struct.nouveau_gpuobj.0* %45 to %struct.nouveau_gpuobj*
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %44(%struct.nouveau_gpuobj* %46, i32 %47, i32 %59)
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load %struct.nouveau_vm_pgd*, %struct.nouveau_vm_pgd** %7, align 8
  %66 = getelementptr inbounds %struct.nouveau_vm_pgd, %struct.nouveau_vm_pgd* %65, i32 0, i32 0
  %67 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %68 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %67, i32 0, i32 3
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.nouveau_vm*, %struct.nouveau_vm** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %20, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.nouveau_vm_pgd* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_gpuobj_ref(%struct.nouveau_gpuobj.0*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
