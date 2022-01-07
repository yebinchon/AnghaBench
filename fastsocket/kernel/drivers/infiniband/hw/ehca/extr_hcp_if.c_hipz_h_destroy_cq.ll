; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Could not destruct cp->galpas\00", align 1
@H_RESOURCE = common dso_local global i64 0, align 8
@H_FREE_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"H_FREE_RESOURCE failed ret=%lli \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_destroy_cq(i32 %0, %struct.ehca_cq* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipz_adapter_handle, align 4
  %6 = alloca %struct.ehca_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store %struct.ehca_cq* %1, %struct.ehca_cq** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %11 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %10, i32 0, i32 1
  %12 = call i64 @hcp_galpas_dtor(i32* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @H_RESOURCE, align 8
  store i64 %17, i64* %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* @H_FREE_RESOURCE, align 4
  %20 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %23 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 1, i64 0
  %30 = call i64 @ehca_plpar_hcall_norets(i32 %19, i32 %21, i32 %25, i64 %29, i32 0, i32 0, i32 0, i32 0)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @H_RESOURCE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i64, i64* %8, align 8
  %36 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %15
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i64 @hcp_galpas_dtor(i32*) #1

declare dso_local i32 @ehca_gen_err(i8*, ...) #1

declare dso_local i64 @ehca_plpar_hcall_norets(i32, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
