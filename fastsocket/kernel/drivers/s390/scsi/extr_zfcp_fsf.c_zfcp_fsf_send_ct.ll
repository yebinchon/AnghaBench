; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_send_ct = type { i32, i32, %struct.zfcp_wka_port* }
%struct.zfcp_wka_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_send_ct*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_SEND_GENERIC = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@FSF_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@zfcp_fsf_send_ct_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_send_ct(%struct.zfcp_send_ct* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_send_ct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_wka_port*, align 8
  %8 = alloca %struct.zfcp_qdio*, align 8
  %9 = alloca %struct.zfcp_fsf_req*, align 8
  %10 = alloca i32, align 4
  store %struct.zfcp_send_ct* %0, %struct.zfcp_send_ct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %11, i32 0, i32 2
  %13 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %12, align 8
  store %struct.zfcp_wka_port* %13, %struct.zfcp_wka_port** %7, align 8
  %14 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %7, align 8
  %15 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %17, align 8
  store %struct.zfcp_qdio* %18, %struct.zfcp_qdio** %8, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %8, align 8
  %22 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %8, align 8
  %25 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %84

28:                                               ; preds = %3
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %8, align 8
  %30 = load i32, i32* @FSF_QTCB_SEND_GENERIC, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %29, i32 %30, i32* %31)
  store %struct.zfcp_fsf_req* %32, %struct.zfcp_fsf_req** %9, align 8
  %33 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %34 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %37)
  store i32 %38, i32* %10, align 4
  br label %84

39:                                               ; preds = %28
  %40 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %46 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %47 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %45, i32 %48, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %81

58:                                               ; preds = %39
  %59 = load i32, i32* @zfcp_fsf_send_ct_handler, align 4
  %60 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %61 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %7, align 8
  %63 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  store %struct.zfcp_send_ct* %70, %struct.zfcp_send_ct** %72, align 8
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %74 = call i32 @zfcp_dbf_san_ct_request(%struct.zfcp_fsf_req* %73)
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %76 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %81

80:                                               ; preds = %58
  br label %84

81:                                               ; preds = %79, %57
  %82 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %83 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %82)
  br label %84

84:                                               ; preds = %81, %80, %36, %27
  %85 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %8, align 8
  %86 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req*, i32, i32, i32, i32) #1

declare dso_local i32 @zfcp_dbf_san_ct_request(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
