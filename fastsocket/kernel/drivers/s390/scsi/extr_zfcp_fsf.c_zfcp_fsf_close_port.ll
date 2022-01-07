; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_fsf_req*, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.zfcp_fsf_req = type { %struct.TYPE_11__*, %struct.zfcp_erp_action*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_CLOSE_PORT = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_close_port_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_close_port(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.qdio_buffer_element*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 2
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
  br label %95

21:                                               ; preds = %1
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %23 = load i32, i32* @FSF_QTCB_CLOSE_PORT, align 4
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %22, i32 %23, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %5, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %32 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %35)
  store i32 %36, i32* %6, align 4
  br label %95

37:                                               ; preds = %21
  %38 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
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
  %59 = load i32, i32* @zfcp_fsf_close_port_handler, align 4
  %60 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %61 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %63 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 2
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %68, i32 0, i32 1
  store %struct.zfcp_erp_action* %67, %struct.zfcp_erp_action** %69, align 8
  %70 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %71 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %81 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %82 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %81, i32 0, i32 0
  store %struct.zfcp_fsf_req* %80, %struct.zfcp_fsf_req** %82, align 8
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %84 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %83)
  %85 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %86 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %37
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %91 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %90)
  %92 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %93 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %92, i32 0, i32 0
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %93, align 8
  br label %94

94:                                               ; preds = %89, %37
  br label %95

95:                                               ; preds = %94, %34, %20
  %96 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %97 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load i32, i32* %6, align 4
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
