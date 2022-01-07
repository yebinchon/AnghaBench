; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pfeq = type { i32 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_eq_handle = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Ppage counter=%llx\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_register_rpage_eq(i32 %0, i32 %1, %struct.ehca_pfeq* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipz_adapter_handle, align 4
  %10 = alloca %struct.ipz_eq_handle, align 4
  %11 = alloca %struct.ehca_pfeq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  store i32 %0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ipz_eq_handle, %struct.ipz_eq_handle* %10, i32 0, i32 0
  store i32 %1, i32* %17, align 4
  store %struct.ehca_pfeq* %2, %struct.ehca_pfeq** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @H_PARAMETER, align 4
  store i32 %23, i32* %8, align 4
  br label %34

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = getelementptr inbounds %struct.ipz_eq_handle, %struct.ipz_eq_handle* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hipz_h_register_rpage(i32 %32, i32 %25, i32 %26, i32 %28, i32 %29, i32 %30)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %24, %20
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

declare dso_local i32 @hipz_h_register_rpage(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
