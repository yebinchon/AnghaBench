; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_vq_req = type { i64 }
%union.c2wr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.c2wr_rnic_open_rep = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_RNIC_OPEN = common dso_local global i32 0, align 4
@RNIC_PRIV_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*)* @c2_rnic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_rnic_open(%struct.c2_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_vq_req*, align 8
  %5 = alloca %union.c2wr, align 8
  %6 = alloca %struct.c2wr_rnic_open_rep*, align 8
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
  br label %87

15:                                               ; preds = %1
  %16 = call i32 @memset(%union.c2wr* %5, i32 0, i32 32)
  %17 = load i32, i32* @CCWR_RNIC_OPEN, align 4
  %18 = call i32 @c2_wr_set_id(%union.c2wr* %5, i32 %17)
  %19 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %20 = ptrtoint %struct.c2_vq_req* %19 to i64
  %21 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load i32, i32* @RNIC_PRIV_MODE, align 4
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = call i8* @cpu_to_be16(i32 0)
  %31 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %35 = ptrtoint %struct.c2_dev* %34 to i64
  %36 = bitcast %union.c2wr* %5 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %40 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %41 = call i32 @vq_req_get(%struct.c2_dev* %39, %struct.c2_vq_req* %40)
  %42 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %43 = call i32 @vq_send_wr(%struct.c2_dev* %42, %union.c2wr* %5)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %15
  %47 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %48 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %49 = call i32 @vq_req_put(%struct.c2_dev* %47, %struct.c2_vq_req* %48)
  br label %82

50:                                               ; preds = %15
  %51 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %52 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %53 = call i32 @vq_wait_for_reply(%struct.c2_dev* %51, %struct.c2_vq_req* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %82

57:                                               ; preds = %50
  %58 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %59 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.c2wr_rnic_open_rep*
  store %struct.c2wr_rnic_open_rep* %61, %struct.c2wr_rnic_open_rep** %6, align 8
  %62 = load %struct.c2wr_rnic_open_rep*, %struct.c2wr_rnic_open_rep** %6, align 8
  %63 = icmp ne %struct.c2wr_rnic_open_rep* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %82

67:                                               ; preds = %57
  %68 = load %struct.c2wr_rnic_open_rep*, %struct.c2wr_rnic_open_rep** %6, align 8
  %69 = call i32 @c2_errno(%struct.c2wr_rnic_open_rep* %68)
  store i32 %69, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67
  %73 = load %struct.c2wr_rnic_open_rep*, %struct.c2wr_rnic_open_rep** %6, align 8
  %74 = getelementptr inbounds %struct.c2wr_rnic_open_rep, %struct.c2wr_rnic_open_rep* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %77 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %80 = load %struct.c2wr_rnic_open_rep*, %struct.c2wr_rnic_open_rep** %6, align 8
  %81 = call i32 @vq_repbuf_free(%struct.c2_dev* %79, %struct.c2wr_rnic_open_rep* %80)
  br label %82

82:                                               ; preds = %78, %64, %56, %46
  %83 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %84 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %85 = call i32 @vq_req_free(%struct.c2_dev* %83, %struct.c2_vq_req* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @memset(%union.c2wr*, i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%union.c2wr*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_rnic_open_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_rnic_open_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
