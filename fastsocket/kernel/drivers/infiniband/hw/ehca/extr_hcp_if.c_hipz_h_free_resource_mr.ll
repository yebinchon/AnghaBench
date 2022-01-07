; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_free_resource_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_free_resource_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@H_FREE_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_free_resource_mr(i32 %0, %struct.ehca_mr* %1) #0 {
  %3 = alloca %struct.ipz_adapter_handle, align 4
  %4 = alloca %struct.ehca_mr*, align 8
  %5 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  store %struct.ehca_mr* %1, %struct.ehca_mr** %4, align 8
  %6 = load i32, i32* @H_FREE_RESOURCE, align 4
  %7 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %10 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ehca_plpar_hcall_norets(i32 %6, i32 %8, i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret i32 %13
}

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
