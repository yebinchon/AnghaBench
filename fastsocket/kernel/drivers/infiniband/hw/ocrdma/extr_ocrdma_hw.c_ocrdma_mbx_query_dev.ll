; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mbx_query_config = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_QUERY_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_query_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_query_dev(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_mbx_query_config*, align 8
  %6 = alloca %struct.ocrdma_mqe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @OCRDMA_CMD_QUERY_CONFIG, align 4
  %10 = call %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32 %9, i32 4)
  store %struct.ocrdma_mqe* %10, %struct.ocrdma_mqe** %6, align 8
  %11 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %12 = icmp ne %struct.ocrdma_mqe* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %17 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %18 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %16, %struct.ocrdma_mqe* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %24 = bitcast %struct.ocrdma_mqe* %23 to %struct.ocrdma_mbx_query_config*
  store %struct.ocrdma_mbx_query_config* %24, %struct.ocrdma_mbx_query_config** %5, align 8
  %25 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %26, i32 0, i32 0
  %28 = load %struct.ocrdma_mbx_query_config*, %struct.ocrdma_mbx_query_config** %5, align 8
  %29 = call i32 @ocrdma_get_attr(%struct.ocrdma_dev* %25, i32* %27, %struct.ocrdma_mbx_query_config* %28)
  br label %30

30:                                               ; preds = %22, %21
  %31 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %32 = call i32 @kfree(%struct.ocrdma_mqe* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @ocrdma_get_attr(%struct.ocrdma_dev*, i32*, %struct.ocrdma_mbx_query_config*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
