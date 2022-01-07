; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_remove_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_sa_bo = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.radeon_sa_manager* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.radeon_sa_manager = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_sa_bo*)* @radeon_sa_bo_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_sa_bo_remove_locked(%struct.radeon_sa_bo* %0) #0 {
  %2 = alloca %struct.radeon_sa_bo*, align 8
  %3 = alloca %struct.radeon_sa_manager*, align 8
  store %struct.radeon_sa_bo* %0, %struct.radeon_sa_bo** %2, align 8
  %4 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %4, i32 0, i32 3
  %6 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  store %struct.radeon_sa_manager* %6, %struct.radeon_sa_manager** %3, align 8
  %7 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %10, i32 0, i32 2
  %12 = icmp eq %struct.TYPE_2__* %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %18, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %21, i32 0, i32 2
  %23 = call i32 @list_del_init(%struct.TYPE_2__* %22)
  %24 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %24, i32 0, i32 1
  %26 = call i32 @list_del_init(%struct.TYPE_2__* %25)
  %27 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %27, i32 0, i32 0
  %29 = call i32 @radeon_fence_unref(i32* %28)
  %30 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %2, align 8
  %31 = call i32 @kfree(%struct.radeon_sa_bo* %30)
  ret void
}

declare dso_local i32 @list_del_init(%struct.TYPE_2__*) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_sa_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
