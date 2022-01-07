; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_qp_set_read_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_qp_set_read_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i32 }
%struct.c2wr_qp_modify_req = type { i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.c2wr_qp_modify_rep = type { i32 }
%struct.c2_vq_req = type { i64 }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_QP_MODIFY = common dso_local global i32 0, align 4
@C2_QP_NO_ATTR_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_qp_set_read_limits(%struct.c2_dev* %0, %struct.c2_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_dev*, align 8
  %7 = alloca %struct.c2_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.c2wr_qp_modify_req, align 8
  %11 = alloca %struct.c2wr_qp_modify_rep*, align 8
  %12 = alloca %struct.c2_vq_req*, align 8
  %13 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %6, align 8
  store %struct.c2_qp* %1, %struct.c2_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %15 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %14)
  store %struct.c2_vq_req* %15, %struct.c2_vq_req** %12, align 8
  %16 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %17 = icmp ne %struct.c2_vq_req* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %91

21:                                               ; preds = %4
  %22 = load i32, i32* @CCWR_QP_MODIFY, align 4
  %23 = call i32 @c2_wr_set_id(%struct.c2wr_qp_modify_req* %10, i32 %22)
  %24 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %25 = ptrtoint %struct.c2_vq_req* %24 to i64
  %26 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %29 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  %32 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %33 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 4
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @C2_QP_NO_ATTR_CHANGE, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @C2_QP_NO_ATTR_CHANGE, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @C2_QP_NO_ATTR_CHANGE, align 4
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.c2wr_qp_modify_req, %struct.c2wr_qp_modify_req* %10, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %52 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %53 = call i32 @vq_req_get(%struct.c2_dev* %51, %struct.c2_vq_req* %52)
  %54 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %55 = bitcast %struct.c2wr_qp_modify_req* %10 to %union.c2wr*
  %56 = call i32 @vq_send_wr(%struct.c2_dev* %54, %union.c2wr* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %21
  %60 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %61 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %62 = call i32 @vq_req_put(%struct.c2_dev* %60, %struct.c2_vq_req* %61)
  br label %86

63:                                               ; preds = %21
  %64 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %65 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %66 = call i32 @vq_wait_for_reply(%struct.c2_dev* %64, %struct.c2_vq_req* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %86

70:                                               ; preds = %63
  %71 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %72 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.c2wr_qp_modify_rep*
  store %struct.c2wr_qp_modify_rep* %74, %struct.c2wr_qp_modify_rep** %11, align 8
  %75 = load %struct.c2wr_qp_modify_rep*, %struct.c2wr_qp_modify_rep** %11, align 8
  %76 = icmp ne %struct.c2wr_qp_modify_rep* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %86

80:                                               ; preds = %70
  %81 = load %struct.c2wr_qp_modify_rep*, %struct.c2wr_qp_modify_rep** %11, align 8
  %82 = call i32 @c2_errno(%struct.c2wr_qp_modify_rep* %81)
  store i32 %82, i32* %13, align 4
  %83 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %84 = load %struct.c2wr_qp_modify_rep*, %struct.c2wr_qp_modify_rep** %11, align 8
  %85 = call i32 @vq_repbuf_free(%struct.c2_dev* %83, %struct.c2wr_qp_modify_rep* %84)
  br label %86

86:                                               ; preds = %80, %77, %69, %59
  %87 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %88 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %89 = call i32 @vq_req_free(%struct.c2_dev* %87, %struct.c2_vq_req* %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_qp_modify_req*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_qp_modify_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_qp_modify_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
