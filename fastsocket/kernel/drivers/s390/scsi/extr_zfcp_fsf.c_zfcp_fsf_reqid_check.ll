; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_reqid_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_reqid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_6__, %struct.zfcp_adapter* }
%struct.TYPE_6__ = type { i32, %struct.qdio_buffer** }
%struct.qdio_buffer = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i32, i64 }
%struct.zfcp_adapter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_fsf_req = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error: unknown req_id (%lx) on adapter %s.\0A\00", align 1
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fsf_reqid_check(%struct.zfcp_qdio* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.qdio_buffer*, align 8
  %7 = alloca %struct.qdio_buffer_element*, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %12, i32 0, i32 1
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %13, align 8
  store %struct.zfcp_adapter* %14, %struct.zfcp_adapter** %5, align 8
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %18, i64 %20
  %22 = load %struct.qdio_buffer*, %struct.qdio_buffer** %21, align 8
  store %struct.qdio_buffer* %22, %struct.qdio_buffer** %6, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %86, %2
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %28, i32 0, i32 0
  %30 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %30, i64 %32
  store %struct.qdio_buffer_element* %33, %struct.qdio_buffer_element** %7, align 8
  %34 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %7, align 8
  %35 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call %struct.zfcp_fsf_req* @zfcp_reqlist_find(%struct.zfcp_adapter* %41, i64 %42)
  store %struct.zfcp_fsf_req* %43, %struct.zfcp_fsf_req** %8, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %45 = icmp ne %struct.zfcp_fsf_req* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %27
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %48 = call i32 @zfcp_qdio_siosl(%struct.zfcp_adapter* %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @dev_name(i32* %53)
  %55 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %54)
  br label %56

56:                                               ; preds = %46, %27
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 1
  %59 = call i32 @list_del(i32* %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %69 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @atomic_read(i32* %70)
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %76 = call i32 @zfcp_fsf_req_complete(%struct.zfcp_fsf_req* %75)
  %77 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %7, align 8
  %78 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %81 = and i32 %79, %80
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %56
  br label %89

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %23

89:                                               ; preds = %84, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_reqlist_find(%struct.zfcp_adapter*, i64) #1

declare dso_local i32 @zfcp_qdio_siosl(%struct.zfcp_adapter*) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_fsf_req_complete(%struct.zfcp_fsf_req*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
