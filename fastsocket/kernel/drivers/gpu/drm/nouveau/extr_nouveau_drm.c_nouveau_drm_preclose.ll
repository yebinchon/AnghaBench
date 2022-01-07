; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_preclose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_preclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32, i64 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file*)* @nouveau_drm_preclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_drm_preclose(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %8 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %7)
  store %struct.nouveau_cli* %8, %struct.nouveau_cli** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %6, align 8
  %11 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nouveau_abi16_fini(i64 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_abi16_fini(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
