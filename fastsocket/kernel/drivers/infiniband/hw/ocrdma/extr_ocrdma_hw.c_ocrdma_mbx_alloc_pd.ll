; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_pd = type { i32, i32, i32, i64 }
%struct.ocrdma_alloc_pd = type { i32 }
%struct.ocrdma_alloc_pd_rsp = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_ALLOC_PD = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_PD_ENABLE_DPP = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_PD_RSP_PDID_MASK = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_PD_RSP_DPP = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_PD_RSP_DPP_PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_alloc_pd(%struct.ocrdma_dev* %0, %struct.ocrdma_pd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_alloc_pd*, align 8
  %8 = alloca %struct.ocrdma_alloc_pd_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @OCRDMA_CMD_ALLOC_PD, align 4
  %12 = call %struct.ocrdma_alloc_pd* @ocrdma_init_emb_mqe(i32 %11, i32 4)
  store %struct.ocrdma_alloc_pd* %12, %struct.ocrdma_alloc_pd** %7, align 8
  %13 = load %struct.ocrdma_alloc_pd*, %struct.ocrdma_alloc_pd** %7, align 8
  %14 = icmp ne %struct.ocrdma_alloc_pd* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %19 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @OCRDMA_ALLOC_PD_ENABLE_DPP, align 4
  %24 = load %struct.ocrdma_alloc_pd*, %struct.ocrdma_alloc_pd** %7, align 8
  %25 = getelementptr inbounds %struct.ocrdma_alloc_pd, %struct.ocrdma_alloc_pd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %30 = load %struct.ocrdma_alloc_pd*, %struct.ocrdma_alloc_pd** %7, align 8
  %31 = bitcast %struct.ocrdma_alloc_pd* %30 to %struct.ocrdma_mqe*
  %32 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %29, %struct.ocrdma_mqe* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %68

36:                                               ; preds = %28
  %37 = load %struct.ocrdma_alloc_pd*, %struct.ocrdma_alloc_pd** %7, align 8
  %38 = bitcast %struct.ocrdma_alloc_pd* %37 to %struct.ocrdma_alloc_pd_rsp*
  store %struct.ocrdma_alloc_pd_rsp* %38, %struct.ocrdma_alloc_pd_rsp** %8, align 8
  %39 = load %struct.ocrdma_alloc_pd_rsp*, %struct.ocrdma_alloc_pd_rsp** %8, align 8
  %40 = getelementptr inbounds %struct.ocrdma_alloc_pd_rsp, %struct.ocrdma_alloc_pd_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCRDMA_ALLOC_PD_RSP_PDID_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ocrdma_alloc_pd_rsp*, %struct.ocrdma_alloc_pd_rsp** %8, align 8
  %47 = getelementptr inbounds %struct.ocrdma_alloc_pd_rsp, %struct.ocrdma_alloc_pd_rsp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OCRDMA_ALLOC_PD_RSP_DPP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %36
  %53 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %54 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.ocrdma_alloc_pd_rsp*, %struct.ocrdma_alloc_pd_rsp** %8, align 8
  %56 = getelementptr inbounds %struct.ocrdma_alloc_pd_rsp, %struct.ocrdma_alloc_pd_rsp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OCRDMA_ALLOC_PD_RSP_DPP_PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %61 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %67

62:                                               ; preds = %36
  %63 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %64 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %66 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.ocrdma_alloc_pd*, %struct.ocrdma_alloc_pd** %7, align 8
  %70 = call i32 @kfree(%struct.ocrdma_alloc_pd* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ocrdma_alloc_pd* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_alloc_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
