; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_c2_stag_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_c2_stag_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_stag_dealloc_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.c2wr_stag_dealloc_rep = type { i32 }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_STAG_DEALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_stag_dealloc(%struct.c2_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_vq_req*, align 8
  %7 = alloca %struct.c2wr_stag_dealloc_req, align 8
  %8 = alloca %struct.c2wr_stag_dealloc_rep*, align 8
  %9 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %11 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %10)
  store %struct.c2_vq_req* %11, %struct.c2_vq_req** %6, align 8
  %12 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %13 = icmp ne %struct.c2_vq_req* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load i32, i32* @CCWR_STAG_DEALLOC, align 4
  %19 = call i32 @c2_wr_set_id(%struct.c2wr_stag_dealloc_req* %7, i32 %18)
  %20 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %21 = ptrtoint %struct.c2_vq_req* %20 to i64
  %22 = getelementptr inbounds %struct.c2wr_stag_dealloc_req, %struct.c2wr_stag_dealloc_req* %7, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %25 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.c2wr_stag_dealloc_req, %struct.c2wr_stag_dealloc_req* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.c2wr_stag_dealloc_req, %struct.c2wr_stag_dealloc_req* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %32 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %33 = call i32 @vq_req_get(%struct.c2_dev* %31, %struct.c2_vq_req* %32)
  %34 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %35 = bitcast %struct.c2wr_stag_dealloc_req* %7 to %union.c2wr*
  %36 = call i32 @vq_send_wr(%struct.c2_dev* %34, %union.c2wr* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %41 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %42 = call i32 @vq_req_put(%struct.c2_dev* %40, %struct.c2_vq_req* %41)
  br label %66

43:                                               ; preds = %17
  %44 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %45 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %46 = call i32 @vq_wait_for_reply(%struct.c2_dev* %44, %struct.c2_vq_req* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %66

50:                                               ; preds = %43
  %51 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %52 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.c2wr_stag_dealloc_rep*
  store %struct.c2wr_stag_dealloc_rep* %54, %struct.c2wr_stag_dealloc_rep** %8, align 8
  %55 = load %struct.c2wr_stag_dealloc_rep*, %struct.c2wr_stag_dealloc_rep** %8, align 8
  %56 = icmp ne %struct.c2wr_stag_dealloc_rep* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load %struct.c2wr_stag_dealloc_rep*, %struct.c2wr_stag_dealloc_rep** %8, align 8
  %62 = call i32 @c2_errno(%struct.c2wr_stag_dealloc_rep* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %64 = load %struct.c2wr_stag_dealloc_rep*, %struct.c2wr_stag_dealloc_rep** %8, align 8
  %65 = call i32 @vq_repbuf_free(%struct.c2_dev* %63, %struct.c2wr_stag_dealloc_rep* %64)
  br label %66

66:                                               ; preds = %60, %57, %49, %39
  %67 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %68 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %69 = call i32 @vq_req_free(%struct.c2_dev* %67, %struct.c2_vq_req* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_stag_dealloc_req*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_stag_dealloc_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_stag_dealloc_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
