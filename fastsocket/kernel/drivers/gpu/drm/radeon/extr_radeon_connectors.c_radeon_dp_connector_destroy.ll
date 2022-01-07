; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @radeon_dp_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_dp_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = bitcast %struct.drm_connector* %5 to %struct.radeon_connector_atom_dig*
  %7 = call %struct.radeon_connector* @to_radeon_connector(%struct.radeon_connector_atom_dig* %6)
  store %struct.radeon_connector* %7, %struct.radeon_connector** %3, align 8
  %8 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %8, i32 0, i32 0
  %10 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  store %struct.radeon_connector_atom_dig* %10, %struct.radeon_connector_atom_dig** %4, align 8
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 1
  %13 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %14 = icmp ne %struct.radeon_connector_atom_dig* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %16, i32 0, i32 1
  %18 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %17, align 8
  %19 = call i32 @kfree(%struct.radeon_connector_atom_dig* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @radeon_i2c_destroy(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %31, i32 0, i32 0
  %33 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %32, align 8
  %34 = call i32 @kfree(%struct.radeon_connector_atom_dig* %33)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = bitcast %struct.drm_connector* %35 to %struct.radeon_connector_atom_dig*
  %37 = call i32 @drm_sysfs_connector_remove(%struct.radeon_connector_atom_dig* %36)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %39 = bitcast %struct.drm_connector* %38 to %struct.radeon_connector_atom_dig*
  %40 = call i32 @drm_connector_cleanup(%struct.radeon_connector_atom_dig* %39)
  %41 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %42 = bitcast %struct.drm_connector* %41 to %struct.radeon_connector_atom_dig*
  %43 = call i32 @kfree(%struct.radeon_connector_atom_dig* %42)
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.radeon_connector_atom_dig*) #1

declare dso_local i32 @kfree(%struct.radeon_connector_atom_dig*) #1

declare dso_local i32 @radeon_i2c_destroy(i64) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.radeon_connector_atom_dig*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.radeon_connector_atom_dig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
