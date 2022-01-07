; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsf_qtcb_bottom_port = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }
%struct.zfcp_fsf_req = type { i32, i32, i32, %struct.fsf_qtcb_bottom_port* }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_HBAAPI_MANAGEMENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_PORT_DATA = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_port_data_handler = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_port_data_sync(%struct.zfcp_qdio* %0, %struct.fsf_qtcb_bottom_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  %6 = alloca %struct.qdio_buffer_element*, align 8
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.fsf_qtcb_bottom_port* %1, %struct.fsf_qtcb_bottom_port** %5, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %7, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FSF_FEATURE_HBAAPI_MANAGEMENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %2
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %24 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %27 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %85

30:                                               ; preds = %22
  %31 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %32 = load i32, i32* @FSF_QTCB_EXCHANGE_PORT_DATA, align 4
  %33 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %31, i32 %32, i32* null)
  store %struct.zfcp_fsf_req* %33, %struct.zfcp_fsf_req** %7, align 8
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %35 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %38)
  store i32 %39, i32* %8, align 4
  br label %85

40:                                               ; preds = %30
  %41 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %42 = icmp ne %struct.fsf_qtcb_bottom_port* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 3
  store %struct.fsf_qtcb_bottom_port* %44, %struct.fsf_qtcb_bottom_port** %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 2
  %51 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %48, i32* %50)
  store %struct.qdio_buffer_element* %51, %struct.qdio_buffer_element** %6, align 8
  %52 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %53 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %54 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %53, i64 0
  %55 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %59 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %60 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %59, i64 1
  %61 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @zfcp_fsf_exchange_port_data_handler, align 4
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %68 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %69 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %67, i32 %68)
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %71 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %73 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %47
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 0
  %80 = call i32 @wait_for_completion(i32* %79)
  br label %81

81:                                               ; preds = %77, %47
  %82 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %83 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %37, %29
  %86 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %87 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %81, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
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
