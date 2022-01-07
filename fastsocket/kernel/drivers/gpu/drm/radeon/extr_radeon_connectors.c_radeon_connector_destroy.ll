; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.drm_connector*, %struct.drm_connector* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @radeon_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %4)
  store %struct.radeon_connector* %5, %struct.radeon_connector** %3, align 8
  %6 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %9 = icmp ne %struct.drm_connector* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %14 = call i32 @kfree(%struct.drm_connector* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %16, i32 0, i32 0
  %18 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %19 = call i32 @kfree(%struct.drm_connector* %18)
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = call i32 @drm_sysfs_connector_remove(%struct.drm_connector* %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = call i32 @drm_connector_cleanup(%struct.drm_connector* %22)
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = call i32 @kfree(%struct.drm_connector* %24)
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
