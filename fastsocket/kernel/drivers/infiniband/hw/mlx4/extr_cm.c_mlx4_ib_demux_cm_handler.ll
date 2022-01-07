; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_mlx4_ib_demux_cm_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_mlx4_ib_demux_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.id_map_entry = type { i32, i32 }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CM_REQ_ATTR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed matching slave_id by gid (0x%llx)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't find an entry for pv_cm_id 0x%x\0A\00", align 1
@CM_DREQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_REJ_ATTR_ID = common dso_local global i64 0, align 8
@CM_DREP_ATTR_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_demux_cm_handler(%struct.ib_device* %0, i32 %1, i32* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.id_map_entry*, align 8
  %12 = alloca %union.ib_gid, align 4
  %13 = alloca %union.ib_gid, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %15 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CM_REQ_ATTR_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %4
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %23 = call i32 @gid_from_req_msg(%struct.ib_device* %21, %struct.ib_mad* %22)
  %24 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %13, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = bitcast %union.ib_gid* %12 to i8*
  %27 = bitcast %union.ib_gid* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %28, i32 %29, i32 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %40 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx4_ib_warn(%struct.ib_device* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %101

46:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %101

47:                                               ; preds = %4
  %48 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %49 = call i64 @get_remote_comm_id(%struct.ib_mad* %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %51 = bitcast i64* %10 to i32*
  %52 = call %struct.id_map_entry* @id_map_get(%struct.ib_device* %50, i32* %51, i32 -1, i32 -1)
  store %struct.id_map_entry* %52, %struct.id_map_entry** %11, align 8
  %53 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %54 = icmp ne %struct.id_map_entry* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %101

60:                                               ; preds = %47
  %61 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %62 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %66 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %67 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_remote_comm_id(%struct.ib_mad* %65, i32 %68)
  %70 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %71 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CM_DREQ_ATTR_ID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %78 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %79 = call i32 @schedule_delayed(%struct.ib_device* %77, %struct.id_map_entry* %78)
  br label %100

80:                                               ; preds = %60
  %81 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %82 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CM_REJ_ATTR_ID, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %89 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CM_DREP_ATTR_ID, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87, %80
  %95 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @id_map_find_del(%struct.ib_device* %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %87
  br label %100

100:                                              ; preds = %99, %76
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %55, %46, %38
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @gid_from_req_msg(%struct.ib_device*, %struct.ib_mad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, i32) #1

declare dso_local i64 @get_remote_comm_id(%struct.ib_mad*) #1

declare dso_local %struct.id_map_entry* @id_map_get(%struct.ib_device*, i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @set_remote_comm_id(%struct.ib_mad*, i32) #1

declare dso_local i32 @schedule_delayed(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @id_map_find_del(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
