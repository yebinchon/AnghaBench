; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_service_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_service_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.c2_dev = type { i32 }
%struct.c2wr_ep_listen_create_req = type { i8*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.c2wr_ep_listen_create_rep = type { i64 }
%struct.c2_vq_req = type { i64 }
%union.c2wr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCWR_EP_LISTEN_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_llp_service_create(%struct.iw_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_dev*, align 8
  %7 = alloca %struct.c2wr_ep_listen_create_req, align 8
  %8 = alloca %struct.c2wr_ep_listen_create_rep*, align 8
  %9 = alloca %struct.c2_vq_req*, align 8
  %10 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.c2_dev* @to_c2dev(i32 %13)
  store %struct.c2_dev* %14, %struct.c2_dev** %6, align 8
  %15 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %16 = icmp eq %struct.c2_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %22 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %21)
  store %struct.c2_vq_req* %22, %struct.c2_vq_req** %9, align 8
  %23 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %24 = icmp ne %struct.c2_vq_req* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %20
  %29 = load i32, i32* @CCWR_EP_LISTEN_CREATE, align 4
  %30 = call i32 @c2_wr_set_id(%struct.c2wr_ep_listen_create_req* %7, i32 %29)
  %31 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %32 = ptrtoint %struct.c2_vq_req* %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %37 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %41 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %47 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @cpu_to_be32(i32 %51)
  %53 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %55 = ptrtoint %struct.iw_cm_id* %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = getelementptr inbounds %struct.c2wr_ep_listen_create_req, %struct.c2wr_ep_listen_create_req* %7, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %59 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %60 = call i32 @vq_req_get(%struct.c2_dev* %58, %struct.c2_vq_req* %59)
  %61 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %62 = bitcast %struct.c2wr_ep_listen_create_req* %7 to %union.c2wr*
  %63 = call i32 @vq_send_wr(%struct.c2_dev* %61, %union.c2wr* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %28
  %67 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %68 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %69 = call i32 @vq_req_put(%struct.c2_dev* %67, %struct.c2_vq_req* %68)
  br label %109

70:                                               ; preds = %28
  %71 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %72 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %73 = call i32 @vq_wait_for_reply(%struct.c2_dev* %71, %struct.c2_vq_req* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %109

77:                                               ; preds = %70
  %78 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %79 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.c2wr_ep_listen_create_rep*
  store %struct.c2wr_ep_listen_create_rep* %81, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %82 = load %struct.c2wr_ep_listen_create_rep*, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %83 = icmp ne %struct.c2wr_ep_listen_create_rep* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %105

87:                                               ; preds = %77
  %88 = load %struct.c2wr_ep_listen_create_rep*, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %89 = call i32 @c2_errno(%struct.c2wr_ep_listen_create_rep* %88)
  store i32 %89, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %105

92:                                               ; preds = %87
  %93 = load %struct.c2wr_ep_listen_create_rep*, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %94 = getelementptr inbounds %struct.c2wr_ep_listen_create_rep, %struct.c2wr_ep_listen_create_rep* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %98 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %100 = load %struct.c2wr_ep_listen_create_rep*, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %101 = call i32 @vq_repbuf_free(%struct.c2_dev* %99, %struct.c2wr_ep_listen_create_rep* %100)
  %102 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %103 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %104 = call i32 @vq_req_free(%struct.c2_dev* %102, %struct.c2_vq_req* %103)
  store i32 0, i32* %3, align 4
  br label %114

105:                                              ; preds = %91, %84
  %106 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %107 = load %struct.c2wr_ep_listen_create_rep*, %struct.c2wr_ep_listen_create_rep** %8, align 8
  %108 = call i32 @vq_repbuf_free(%struct.c2_dev* %106, %struct.c2wr_ep_listen_create_rep* %107)
  br label %109

109:                                              ; preds = %105, %76, %66
  %110 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %111 = load %struct.c2_vq_req*, %struct.c2_vq_req** %9, align 8
  %112 = call i32 @vq_req_free(%struct.c2_dev* %110, %struct.c2_vq_req* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %92, %25, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_ep_listen_create_req*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_ep_listen_create_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_ep_listen_create_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
