; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_config_data_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_config_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32 }
%struct.fsf_qtcb_bottom_config = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }
%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb_bottom_config*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_CONFIG_DATA = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_config_data_handler = common dso_local global i32 0, align 4
@FSF_FEATURE_CFDC = common dso_local global i32 0, align 4
@FSF_FEATURE_LUN_SHARING = common dso_local global i32 0, align 4
@FSF_FEATURE_NOTIFICATION_LOST = common dso_local global i32 0, align 4
@FSF_FEATURE_UPDATE_ALERT = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_config_data_sync(%struct.zfcp_qdio* %0, %struct.fsf_qtcb_bottom_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.fsf_qtcb_bottom_config*, align 8
  %6 = alloca %struct.qdio_buffer_element*, align 8
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.fsf_qtcb_bottom_config* %1, %struct.fsf_qtcb_bottom_config** %5, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %7, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %15 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %20 = load i32, i32* @FSF_QTCB_EXCHANGE_CONFIG_DATA, align 4
  %21 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %19, i32 %20, i32* null)
  store %struct.zfcp_fsf_req* %21, %struct.zfcp_fsf_req** %7, align 8
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %23 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %26)
  store i32 %27, i32* %8, align 4
  br label %86

28:                                               ; preds = %18
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %30, i32 0, i32 4
  %32 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %29, i32* %31)
  store %struct.qdio_buffer_element* %32, %struct.qdio_buffer_element** %6, align 8
  %33 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %34 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %35 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %34, i64 0
  %36 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %40 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %41 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %40, i64 1
  %42 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @zfcp_fsf_exchange_config_data_handler, align 4
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @FSF_FEATURE_CFDC, align 4
  %49 = load i32, i32* @FSF_FEATURE_LUN_SHARING, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FSF_FEATURE_NOTIFICATION_LOST, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FSF_FEATURE_UPDATE_ALERT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %5, align 8
  %62 = icmp ne %struct.fsf_qtcb_bottom_config* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %28
  %64 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %5, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 1
  store %struct.fsf_qtcb_bottom_config* %64, %struct.fsf_qtcb_bottom_config** %66, align 8
  br label %67

67:                                               ; preds = %63, %28
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %69 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %70 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %68, i32 %69)
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %72 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %74 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  %81 = call i32 @wait_for_completion(i32* %80)
  br label %82

82:                                               ; preds = %78, %67
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %84 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %91

86:                                               ; preds = %25, %17
  %87 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %88 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
