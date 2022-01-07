; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_fsf_req*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.zfcp_adapter* }
%struct.zfcp_fsf_req = type { %struct.TYPE_14__*, %struct.zfcp_erp_action*, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.zfcp_adapter = type { i32, %struct.TYPE_8__, %struct.zfcp_qdio* }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_qdio = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_OPEN_LUN = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_open_unit_handler = common dso_local global i32 0, align 4
@FSF_FEATURE_NPIV_MODE = common dso_local global i32 0, align 4
@FSF_OPEN_LUN_SUPPRESS_BOXING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_open_unit(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.qdio_buffer_element*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 3
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %4, align 8
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 2
  %13 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  store %struct.zfcp_qdio* %13, %struct.zfcp_qdio** %5, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %17 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %20 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %121

23:                                               ; preds = %1
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %25 = load i32, i32* @FSF_QTCB_OPEN_LUN, align 4
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %24, i32 %25, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %6, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %32 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %35)
  store i32 %36, i32* %7, align 4
  br label %121

37:                                               ; preds = %23
  %38 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 4
  %46 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %43, i32* %45)
  store %struct.qdio_buffer_element* %46, %struct.qdio_buffer_element** %3, align 8
  %47 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %48 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %49 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %48, i64 0
  %50 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %54 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %55 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %54, i64 1
  %56 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %60 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 4
  %69 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %70 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %75 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* @zfcp_fsf_open_unit_handler, align 4
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %84 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %87 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %86, i32 0, i32 2
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %87, align 8
  %88 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %89 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %90 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %89, i32 0, i32 1
  store %struct.zfcp_erp_action* %88, %struct.zfcp_erp_action** %90, align 8
  %91 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %92 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %93 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %92, i32 0, i32 0
  store %struct.zfcp_fsf_req* %91, %struct.zfcp_fsf_req** %93, align 8
  %94 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @FSF_FEATURE_NPIV_MODE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %37
  %101 = load i32, i32* @FSF_OPEN_LUN_SUPPRESS_BOXING, align 4
  %102 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %103 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %37
  %109 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %110 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %109)
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %112 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %117 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %116)
  %118 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %119 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %118, i32 0, i32 0
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %119, align 8
  br label %120

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %34, %22
  %122 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %123 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock_bh(i32* %123)
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
