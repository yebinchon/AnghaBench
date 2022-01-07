; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_mq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_3__, %struct.ocrdma_create_mq_rsp* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_create_mq_rsp = type { i32, i32, i32, %struct.ocrdma_pa*, i32, i32, i32, %struct.TYPE_4__ }
%struct.ocrdma_pa = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_queue_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_create_mq_req = type { i32, i32, i32, %struct.ocrdma_pa*, i32, i32, i32, %struct.TYPE_4__ }

@OCRDMA_CMD_CREATE_MQ_EXT = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_CQ_ID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_ASYNC_CQ_VALID = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_VALID = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info*)* @ocrdma_mbx_create_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev* %0, %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_queue_info*, align 8
  %6 = alloca %struct.ocrdma_queue_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_create_mq_req*, align 8
  %10 = alloca %struct.ocrdma_create_mq_rsp*, align 8
  %11 = alloca %struct.ocrdma_pa*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info** %5, align 8
  store %struct.ocrdma_queue_info* %2, %struct.ocrdma_queue_info** %6, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %13, align 8
  %15 = bitcast %struct.ocrdma_create_mq_rsp* %14 to %struct.ocrdma_create_mq_req*
  store %struct.ocrdma_create_mq_req* %15, %struct.ocrdma_create_mq_req** %9, align 8
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 1
  %18 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %17, align 8
  store %struct.ocrdma_create_mq_rsp* %18, %struct.ocrdma_create_mq_rsp** %10, align 8
  %19 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %20 = bitcast %struct.ocrdma_create_mq_req* %19 to %struct.ocrdma_create_mq_rsp*
  %21 = call i32 @memset(%struct.ocrdma_create_mq_rsp* %20, i32 0, i32 40)
  %22 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %23 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PAGES_4K_SPANNED(i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %30 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %29, i32 0, i32 7
  %31 = load i32, i32* @OCRDMA_CMD_CREATE_MQ_EXT, align 4
  %32 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %33 = call i32 @ocrdma_init_mch(%struct.TYPE_4__* %30, i32 %31, i32 %32, i32 40)
  %34 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %35 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %39 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %41 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCRDMA_CREATE_MQ_CQ_ID_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %46 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @OCRDMA_CREATE_MQ_ASYNC_CQ_VALID, align 4
  %50 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %51 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = call i32 @Bit(i32 20)
  %53 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %54 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %56 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %59 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %61 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ocrdma_encoded_q_len(i32 %62)
  %64 = load i32, i32* @OCRDMA_CREATE_MQ_RING_SIZE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %67 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @OCRDMA_CREATE_MQ_VALID, align 4
  %71 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %72 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %74 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %73, i32 0, i32 3
  %75 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %74, align 8
  %76 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %75, i64 0
  store %struct.ocrdma_pa* %76, %struct.ocrdma_pa** %11, align 8
  %77 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %11, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %80 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PAGE_SIZE_4K, align 4
  %83 = call i32 @ocrdma_build_q_pages(%struct.ocrdma_pa* %77, i32 %78, i32 %81, i32 %82)
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %85 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %89 = bitcast %struct.ocrdma_create_mq_req* %88 to %struct.ocrdma_create_mq_rsp*
  %90 = call i32 @be_roce_mcc_cmd(i32 %87, %struct.ocrdma_create_mq_rsp* %89, i32 40, i32* null, i32* null)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %3
  %94 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %10, align 8
  %95 = getelementptr inbounds %struct.ocrdma_create_mq_rsp, %struct.ocrdma_create_mq_rsp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %98 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %100 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %3
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.ocrdma_create_mq_rsp*, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @Bit(i32) #1

declare dso_local i32 @ocrdma_encoded_q_len(i32) #1

declare dso_local i32 @ocrdma_build_q_pages(%struct.ocrdma_pa*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_mq_rsp*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
