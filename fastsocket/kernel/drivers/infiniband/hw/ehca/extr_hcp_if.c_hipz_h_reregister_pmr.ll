; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_reregister_pmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_reregister_pmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ehca_mr_hipzout_parms = type { i64, i8*, i8* }
%struct.ipz_adapter_handle = type { i32 }
%struct.ipz_pd = type { i64 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_REREGISTER_PMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_reregister_pmr(i32 %0, %struct.ehca_mr* %1, i64 %2, i64 %3, i8* %4, i64 %5, i64 %6, %struct.ehca_mr_hipzout_parms* %7) #0 {
  %9 = alloca %struct.ipz_adapter_handle, align 4
  %10 = alloca %struct.ipz_pd, align 8
  %11 = alloca %struct.ehca_mr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ehca_mr_hipzout_parms*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  store i32 %0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %10, i32 0, i32 0
  store i64 %5, i64* %21, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.ehca_mr_hipzout_parms* %7, %struct.ehca_mr_hipzout_parms** %16, align 8
  %22 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @H_REREGISTER_PMR, align 4
  %27 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %30 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = shl i64 %36, 32
  %38 = getelementptr inbounds %struct.ipz_pd, %struct.ipz_pd* %10, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %37, %39
  %41 = load i64, i64* %15, align 8
  %42 = call i64 @ehca_plpar_hcall9(i32 %26, i64* %25, i32 %28, i32 %32, i64 %33, i64 %34, i64 %40, i64 %41, i32 0, i32 0, i32 0)
  store i64 %42, i64* %17, align 8
  %43 = getelementptr inbounds i64, i64* %25, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %16, align 8
  %46 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds i64, i64* %25, i64 2
  %48 = load i64, i64* %47, align 16
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %16, align 8
  %51 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds i64, i64* %25, i64 3
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %16, align 8
  %56 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i64 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehca_plpar_hcall9(i32, i64*, i32, i32, i64, i64, i64, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
