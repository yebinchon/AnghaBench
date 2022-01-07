; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_hca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hipz_query_hca = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"response_block=%p not page aligned\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4
@H_QUERY_HCA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_query_hca(i32 %0, %struct.hipz_query_hca* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipz_adapter_handle, align 4
  %5 = alloca %struct.hipz_query_hca*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store %struct.hipz_query_hca* %1, %struct.hipz_query_hca** %5, align 8
  %8 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %9 = call i32 @virt_to_abs(%struct.hipz_query_hca* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EHCA_PAGESIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %17 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.hipz_query_hca* %16)
  %18 = load i32, i32* @H_PARAMETER, align 4
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @H_QUERY_HCA, align 4
  %21 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ehca_plpar_hcall_norets(i32 %20, i32 %22, i32 %23, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @virt_to_abs(%struct.hipz_query_hca*) #1

declare dso_local i32 @ehca_gen_err(i8*, %struct.hipz_query_hca*) #1

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
