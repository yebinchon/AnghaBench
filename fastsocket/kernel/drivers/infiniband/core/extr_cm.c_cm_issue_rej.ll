; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_issue_rej.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_issue_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_rej_msg = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CM_REJ_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_mad_recv_wc*, i32, i32, i8*, i32)* @cm_issue_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_issue_rej(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cm_port*, align 8
  %9 = alloca %struct.ib_mad_recv_wc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_mad_send_buf*, align 8
  %15 = alloca %struct.cm_rej_msg*, align 8
  %16 = alloca %struct.cm_rej_msg*, align 8
  %17 = alloca i32, align 4
  store %struct.cm_port* %0, %struct.cm_port** %8, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %14, align 8
  %18 = load %struct.cm_port*, %struct.cm_port** %8, align 8
  %19 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %9, align 8
  %20 = call i32 @cm_alloc_response_msg(%struct.cm_port* %18, %struct.ib_mad_recv_wc* %19, %struct.ib_mad_send_buf** %14)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %17, align 4
  store i32 %24, i32* %7, align 4
  br label %85

25:                                               ; preds = %6
  %26 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %9, align 8
  %27 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.cm_rej_msg*
  store %struct.cm_rej_msg* %30, %struct.cm_rej_msg** %16, align 8
  %31 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %14, align 8
  %32 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.cm_rej_msg*
  store %struct.cm_rej_msg* %34, %struct.cm_rej_msg** %15, align 8
  %35 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %36 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %35, i32 0, i32 4
  %37 = load i32, i32* @CM_REJ_ATTR_ID, align 4
  %38 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %16, align 8
  %39 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cm_format_mad_hdr(%struct.TYPE_4__* %36, i32 %37, i32 %41)
  %43 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %16, align 8
  %44 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %47 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %16, align 8
  %49 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %52 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg* %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @cpu_to_be16(i32 %56)
  %58 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %59 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %25
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @cm_rej_set_reject_info_len(%struct.cm_rej_msg* %66, i32 %67)
  %69 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %15, align 8
  %70 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @memcpy(i32 %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %62, %25
  %76 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %14, align 8
  %77 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %76, i32* null)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %14, align 8
  %82 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %23
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @cm_alloc_response_msg(%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @cm_format_mad_hdr(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cm_rej_set_reject_info_len(%struct.cm_rej_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
