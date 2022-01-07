; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i64, i32 }
%struct.c2_dev = type { i32 }
%struct.c2wr_cr_reject_req = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_cr_reject_rep = type { i32 }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_CR_REJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_llp_reject(%struct.iw_cm_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.c2_dev*, align 8
  %9 = alloca %struct.c2wr_cr_reject_req, align 8
  %10 = alloca %struct.c2_vq_req*, align 8
  %11 = alloca %struct.c2wr_cr_reject_rep*, align 8
  %12 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.c2_dev* @to_c2dev(i32 %15)
  store %struct.c2_dev* %16, %struct.c2_dev** %8, align 8
  %17 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %18 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %17)
  store %struct.c2_vq_req* %18, %struct.c2_vq_req** %10, align 8
  %19 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %20 = icmp ne %struct.c2_vq_req* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load i32, i32* @CCWR_CR_REJECT, align 4
  %26 = call i32 @c2_wr_set_id(%struct.c2wr_cr_reject_req* %9, i32 %25)
  %27 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %28 = ptrtoint %struct.c2_vq_req* %27 to i64
  %29 = getelementptr inbounds %struct.c2wr_cr_reject_req, %struct.c2wr_cr_reject_req* %9, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %32 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.c2wr_cr_reject_req, %struct.c2wr_cr_reject_req* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %36 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.c2wr_cr_reject_req, %struct.c2wr_cr_reject_req* %9, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %40 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %41 = call i32 @vq_req_get(%struct.c2_dev* %39, %struct.c2_vq_req* %40)
  %42 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %43 = bitcast %struct.c2wr_cr_reject_req* %9 to %union.c2wr*
  %44 = call i32 @vq_send_wr(%struct.c2_dev* %42, %union.c2wr* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %24
  %48 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %49 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %50 = call i32 @vq_req_put(%struct.c2_dev* %48, %struct.c2_vq_req* %49)
  br label %74

51:                                               ; preds = %24
  %52 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %53 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %54 = call i32 @vq_wait_for_reply(%struct.c2_dev* %52, %struct.c2_vq_req* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %74

58:                                               ; preds = %51
  %59 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %60 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.c2wr_cr_reject_rep*
  store %struct.c2wr_cr_reject_rep* %62, %struct.c2wr_cr_reject_rep** %11, align 8
  %63 = load %struct.c2wr_cr_reject_rep*, %struct.c2wr_cr_reject_rep** %11, align 8
  %64 = icmp ne %struct.c2wr_cr_reject_rep* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %74

68:                                               ; preds = %58
  %69 = load %struct.c2wr_cr_reject_rep*, %struct.c2wr_cr_reject_rep** %11, align 8
  %70 = call i32 @c2_errno(%struct.c2wr_cr_reject_rep* %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %72 = load %struct.c2wr_cr_reject_rep*, %struct.c2wr_cr_reject_rep** %11, align 8
  %73 = call i32 @vq_repbuf_free(%struct.c2_dev* %71, %struct.c2wr_cr_reject_rep* %72)
  br label %74

74:                                               ; preds = %68, %65, %57, %47
  %75 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %76 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %77 = call i32 @vq_req_free(%struct.c2_dev* %75, %struct.c2_vq_req* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %21
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_cr_reject_req*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_cr_reject_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_cr_reject_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
