; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_send_els = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_send_els*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_SEND_ELS = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_send_els_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_send_els(%struct.zfcp_send_els* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_send_els*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca %struct.zfcp_qdio*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_send_els* %0, %struct.zfcp_send_els** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  store %struct.zfcp_qdio* %12, %struct.zfcp_qdio** %6, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %19 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %24 = load i32, i32* @FSF_QTCB_SEND_ELS, align 4
  %25 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %23, i32 %24, i32* null)
  store %struct.zfcp_fsf_req* %25, %struct.zfcp_fsf_req** %5, align 8
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %27 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %30)
  store i32 %31, i32* %7, align 4
  br label %88

32:                                               ; preds = %22
  %33 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %39 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @zfcp_adapter_multi_buffer_active(%struct.TYPE_8__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 3
  %47 = call i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio* %44, i32* %46, i32 2)
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %50 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %51 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %54 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %49, i32 %52, i32 %55, i32 2, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %85

61:                                               ; preds = %48
  %62 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %63 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* @zfcp_fsf_send_els_handler, align 4
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 0
  store %struct.zfcp_send_els* %74, %struct.zfcp_send_els** %76, align 8
  %77 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %78 = call i32 @zfcp_dbf_san_els_request(%struct.zfcp_fsf_req* %77)
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %80 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %61
  br label %85

84:                                               ; preds = %61
  br label %88

85:                                               ; preds = %83, %60
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %87 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %86)
  br label %88

88:                                               ; preds = %85, %84, %29, %21
  %89 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %90 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_adapter_multi_buffer_active(%struct.TYPE_8__*) #1

declare dso_local i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio*, i32*, i32) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req*, i32, i32, i32, i32) #1

declare dso_local i32 @zfcp_dbf_san_els_request(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
