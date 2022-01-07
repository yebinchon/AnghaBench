; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_ctm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_ctm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_16__*, i32, i32, %struct.zfcp_unit*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.zfcp_unit = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.qdio_buffer_element = type { i32, i32 }
%struct.fcp_cmnd = type { i32 }

@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@FSF_QTCB_FCP_CMND = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@zfcp_fsf_send_fcp_command_handler = common dso_local global i32 0, align 4
@FSF_DATADIR_CMND = common dso_local global i32 0, align 4
@FSF_CLASS_3 = common dso_local global i32 0, align 4
@FCP_CMND_LEN = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_WRITE = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@ZFCP_SCSI_ER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_fsf_req* @zfcp_fsf_send_fcp_ctm(%struct.zfcp_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_buffer_element*, align 8
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca %struct.fcp_cmnd*, align 8
  %9 = alloca %struct.zfcp_qdio*, align 8
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %7, align 8
  %10 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %11 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %15, align 8
  store %struct.zfcp_qdio* %16, %struct.zfcp_qdio** %9, align 8
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 3
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %3, align 8
  br label %145

28:                                               ; preds = %2
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %30 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %33 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %140

36:                                               ; preds = %28
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %38 = load i32, i32* @FSF_QTCB_FCP_CMND, align 4
  %39 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %40 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %37, i32 %38, i32 %44)
  store %struct.zfcp_fsf_req* %45, %struct.zfcp_fsf_req** %7, align 8
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %47 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %7, align 8
  br label %140

50:                                               ; preds = %36
  %51 = load i32, i32* @ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 3
  store %struct.zfcp_unit* %56, %struct.zfcp_unit** %58, align 8
  %59 = load i32, i32* @zfcp_fsf_send_fcp_command_handler, align 4
  %60 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %61 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @FSF_DATADIR_CMND, align 4
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* @FSF_CLASS_3, align 4
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %89 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i32 %87, i32* %93, align 4
  %94 = load i32, i32* @FCP_CMND_LEN, align 4
  %95 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %96 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32 %94, i32* %100, align 4
  %101 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %102 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %103 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %102, i32 0, i32 1
  %104 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %101, i32* %103)
  store %struct.qdio_buffer_element* %104, %struct.qdio_buffer_element** %6, align 8
  %105 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE, align 4
  %106 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %107 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %106, i64 0
  %108 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %112 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %113 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %112, i64 1
  %114 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %118 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = bitcast i32* %122 to %struct.fcp_cmnd*
  store %struct.fcp_cmnd* %123, %struct.fcp_cmnd** %8, align 8
  %124 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %8, align 8
  %125 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %126 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @zfcp_fc_fcp_tm(%struct.fcp_cmnd* %124, i32 %127, i32 %128)
  %130 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %131 = load i32, i32* @ZFCP_SCSI_ER_TIMEOUT, align 4
  %132 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %130, i32 %131)
  %133 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %134 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %50
  br label %140

137:                                              ; preds = %50
  %138 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %139 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %138)
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %7, align 8
  br label %140

140:                                              ; preds = %137, %136, %49, %35
  %141 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %142 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_bh(i32* %142)
  %144 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  store %struct.zfcp_fsf_req* %144, %struct.zfcp_fsf_req** %3, align 8
  br label %145

145:                                              ; preds = %140, %27
  %146 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  ret %struct.zfcp_fsf_req* %146
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fc_fcp_tm(%struct.fcp_cmnd*, i32, i32) #1

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
