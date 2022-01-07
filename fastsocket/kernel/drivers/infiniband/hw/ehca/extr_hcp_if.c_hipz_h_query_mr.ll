; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_query_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ehca_mr_hipzout_parms = type { i64, i64, i64, i8*, i8* }
%struct.ipz_adapter_handle = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_QUERY_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_query_mr(i32 %0, %struct.ehca_mr* %1, %struct.ehca_mr_hipzout_parms* %2) #0 {
  %4 = alloca %struct.ipz_adapter_handle, align 4
  %5 = alloca %struct.ehca_mr*, align 8
  %6 = alloca %struct.ehca_mr_hipzout_parms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store %struct.ehca_mr* %1, %struct.ehca_mr** %5, align 8
  store %struct.ehca_mr_hipzout_parms* %2, %struct.ehca_mr_hipzout_parms** %6, align 8
  %11 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @H_QUERY_MR, align 4
  %16 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %19 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ehca_plpar_hcall9(i32 %15, i64* %14, i32 %17, i32 %21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = getelementptr inbounds i64, i64* %14, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %6, align 8
  %26 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds i64, i64* %14, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %6, align 8
  %30 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds i64, i64* %14, i64 4
  %32 = load i64, i64* %31, align 16
  %33 = lshr i64 %32, 32
  %34 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %6, align 8
  %35 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds i64, i64* %14, i64 5
  %37 = load i64, i64* %36, align 8
  %38 = lshr i64 %37, 32
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %6, align 8
  %41 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds i64, i64* %14, i64 5
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 4294967295
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.ehca_mr_hipzout_parms*, %struct.ehca_mr_hipzout_parms** %6, align 8
  %47 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
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
