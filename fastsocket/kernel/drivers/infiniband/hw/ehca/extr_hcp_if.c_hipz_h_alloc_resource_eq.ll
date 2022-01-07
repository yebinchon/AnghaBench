; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pfeq = type { i32 }
%struct.ipz_eq_handle = type { i64 }
%struct.ipz_adapter_handle = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_RESOURCE = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Not enough resource - ret=%lli \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hipz_h_alloc_resource_eq(i32 %0, %struct.ehca_pfeq* %1, i32 %2, i32 %3, %struct.ipz_eq_handle* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.ipz_adapter_handle, align 4
  %10 = alloca %struct.ehca_pfeq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipz_eq_handle*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  store i32 %0, i32* %21, align 4
  store %struct.ehca_pfeq* %1, %struct.ehca_pfeq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.ipz_eq_handle* %4, %struct.ipz_eq_handle** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  store i64 3, i64* %20, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i64, i64* %20, align 8
  %30 = or i64 72057594037927936, %29
  store i64 %30, i64* %20, align 8
  br label %34

31:                                               ; preds = %8
  %32 = load i64, i64* %20, align 8
  %33 = or i64 -9223372036854775808, %32
  store i64 %33, i64* %20, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @H_ALLOC_RESOURCE, align 4
  %36 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %20, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @ehca_plpar_hcall9(i32 %35, i64* %25, i32 %37, i64 %38, i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 %40, i64* %17, align 8
  %41 = getelementptr inbounds i64, i64* %25, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = load %struct.ipz_eq_handle*, %struct.ipz_eq_handle** %13, align 8
  %44 = getelementptr inbounds %struct.ipz_eq_handle, %struct.ipz_eq_handle* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds i64, i64* %25, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %14, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds i64, i64* %25, i64 4
  %50 = load i64, i64* %49, align 16
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %15, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds i64, i64* %25, i64 5
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %16, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @H_NOT_ENOUGH_RESOURCES, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %34
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %60, %34
  %64 = load i64, i64* %17, align 8
  %65 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i64 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehca_plpar_hcall9(i32, i64*, i32, i64, i32, i32, i32, i32, i32, i32, i32) #2

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
