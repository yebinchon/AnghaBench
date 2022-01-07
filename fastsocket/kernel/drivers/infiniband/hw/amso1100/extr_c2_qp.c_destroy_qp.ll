; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }
%struct.c2_vq_req = type { i64, i32, %struct.TYPE_5__*, %struct.c2_qp* }
%struct.c2wr_qp_destroy_req = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.c2wr_qp_destroy_rep = type { i32 }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_QP_DESTROY = common dso_local global i32 0, align 4
@IB_QPS_RTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"destroy_qp: generating CLOSE event for QP-->ERR, qp=%p, cm_id=%p\0A\00", align 1
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, %struct.c2_qp*)* @destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_qp(%struct.c2_dev* %0, %struct.c2_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca %struct.c2_qp*, align 8
  %6 = alloca %struct.c2_vq_req*, align 8
  %7 = alloca %struct.c2wr_qp_destroy_req, align 8
  %8 = alloca %struct.c2wr_qp_destroy_rep*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store %struct.c2_qp* %1, %struct.c2_qp** %5, align 8
  %11 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %12 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %11)
  store %struct.c2_vq_req* %12, %struct.c2_vq_req** %6, align 8
  %13 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %14 = icmp ne %struct.c2_vq_req* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %132

18:                                               ; preds = %2
  %19 = load i32, i32* @CCWR_QP_DESTROY, align 4
  %20 = call i32 @c2_wr_set_id(%struct.c2wr_qp_destroy_req* %7, i32 %19)
  %21 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %22 = ptrtoint %struct.c2_vq_req* %21 to i64
  %23 = getelementptr inbounds %struct.c2wr_qp_destroy_req, %struct.c2wr_qp_destroy_req* %7, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %26 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.c2wr_qp_destroy_req, %struct.c2wr_qp_destroy_req* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %30 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.c2wr_qp_destroy_req, %struct.c2wr_qp_destroy_req* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %34 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %35 = call i32 @vq_req_get(%struct.c2_dev* %33, %struct.c2_vq_req* %34)
  %36 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %37 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %36, i32 0, i32 1
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %41 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %18
  %45 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %46 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_QPS_RTS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %52 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %53 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.c2_qp* %51, %struct.TYPE_5__* %54)
  %56 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %57 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %58 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %57, i32 0, i32 3
  store %struct.c2_qp* %56, %struct.c2_qp** %58, align 8
  %59 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %60 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %63 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %62, i32 0, i32 2
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %65 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %66 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %50, %44, %18
  %68 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %69 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %68, i32 0, i32 1
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %73 = bitcast %struct.c2wr_qp_destroy_req* %7 to %union.c2wr*
  %74 = call i32 @vq_send_wr(%struct.c2_dev* %72, %union.c2wr* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %79 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %80 = call i32 @vq_req_put(%struct.c2_dev* %78, %struct.c2_vq_req* %79)
  br label %127

81:                                               ; preds = %67
  %82 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %83 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %84 = call i32 @vq_wait_for_reply(%struct.c2_dev* %82, %struct.c2_vq_req* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %127

88:                                               ; preds = %81
  %89 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %90 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.c2wr_qp_destroy_rep*
  store %struct.c2wr_qp_destroy_rep* %92, %struct.c2wr_qp_destroy_rep** %8, align 8
  %93 = load %struct.c2wr_qp_destroy_rep*, %struct.c2wr_qp_destroy_rep** %8, align 8
  %94 = icmp ne %struct.c2wr_qp_destroy_rep* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %127

98:                                               ; preds = %88
  %99 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %100 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %99, i32 0, i32 1
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %104 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %109 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %111, align 8
  %113 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %114 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = call i32 %112(%struct.TYPE_5__* %115)
  %117 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %118 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %117, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %118, align 8
  br label %119

119:                                              ; preds = %107, %98
  %120 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %121 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %120, i32 0, i32 1
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %125 = load %struct.c2wr_qp_destroy_rep*, %struct.c2wr_qp_destroy_rep** %8, align 8
  %126 = call i32 @vq_repbuf_free(%struct.c2_dev* %124, %struct.c2wr_qp_destroy_rep* %125)
  br label %127

127:                                              ; preds = %119, %95, %87, %77
  %128 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %129 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %130 = call i32 @vq_req_free(%struct.c2_dev* %128, %struct.c2_vq_req* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %15
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_qp_destroy_req*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, %struct.c2_qp*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_qp_destroy_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
