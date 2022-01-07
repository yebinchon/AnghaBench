; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_service_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_service_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i64, i32 }
%struct.c2_dev = type { i32 }
%struct.c2wr_ep_listen_destroy_req = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.c2wr_ep_listen_destroy_rep = type { i32 }
%struct.c2_vq_req = type { i64 }
%union.c2wr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCWR_EP_LISTEN_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_llp_service_destroy(%struct.iw_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iw_cm_id*, align 8
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca %struct.c2wr_ep_listen_destroy_req, align 8
  %6 = alloca %struct.c2wr_ep_listen_destroy_rep*, align 8
  %7 = alloca %struct.c2_vq_req*, align 8
  %8 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %3, align 8
  %9 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %10 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.c2_dev* @to_c2dev(i32 %11)
  store %struct.c2_dev* %12, %struct.c2_dev** %4, align 8
  %13 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %14 = icmp eq %struct.c2_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %20 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %19)
  store %struct.c2_vq_req* %20, %struct.c2_vq_req** %7, align 8
  %21 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %22 = icmp ne %struct.c2_vq_req* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %18
  %27 = load i32, i32* @CCWR_EP_LISTEN_DESTROY, align 4
  %28 = call i32 @c2_wr_set_id(%struct.c2wr_ep_listen_destroy_req* %5, i32 %27)
  %29 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %30 = ptrtoint %struct.c2_vq_req* %29 to i64
  %31 = getelementptr inbounds %struct.c2wr_ep_listen_destroy_req, %struct.c2wr_ep_listen_destroy_req* %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %34 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.c2wr_ep_listen_destroy_req, %struct.c2wr_ep_listen_destroy_req* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %38 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.c2wr_ep_listen_destroy_req, %struct.c2wr_ep_listen_destroy_req* %5, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %42 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %43 = call i32 @vq_req_get(%struct.c2_dev* %41, %struct.c2_vq_req* %42)
  %44 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %45 = bitcast %struct.c2wr_ep_listen_destroy_req* %5 to %union.c2wr*
  %46 = call i32 @vq_send_wr(%struct.c2_dev* %44, %union.c2wr* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %51 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %52 = call i32 @vq_req_put(%struct.c2_dev* %50, %struct.c2_vq_req* %51)
  br label %80

53:                                               ; preds = %26
  %54 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %55 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %56 = call i32 @vq_wait_for_reply(%struct.c2_dev* %54, %struct.c2_vq_req* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %80

60:                                               ; preds = %53
  %61 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %62 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.c2wr_ep_listen_destroy_rep*
  store %struct.c2wr_ep_listen_destroy_rep* %64, %struct.c2wr_ep_listen_destroy_rep** %6, align 8
  %65 = load %struct.c2wr_ep_listen_destroy_rep*, %struct.c2wr_ep_listen_destroy_rep** %6, align 8
  %66 = icmp ne %struct.c2wr_ep_listen_destroy_rep* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %80

70:                                               ; preds = %60
  %71 = load %struct.c2wr_ep_listen_destroy_rep*, %struct.c2wr_ep_listen_destroy_rep** %6, align 8
  %72 = call i32 @c2_errno(%struct.c2wr_ep_listen_destroy_rep* %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %78 = load %struct.c2wr_ep_listen_destroy_rep*, %struct.c2wr_ep_listen_destroy_rep** %6, align 8
  %79 = call i32 @vq_repbuf_free(%struct.c2_dev* %77, %struct.c2wr_ep_listen_destroy_rep* %78)
  br label %80

80:                                               ; preds = %76, %67, %59, %49
  %81 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %82 = load %struct.c2_vq_req*, %struct.c2_vq_req** %7, align 8
  %83 = call i32 @vq_req_free(%struct.c2_dev* %81, %struct.c2_vq_req* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %23, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_ep_listen_destroy_req*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_ep_listen_destroy_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_ep_listen_destroy_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
