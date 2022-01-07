; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.zfcp_fsf_req = type { %struct.TYPE_5__, %struct.fsf_status_read_buffer* }
%struct.TYPE_5__ = type { i32 }
%struct.fsf_status_read_buffer = type { i32 }
%struct.qdio_buffer_element = type { i32, i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_status_read(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.fsf_status_read_buffer*, align 8
  %6 = alloca %struct.qdio_buffer_element*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %8, i32 0, i32 1
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %3, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %17 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %22 = load i32, i32* @FSF_QTCB_UNSOLICITED_STATUS, align 4
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %21, i32 %22, i32 %26)
  store %struct.zfcp_fsf_req* %27, %struct.zfcp_fsf_req** %4, align 8
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %29 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %32)
  store i32 %33, i32* %7, align 4
  br label %95

34:                                               ; preds = %20
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %36, i32 0, i32 0
  %38 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %35, %struct.TYPE_5__* %37)
  store %struct.qdio_buffer_element* %38, %struct.qdio_buffer_element** %6, align 8
  %39 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %40 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %41 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %40, i64 2
  %42 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.fsf_status_read_buffer* @mempool_alloc(i32 %51, i32 %52)
  store %struct.fsf_status_read_buffer* %53, %struct.fsf_status_read_buffer** %5, align 8
  %54 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %55 = icmp ne %struct.fsf_status_read_buffer* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %34
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %88

59:                                               ; preds = %34
  %60 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %61 = call i32 @memset(%struct.fsf_status_read_buffer* %60, i32 0, i32 4)
  %62 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 1
  store %struct.fsf_status_read_buffer* %62, %struct.fsf_status_read_buffer** %64, align 8
  %65 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 0
  %68 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %65, %struct.TYPE_5__* %67)
  store %struct.qdio_buffer_element* %68, %struct.qdio_buffer_element** %6, align 8
  %69 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %70 = bitcast %struct.fsf_status_read_buffer* %69 to i8*
  %71 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %72 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %74 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %76 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %81

80:                                               ; preds = %59
  br label %95

81:                                               ; preds = %79
  %82 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mempool_free(%struct.fsf_status_read_buffer* %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %56
  %89 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %90 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %89)
  %91 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @zfcp_dbf_hba_fsf_unsol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %93, i32* null)
  br label %95

95:                                               ; preds = %88, %80, %31, %19
  %96 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %97 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.TYPE_5__*) #1

declare dso_local %struct.fsf_status_read_buffer* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.fsf_status_read_buffer*, i32, i32) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio*, %struct.TYPE_5__*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @mempool_free(%struct.fsf_status_read_buffer*, i32) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_dbf_hba_fsf_unsol(i8*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
