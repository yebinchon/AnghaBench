; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hipz_query_port = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"response block not page aligned\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4
@H_QUERY_PORT = common dso_local global i32 0, align 4
@ehca_debug_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"response_block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_query_port(i32 %0, i32 %1, %struct.hipz_query_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipz_adapter_handle, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hipz_query_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %6, align 4
  store %struct.hipz_query_port* %2, %struct.hipz_query_port** %7, align 8
  %11 = load %struct.hipz_query_port*, %struct.hipz_query_port** %7, align 8
  %12 = call i32 @virt_to_abs(%struct.hipz_query_port* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @EHCA_PAGESIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @H_PARAMETER, align 4
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* @H_QUERY_PORT, align 4
  %23 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ehca_plpar_hcall_norets(i32 %22, i32 %24, i32 %25, i32 %26, i32 0, i32 0, i32 0, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @ehca_debug_level, align 4
  %29 = icmp sge i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.hipz_query_port*, %struct.hipz_query_port** %7, align 8
  %32 = call i32 @ehca_dmp(%struct.hipz_query_port* %31, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @virt_to_abs(%struct.hipz_query_port*) #1

declare dso_local i32 @ehca_gen_err(i8*) #1

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ehca_dmp(%struct.hipz_query_port*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
