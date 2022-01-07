; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_find_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_find_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_sriov = type { i32, i32, %struct.rb_root }
%struct.rb_root = type { i32 }
%struct.id_map_entry = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32)* @id_map_find_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @id_map_find_del(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_sriov*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.id_map_entry*, align 8
  %8 = alloca %struct.id_map_entry*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %11, %struct.mlx4_ib_sriov** %5, align 8
  %12 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %12, i32 0, i32 2
  store %struct.rb_root* %13, %struct.rb_root** %6, align 8
  %14 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %17, i32 0, i32 1
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @idr_find(i32* %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.id_map_entry*
  store %struct.id_map_entry* %21, %struct.id_map_entry** %7, align 8
  %22 = load %struct.id_map_entry*, %struct.id_map_entry** %7, align 8
  %23 = icmp ne %struct.id_map_entry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %27 = load %struct.id_map_entry*, %struct.id_map_entry** %7, align 8
  %28 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.id_map_entry*, %struct.id_map_entry** %7, align 8
  %31 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.id_map_entry* @id_map_find_by_sl_id(%struct.ib_device* %26, i32 %29, i32 %32)
  store %struct.id_map_entry* %33, %struct.id_map_entry** %8, align 8
  %34 = load %struct.id_map_entry*, %struct.id_map_entry** %8, align 8
  %35 = icmp ne %struct.id_map_entry* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.id_map_entry*, %struct.id_map_entry** %8, align 8
  %38 = load %struct.id_map_entry*, %struct.id_map_entry** %7, align 8
  %39 = icmp eq %struct.id_map_entry* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.id_map_entry*, %struct.id_map_entry** %8, align 8
  %42 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %41, i32 0, i32 0
  %43 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %44 = call i32 @rb_erase(i32* %42, %struct.rb_root* %43)
  br label %45

45:                                               ; preds = %40, %36, %25
  %46 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %46, i32 0, i32 1
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @idr_remove(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %24
  %51 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  ret void
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @idr_find(i32*, i32) #1

declare dso_local %struct.id_map_entry* @id_map_find_by_sl_id(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
