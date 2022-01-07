; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_fsf_req*, %struct.zfcp_port*, %struct.TYPE_7__* }
%struct.zfcp_fsf_req = type { %struct.zfcp_erp_action*, %struct.zfcp_port*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_OPEN_PORT_WITH_DID = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_open_port_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_open_port(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.qdio_buffer_element*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_port*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  store %struct.zfcp_qdio* %12, %struct.zfcp_qdio** %4, align 8
  %13 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %13, i32 0, i32 1
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %14, align 8
  store %struct.zfcp_port* %15, %struct.zfcp_port** %5, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %22 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %27 = load i32, i32* @FSF_QTCB_OPEN_PORT_WITH_DID, align 4
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %26, i32 %27, i32 %33)
  store %struct.zfcp_fsf_req* %34, %struct.zfcp_fsf_req** %6, align 8
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %36 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %39)
  store i32 %40, i32* %7, align 4
  br label %100

41:                                               ; preds = %25
  %42 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 4
  %50 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %47, i32* %49)
  store %struct.qdio_buffer_element* %50, %struct.qdio_buffer_element** %3, align 8
  %51 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %52 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %53 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %52, i64 0
  %54 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %58 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  %59 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %58, i64 1
  %60 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @zfcp_fsf_open_port_handler, align 4
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %67 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %70 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %68, i32* %74, align 4
  %75 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %76 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %77 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %76, i32 0, i32 1
  store %struct.zfcp_port* %75, %struct.zfcp_port** %77, align 8
  %78 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  store %struct.zfcp_erp_action* %78, %struct.zfcp_erp_action** %80, align 8
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %82 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %83 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %82, i32 0, i32 0
  store %struct.zfcp_fsf_req* %81, %struct.zfcp_fsf_req** %83, align 8
  %84 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %85 = call i32 @zfcp_port_get(%struct.zfcp_port* %84)
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %87 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %86)
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %89 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %41
  %93 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %94 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %93)
  %95 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %96 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %95, i32 0, i32 0
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %96, align 8
  %97 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %98 = call i32 @zfcp_port_put(%struct.zfcp_port* %97)
  br label %99

99:                                               ; preds = %92, %41
  br label %100

100:                                              ; preds = %99, %38, %24
  %101 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %102 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock_bh(i32* %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
