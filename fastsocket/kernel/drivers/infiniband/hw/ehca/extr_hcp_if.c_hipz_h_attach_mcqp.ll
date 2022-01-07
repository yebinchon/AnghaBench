; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_attach_mcqp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_attach_mcqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_qp_handle = type { i32 }
%struct.h_galpa = type { i32 }

@H_ATTACH_MCQP = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Not enough resources. ret=%lli\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_attach_mcqp(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ipz_adapter_handle, align 4
  %8 = alloca %struct.ipz_qp_handle, align 4
  %9 = alloca %struct.h_galpa, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  store i32 %0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %8, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.h_galpa, %struct.h_galpa* %9, i32 0, i32 0
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @H_ATTACH_MCQP, align 4
  %18 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @ehca_plpar_hcall_norets(i32 %17, i32 %19, i32 %21, i32 %22, i64 %23, i64 %24, i32 0, i32 0)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @H_NOT_ENOUGH_RESOURCES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %29, %6
  %33 = load i64, i64* %13, align 8
  ret i64 %33
}

declare dso_local i64 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
