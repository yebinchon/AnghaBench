; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_16__*, i32, %struct.zfcp_unit*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.zfcp_unit = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }

@FSF_QTCB_ABORT_FCP_CMND = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@zfcp_fsf_abort_fcp_command_handler = common dso_local global i32 0, align 4
@ZFCP_SCSI_ER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_command(i64 %0, %struct.zfcp_unit* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca %struct.qdio_buffer_element*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.zfcp_qdio*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.zfcp_unit* %1, %struct.zfcp_unit** %4, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  %8 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  store %struct.zfcp_qdio* %14, %struct.zfcp_qdio** %7, align 8
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %19 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %24 = load i32, i32* @FSF_QTCB_ABORT_FCP_CMND, align 4
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %26 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %23, i32 %24, i32 %30)
  store %struct.zfcp_fsf_req* %31, %struct.zfcp_fsf_req** %6, align 8
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %33 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  br label %107

36:                                               ; preds = %22
  %37 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %37, i32 0, i32 2
  %39 = call i32 @atomic_read(i32* %38)
  %40 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %104

48:                                               ; preds = %36
  %49 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 3
  %52 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %49, i32* %51)
  store %struct.qdio_buffer_element* %52, %struct.qdio_buffer_element** %5, align 8
  %53 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %54 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %55 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %54, i64 0
  %56 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %60 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %61 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %60, i64 1
  %62 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 2
  store %struct.zfcp_unit* %65, %struct.zfcp_unit** %67, align 8
  %68 = load i32, i32* @zfcp_fsf_abort_fcp_command_handler, align 4
  %69 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %70 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %72 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %75 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %80 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %85 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %91 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i64 %89, i64* %95, align 8
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %97 = load i32, i32* @ZFCP_SCSI_ER_TIMEOUT, align 4
  %98 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %96, i32 %97)
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %100 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %48
  br label %107

103:                                              ; preds = %48
  br label %104

104:                                              ; preds = %103, %47
  %105 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %106 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %105)
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  br label %107

107:                                              ; preds = %104, %102, %35, %21
  %108 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %109 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  ret %struct.zfcp_fsf_req* %111
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

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
