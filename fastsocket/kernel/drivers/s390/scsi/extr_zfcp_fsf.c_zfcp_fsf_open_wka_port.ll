; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_wka_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_wka_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_wka_port = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_wka_port*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_OPEN_PORT_WITH_DID = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_open_wka_port_handler = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_open_wka_port(%struct.zfcp_wka_port* %0) #0 {
  %2 = alloca %struct.zfcp_wka_port*, align 8
  %3 = alloca %struct.qdio_buffer_element*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_wka_port* %0, %struct.zfcp_wka_port** %2, align 8
  %7 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  store %struct.zfcp_qdio* %11, %struct.zfcp_qdio** %4, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %18 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %23 = load i32, i32* @FSF_QTCB_OPEN_PORT_WITH_DID, align 4
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %22, i32 %23, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %5, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %32 = call i32 @IS_ERR(%struct.zfcp_fsf_req* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %36)
  store i32 %37, i32* %6, align 4
  br label %86

38:                                               ; preds = %21
  %39 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %41 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 3
  %47 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %44, i32* %46)
  store %struct.qdio_buffer_element* %47, %struct.qdio_buffer_element** %3, align 8
  %48 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %49 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %50 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %49, i64 0
  %51 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %55 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %56 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %55, i64 1
  %57 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @zfcp_fsf_open_wka_port_handler, align 4
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %2, align 8
  %64 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 4
  %72 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %2, align 8
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 0
  store %struct.zfcp_wka_port* %72, %struct.zfcp_wka_port** %74, align 8
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %76 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %77 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %75, i32 %76)
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %79 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %38
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %84 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %83)
  br label %85

85:                                               ; preds = %82, %38
  br label %86

86:                                               ; preds = %85, %35, %20
  %87 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %88 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
