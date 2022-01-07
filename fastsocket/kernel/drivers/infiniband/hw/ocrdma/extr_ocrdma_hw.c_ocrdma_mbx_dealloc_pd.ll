; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_pd = type { i32 }
%struct.ocrdma_dealloc_pd = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_DEALLOC_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_dealloc_pd(%struct.ocrdma_dev* %0, %struct.ocrdma_pd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_dealloc_pd*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @OCRDMA_CMD_DEALLOC_PD, align 4
  %11 = call %struct.ocrdma_dealloc_pd* @ocrdma_init_emb_mqe(i32 %10, i32 4)
  store %struct.ocrdma_dealloc_pd* %11, %struct.ocrdma_dealloc_pd** %7, align 8
  %12 = load %struct.ocrdma_dealloc_pd*, %struct.ocrdma_dealloc_pd** %7, align 8
  %13 = icmp ne %struct.ocrdma_dealloc_pd* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %18 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ocrdma_dealloc_pd*, %struct.ocrdma_dealloc_pd** %7, align 8
  %21 = getelementptr inbounds %struct.ocrdma_dealloc_pd, %struct.ocrdma_dealloc_pd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %23 = load %struct.ocrdma_dealloc_pd*, %struct.ocrdma_dealloc_pd** %7, align 8
  %24 = bitcast %struct.ocrdma_dealloc_pd* %23 to %struct.ocrdma_mqe*
  %25 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %22, %struct.ocrdma_mqe* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ocrdma_dealloc_pd*, %struct.ocrdma_dealloc_pd** %7, align 8
  %27 = call i32 @kfree(%struct.ocrdma_dealloc_pd* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ocrdma_dealloc_pd* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_dealloc_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
