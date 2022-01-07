; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_modify_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pfqp = type { i32 }
%struct.hcp_modify_qp_control_block = type { i32 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_qp_handle = type { i32 }
%struct.h_galpa = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_MODIFY_QP = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Insufficient resources ret=%lli\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_modify_qp(i32 %0, i32 %1, %struct.ehca_pfqp* %2, i64 %3, %struct.hcp_modify_qp_control_block* %4, i32 %5) #0 {
  %7 = alloca %struct.ipz_adapter_handle, align 4
  %8 = alloca %struct.ipz_qp_handle, align 4
  %9 = alloca %struct.h_galpa, align 4
  %10 = alloca %struct.ehca_pfqp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hcp_modify_qp_control_block*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  store i32 %0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %8, i32 0, i32 0
  store i32 %1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.h_galpa, %struct.h_galpa* %9, i32 0, i32 0
  store i32 %5, i32* %18, align 4
  store %struct.ehca_pfqp* %2, %struct.ehca_pfqp** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.hcp_modify_qp_control_block* %4, %struct.hcp_modify_qp_control_block** %12, align 8
  %19 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @H_MODIFY_QP, align 4
  %24 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.hcp_modify_qp_control_block*, %struct.hcp_modify_qp_control_block** %12, align 8
  %30 = call i32 @virt_to_abs(%struct.hcp_modify_qp_control_block* %29)
  %31 = call i64 @ehca_plpar_hcall9(i32 %23, i64* %22, i32 %25, i32 %27, i64 %28, i32 %30, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @H_NOT_ENOUGH_RESOURCES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %35, %6
  %39 = load i64, i64* %13, align 8
  %40 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i64 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehca_plpar_hcall9(i32, i64*, i32, i32, i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @virt_to_abs(%struct.hcp_modify_qp_control_block*) #2

declare dso_local i32 @ehca_gen_err(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
