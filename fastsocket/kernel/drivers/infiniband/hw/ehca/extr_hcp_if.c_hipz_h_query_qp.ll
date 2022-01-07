; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pfqp = type { i32 }
%struct.hcp_modify_qp_control_block = type { i32 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_qp_handle = type { i32 }
%struct.h_galpa = type { i32 }

@H_QUERY_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_query_qp(i32 %0, i32 %1, %struct.ehca_pfqp* %2, %struct.hcp_modify_qp_control_block* %3, i32 %4) #0 {
  %6 = alloca %struct.ipz_adapter_handle, align 4
  %7 = alloca %struct.ipz_qp_handle, align 4
  %8 = alloca %struct.h_galpa, align 4
  %9 = alloca %struct.ehca_pfqp*, align 8
  %10 = alloca %struct.hcp_modify_qp_control_block*, align 8
  %11 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %6, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %7, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.h_galpa, %struct.h_galpa* %8, i32 0, i32 0
  store i32 %4, i32* %13, align 4
  store %struct.ehca_pfqp* %2, %struct.ehca_pfqp** %9, align 8
  store %struct.hcp_modify_qp_control_block* %3, %struct.hcp_modify_qp_control_block** %10, align 8
  %14 = load i32, i32* @H_QUERY_QP, align 4
  %15 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hcp_modify_qp_control_block*, %struct.hcp_modify_qp_control_block** %10, align 8
  %20 = call i32 @virt_to_abs(%struct.hcp_modify_qp_control_block* %19)
  %21 = call i32 @ehca_plpar_hcall_norets(i32 %14, i32 %16, i32 %18, i32 %20, i32 0, i32 0, i32 0, i32 0)
  ret i32 %21
}

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_abs(%struct.hcp_modify_qp_control_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
