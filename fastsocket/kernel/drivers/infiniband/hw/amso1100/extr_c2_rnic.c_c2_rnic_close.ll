; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i64 }
%struct.c2_vq_req = type { i64 }
%union.c2wr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.c2wr_rnic_close_rep = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_RNIC_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*)* @c2_rnic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_rnic_close(%struct.c2_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_vq_req*, align 8
  %5 = alloca %union.c2wr, align 8
  %6 = alloca %struct.c2wr_rnic_close_rep*, align 8
  %7 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  %8 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %9 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %8)
  store %struct.c2_vq_req* %9, %struct.c2_vq_req** %4, align 8
  %10 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %11 = icmp eq %struct.c2_vq_req* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = call i32 @memset(%union.c2wr* %5, i32 0, i32 16)
  %17 = load i32, i32* @CCWR_RNIC_CLOSE, align 4
  %18 = call i32 @c2_wr_set_id(%union.c2wr* %5, i32 %17)
  %19 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %20 = ptrtoint %struct.c2_vq_req* %19 to i64
  %21 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %26 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %32 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %33 = call i32 @vq_req_get(%struct.c2_dev* %31, %struct.c2_vq_req* %32)
  %34 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %35 = call i32 @vq_send_wr(%struct.c2_dev* %34, %union.c2wr* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %15
  %39 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %40 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %41 = call i32 @vq_req_put(%struct.c2_dev* %39, %struct.c2_vq_req* %40)
  br label %71

42:                                               ; preds = %15
  %43 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %44 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %45 = call i32 @vq_wait_for_reply(%struct.c2_dev* %43, %struct.c2_vq_req* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %71

49:                                               ; preds = %42
  %50 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %51 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.c2wr_rnic_close_rep*
  store %struct.c2wr_rnic_close_rep* %53, %struct.c2wr_rnic_close_rep** %6, align 8
  %54 = load %struct.c2wr_rnic_close_rep*, %struct.c2wr_rnic_close_rep** %6, align 8
  %55 = icmp ne %struct.c2wr_rnic_close_rep* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %71

59:                                               ; preds = %49
  %60 = load %struct.c2wr_rnic_close_rep*, %struct.c2wr_rnic_close_rep** %6, align 8
  %61 = call i32 @c2_errno(%struct.c2wr_rnic_close_rep* %60)
  store i32 %61, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %67

64:                                               ; preds = %59
  %65 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %66 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %69 = load %struct.c2wr_rnic_close_rep*, %struct.c2wr_rnic_close_rep** %6, align 8
  %70 = call i32 @vq_repbuf_free(%struct.c2_dev* %68, %struct.c2wr_rnic_close_rep* %69)
  br label %71

71:                                               ; preds = %67, %56, %48, %38
  %72 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %73 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %74 = call i32 @vq_req_free(%struct.c2_dev* %72, %struct.c2_vq_req* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @memset(%union.c2wr*, i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%union.c2wr*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_rnic_close_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_rnic_close_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
