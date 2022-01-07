; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_map_entry = type { i32, i32, i8*, i32, %struct.TYPE_2__*, i64, i8* }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }
%struct.mlx4_ib_sriov = type { i32, i32, i32 }
%struct.ib_device = type { i32 }

@id_map_alloc.next_id = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Couldn't allocate id cache entry - out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@id_map_ent_timeout = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No more space in the idr (err:0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.id_map_entry* (%struct.ib_device*, i32, i8*)* @id_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.id_map_entry* @id_map_alloc(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.id_map_entry*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.id_map_entry*, align 8
  %11 = alloca %struct.mlx4_ib_sriov*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %14, %struct.mlx4_ib_sriov** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.id_map_entry* @kmalloc(i32 48, i32 %15)
  store %struct.id_map_entry* %16, %struct.id_map_entry** %10, align 8
  %17 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %18 = icmp ne %struct.id_map_entry* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.id_map_entry* @ERR_PTR(i32 %23)
  store %struct.id_map_entry* %24, %struct.id_map_entry** %4, align 8
  br label %110

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %28 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %31 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %33 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %35 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %34)
  %36 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %37 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %36, i32 0, i32 4
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %39 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %38, i32 0, i32 3
  %40 = load i32, i32* @id_map_ent_timeout, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %83, %25
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %48, i32 0, i32 2
  %50 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %51 = load i32, i32* @id_map_alloc.next_id, align 4
  %52 = call i32 @idr_get_new_above(i32* %49, %struct.id_map_entry* %50, i32 %51, i32* %9)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  %58 = load i32, i32* @MAX_ID_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* @id_map_alloc.next_id, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %64 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %66 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %67 = call i32 @sl_id_map_add(%struct.ib_device* %65, %struct.id_map_entry* %66)
  br label %68

68:                                               ; preds = %55, %42
  %69 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %78, i32 0, i32 2
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i64 @idr_pre_get(i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %77, %72
  %84 = phi i1 [ false, %72 ], [ %82, %77 ]
  br i1 %84, label %42, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %93 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %92, i32 0, i32 1
  %94 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %94, i32 0, i32 1
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  %97 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %11, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  store %struct.id_map_entry* %100, %struct.id_map_entry** %4, align 8
  br label %110

101:                                              ; preds = %85
  %102 = load %struct.id_map_entry*, %struct.id_map_entry** %10, align 8
  %103 = call i32 @kfree(%struct.id_map_entry* %102)
  %104 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  %109 = call %struct.id_map_entry* @ERR_PTR(i32 %108)
  store %struct.id_map_entry* %109, %struct.id_map_entry** %4, align 8
  br label %110

110:                                              ; preds = %101, %88, %19
  %111 = load %struct.id_map_entry*, %struct.id_map_entry** %4, align 8
  ret %struct.id_map_entry* %111
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.id_map_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, ...) #1

declare dso_local %struct.id_map_entry* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.id_map_entry*, i32, i32*) #1

declare dso_local i32 @sl_id_map_add(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.id_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
