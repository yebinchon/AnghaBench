; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_fw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_fw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ocrdma_fw_conf_rsp = type { i32 }
%struct.ocrdma_mbx_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_GET_FW_CONFIG = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_query_fw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_query_fw_config(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_mqe*, align 8
  %6 = alloca %struct.ocrdma_fw_conf_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @OCRDMA_CMD_GET_FW_CONFIG, align 4
  %10 = call %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32 %9, i32 8)
  store %struct.ocrdma_mqe* %10, %struct.ocrdma_mqe** %5, align 8
  %11 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %12 = icmp ne %struct.ocrdma_mqe* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %18 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to %struct.ocrdma_mbx_hdr*
  %23 = load i32, i32* @OCRDMA_CMD_GET_FW_CONFIG, align 4
  %24 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %25 = call i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %22, i32 %23, i32 %24, i32 8)
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %27 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %28 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %26, %struct.ocrdma_mqe* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %38

32:                                               ; preds = %16
  %33 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %34 = bitcast %struct.ocrdma_mqe* %33 to %struct.ocrdma_fw_conf_rsp*
  store %struct.ocrdma_fw_conf_rsp* %34, %struct.ocrdma_fw_conf_rsp** %6, align 8
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %36 = load %struct.ocrdma_fw_conf_rsp*, %struct.ocrdma_fw_conf_rsp** %6, align 8
  %37 = call i32 @ocrdma_check_fw_config(%struct.ocrdma_dev* %35, %struct.ocrdma_fw_conf_rsp* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %40 = call i32 @kfree(%struct.ocrdma_mqe* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @ocrdma_check_fw_config(%struct.ocrdma_dev*, %struct.ocrdma_fw_conf_rsp*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
