; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mw = type { i32 }
%struct.ehca_mw_hipzout_parms = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_pd = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_alloc_resource_mw(i32 %0, %struct.ehca_mw* %1, i32 %2, %struct.ehca_mw_hipzout_parms* %3) #0 {
  %5 = alloca %struct.ipz_adapter_handle, align 4
  %6 = alloca %struct.ipz_pd, align 4
  %7 = alloca %struct.ehca_mw*, align 8
  %8 = alloca %struct.ehca_mw_hipzout_parms*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.ehca_mw* %1, %struct.ehca_mw** %7, align 8
  store %struct.ehca_mw_hipzout_parms* %3, %struct.ehca_mw_hipzout_parms** %8, align 8
  %14 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @H_ALLOC_RESOURCE, align 4
  %19 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ehca_plpar_hcall9(i32 %18, i64* %17, i32 %20, i32 6, i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds i64, i64* %17, i64 0
  %25 = load i64, i64* %24, align 16
  %26 = load %struct.ehca_mw_hipzout_parms*, %struct.ehca_mw_hipzout_parms** %8, align 8
  %27 = getelementptr inbounds %struct.ehca_mw_hipzout_parms, %struct.ehca_mw_hipzout_parms* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = getelementptr inbounds i64, i64* %17, i64 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ehca_mw_hipzout_parms*, %struct.ehca_mw_hipzout_parms** %8, align 8
  %32 = getelementptr inbounds %struct.ehca_mw_hipzout_parms, %struct.ehca_mw_hipzout_parms* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ehca_plpar_hcall9(i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
