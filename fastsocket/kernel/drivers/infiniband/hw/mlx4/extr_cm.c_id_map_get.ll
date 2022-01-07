; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_map_entry = type { i64 }
%struct.ib_device = type { i32 }
%struct.mlx4_ib_sriov = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.id_map_entry* (%struct.ib_device*, i32*, i32, i32)* @id_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.id_map_entry* @id_map_get(%struct.ib_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.id_map_entry*, align 8
  %10 = alloca %struct.mlx4_ib_sriov*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %13, %struct.mlx4_ib_sriov** %10, align 8
  %14 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.id_map_entry* @id_map_find_by_sl_id(%struct.ib_device* %21, i32 %22, i32 %23)
  store %struct.id_map_entry* %24, %struct.id_map_entry** %9, align 8
  %25 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %26 = icmp ne %struct.id_map_entry* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %29 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %20
  br label %41

34:                                               ; preds = %4
  %35 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %35, i32 0, i32 1
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @idr_find(i32* %36, i32 %38)
  %40 = inttoptr i64 %39 to %struct.id_map_entry*
  store %struct.id_map_entry* %40, %struct.id_map_entry** %9, align 8
  br label %41

41:                                               ; preds = %34, %33
  %42 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  ret %struct.id_map_entry* %45
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.id_map_entry* @id_map_find_by_sl_id(%struct.ib_device*, i32, i32) #1

declare dso_local i64 @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
