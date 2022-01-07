; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pfqp = type { i32 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_qp_handle = type { i32 }
%struct.h_galpa = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Page counter=%llx\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_register_rpage_qp(i32 %0, i32 %1, %struct.ehca_pfqp* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipz_adapter_handle, align 4
  %11 = alloca %struct.ipz_qp_handle, align 4
  %12 = alloca %struct.h_galpa, align 4
  %13 = alloca %struct.ehca_pfqp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %10, i32 0, i32 0
  store i32 %0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %11, i32 0, i32 0
  store i32 %1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.h_galpa, %struct.h_galpa* %12, i32 0, i32 0
  store i32 %7, i32* %20, align 4
  store %struct.ehca_pfqp* %2, %struct.ehca_pfqp** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load i32, i32* %17, align 4
  %25 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @H_PARAMETER, align 4
  store i32 %26, i32* %9, align 4
  br label %37

27:                                               ; preds = %8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = getelementptr inbounds %struct.ipz_qp_handle, %struct.ipz_qp_handle* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hipz_h_register_rpage(i32 %35, i32 %28, i32 %29, i32 %31, i32 %32, i32 %33)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %27, %23
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

declare dso_local i32 @hipz_h_register_rpage(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
