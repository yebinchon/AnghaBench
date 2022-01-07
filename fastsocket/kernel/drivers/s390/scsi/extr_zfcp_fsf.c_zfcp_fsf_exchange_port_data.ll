; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_fsf_req*, %struct.TYPE_4__* }
%struct.zfcp_fsf_req = type { %struct.zfcp_erp_action*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_HBAAPI_MANAGEMENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_PORT_DATA = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_port_data_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_port_data(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.qdio_buffer_element*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  store %struct.zfcp_qdio* %12, %struct.zfcp_qdio** %4, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FSF_FEATURE_HBAAPI_MANAGEMENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %1
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %28 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %31 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %93

34:                                               ; preds = %26
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %36 = load i32, i32* @FSF_QTCB_EXCHANGE_PORT_DATA, align 4
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %35, i32 %36, i32 %42)
  store %struct.zfcp_fsf_req* %43, %struct.zfcp_fsf_req** %6, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %45 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %49 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %48)
  store i32 %49, i32* %7, align 4
  br label %93

50:                                               ; preds = %34
  %51 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 2
  %59 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %56, i32* %58)
  store %struct.qdio_buffer_element* %59, %struct.qdio_buffer_element** %5, align 8
  %60 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %61 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %62 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %61, i64 0
  %63 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %67 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %68 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %67, i64 1
  %69 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @zfcp_fsf_exchange_port_data_handler, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %76 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %77 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %76, i32 0, i32 0
  store %struct.zfcp_erp_action* %75, %struct.zfcp_erp_action** %77, align 8
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %79 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %80 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %79, i32 0, i32 0
  store %struct.zfcp_fsf_req* %78, %struct.zfcp_fsf_req** %80, align 8
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %82 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %81)
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %84 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %50
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %89 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %88)
  %90 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %91 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %90, i32 0, i32 0
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %91, align 8
  br label %92

92:                                               ; preds = %87, %50
  br label %93

93:                                               ; preds = %92, %47, %33
  %94 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %23
  %99 = load i32, i32* %2, align 4
  ret i32 %99
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
