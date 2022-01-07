; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vm = type { i64 }
%struct.nv04_vmmgr_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"flush timeout, 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vm*)* @nv41_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv41_vm_flush(%struct.nouveau_vm* %0) #0 {
  %2 = alloca %struct.nouveau_vm*, align 8
  %3 = alloca %struct.nv04_vmmgr_priv*, align 8
  store %struct.nouveau_vm* %0, %struct.nouveau_vm** %2, align 8
  %4 = load %struct.nouveau_vm*, %struct.nouveau_vm** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %8, %struct.nv04_vmmgr_priv** %3, align 8
  %9 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %10 = call %struct.TYPE_2__* @nv_subdev(%struct.nv04_vmmgr_priv* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %14 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %13, i32 1050640, i32 34)
  %15 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %16 = call i32 @nv_wait(%struct.nv04_vmmgr_priv* %15, i32 1050640, i32 32, i32 32)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %20 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %21 = call i32 @nv_rd32(%struct.nv04_vmmgr_priv* %20, i32 1050640)
  %22 = call i32 @nv_warn(%struct.nv04_vmmgr_priv* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %25 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %24, i32 1050640, i32 0)
  %26 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %27 = call %struct.TYPE_2__* @nv_subdev(%struct.nv04_vmmgr_priv* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @nv_subdev(%struct.nv04_vmmgr_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_vmmgr_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv04_vmmgr_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv04_vmmgr_priv*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv04_vmmgr_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
