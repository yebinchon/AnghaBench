; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_mq_cq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_mq_cq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__, %struct.ocrdma_create_cq_cmd_rsp* }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_create_cq_cmd_rsp = type { i32, i32, i32, i32*, i32, i32 }
%struct.ocrdma_queue_info = type { i32, i32, i32, i32, i32 }
%struct.ocrdma_create_cq_cmd = type { i32, i32, i32, i32*, i32, i32 }

@OCRDMA_CMD_CREATE_CQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_DEF_FLAGS = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_EQID_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info*)* @ocrdma_mbx_mq_cq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev* %0, %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_queue_info*, align 8
  %6 = alloca %struct.ocrdma_queue_info*, align 8
  %7 = alloca %struct.ocrdma_create_cq_cmd*, align 8
  %8 = alloca %struct.ocrdma_create_cq_cmd_rsp*, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info** %5, align 8
  store %struct.ocrdma_queue_info* %2, %struct.ocrdma_queue_info** %6, align 8
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 1
  %12 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %11, align 8
  %13 = bitcast %struct.ocrdma_create_cq_cmd_rsp* %12 to %struct.ocrdma_create_cq_cmd*
  store %struct.ocrdma_create_cq_cmd* %13, %struct.ocrdma_create_cq_cmd** %7, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %15, align 8
  store %struct.ocrdma_create_cq_cmd_rsp* %16, %struct.ocrdma_create_cq_cmd_rsp** %8, align 8
  %17 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %18 = bitcast %struct.ocrdma_create_cq_cmd* %17 to %struct.ocrdma_create_cq_cmd_rsp*
  %19 = call i32 @memset(%struct.ocrdma_create_cq_cmd_rsp* %18, i32 0, i32 32)
  %20 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %20, i32 0, i32 5
  %22 = load i32, i32* @OCRDMA_CMD_CREATE_CQ, align 4
  %23 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %24 = call i32 @ocrdma_init_mch(i32* %21, i32 %22, i32 %23, i32 32)
  %25 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %29 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PAGES_4K_SPANNED(i32 %27, i32 %30)
  %32 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @OCRDMA_CREATE_CQ_DEF_FLAGS, align 4
  %35 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCRDMA_CREATE_CQ_EQID_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %52 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SIZE_4K, align 4
  %55 = call i32 @ocrdma_build_q_pages(i32* %47, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %57 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %61 = bitcast %struct.ocrdma_create_cq_cmd* %60 to %struct.ocrdma_create_cq_cmd_rsp*
  %62 = call i32 @be_roce_mcc_cmd(i32 %59, %struct.ocrdma_create_cq_cmd_rsp* %61, i32 32, i32* null, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %3
  %66 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %8, align 8
  %67 = getelementptr inbounds %struct.ocrdma_create_cq_cmd_rsp, %struct.ocrdma_create_cq_cmd_rsp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %72 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %74 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %3
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.ocrdma_create_cq_cmd_rsp*, i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(i32*, i32, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_cq_cmd_rsp*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
