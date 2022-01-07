; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vm = type { i64 }
%struct.nv04_vmmgr_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NV44_GART_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"timeout: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vm*)* @nv44_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vm_flush(%struct.nouveau_vm* %0) #0 {
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
  %10 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %11 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NV44_GART_PAGE, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %9, i32 1050644, i32 %15)
  %17 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %18 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %17, i32 1050632, i32 32)
  %19 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %20 = call i32 @nv_wait(%struct.nv04_vmmgr_priv* %19, i32 1050632, i32 1, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %24 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %25 = call i32 @nv_rd32(%struct.nv04_vmmgr_priv* %24, i32 1050632)
  %26 = call i32 @nv_error(%struct.nv04_vmmgr_priv* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %29 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %28, i32 1050632, i32 0)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nv04_vmmgr_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv04_vmmgr_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv04_vmmgr_priv*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv04_vmmgr_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
