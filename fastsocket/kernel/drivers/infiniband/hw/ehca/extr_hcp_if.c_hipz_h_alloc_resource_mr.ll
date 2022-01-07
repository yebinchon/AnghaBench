; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { i32 }
%struct.ehca_mr_hipzout_parms = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_pd = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_alloc_resource_mr(i32 %0, %struct.ehca_mr* %1, i64 %2, i64 %3, i8* %4, i32 %5, %struct.ehca_mr_hipzout_parms* %6) #0 {
  %8 = alloca %struct.ipz_adapter_handle, align 4
  %9 = alloca %struct.ipz_pd, align 4
  %10 = alloca %struct.ehca_mr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ehca_mr_hipzout_parms*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %8, i32 0, i32 0
  store i32 %0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %9, i32 0, i32 0
  store i32 %5, i32* %19, align 4
  store %struct.ehca_mr* %1, %struct.ehca_mr** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.ehca_mr_hipzout_parms* %6, %struct.ehca_mr_hipzout_parms** %14, align 8
  %20 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* @H_ALLOC_RESOURCE, align 4
  %25 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = shl i64 %30, 32
  %32 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ehca_plpar_hcall9(i32 %24, i64* %23, i32 %26, i32 5, i64 %27, i64 %28, i64 %31, i32 %33, i32 0, i32 0, i32 0)
  store i64 %34, i64* %15, align 8
  %35 = getelementptr inbounds i64, i64* %23, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %14, align 8
  %38 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = getelementptr inbounds i64, i64* %23, i64 2
  %41 = load i64, i64* %40, align 16
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %14, align 8
  %44 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds i64, i64* %23, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %14, align 8
  %49 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i64 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehca_plpar_hcall9(i32, i64*, i32, i32, i64, i64, i64, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
