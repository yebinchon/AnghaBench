; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ehca_alloc_cq_parms = type { i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_RESOURCE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not establish HW access. rc=%d paddr=%#lx\00", align 1
@H_FREE_RESOURCE = common dso_local global i32 0, align 4
@H_NO_MEM = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not enough resources. ret=%lli\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_alloc_resource_cq(i32 %0, %struct.ehca_cq* %1, %struct.ehca_alloc_cq_parms* %2) #0 {
  %4 = alloca %struct.ipz_adapter_handle, align 4
  %5 = alloca %struct.ehca_cq*, align 8
  %6 = alloca %struct.ehca_alloc_cq_parms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store %struct.ehca_cq* %1, %struct.ehca_cq** %5, align 8
  store %struct.ehca_alloc_cq_parms* %2, %struct.ehca_alloc_cq_parms** %6, align 8
  %12 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @H_ALLOC_RESOURCE, align 4
  %17 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ehca_alloc_cq_parms*, %struct.ehca_alloc_cq_parms** %6, align 8
  %20 = getelementptr inbounds %struct.ehca_alloc_cq_parms, %struct.ehca_alloc_cq_parms* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %24 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ehca_alloc_cq_parms*, %struct.ehca_alloc_cq_parms** %6, align 8
  %27 = getelementptr inbounds %struct.ehca_alloc_cq_parms, %struct.ehca_alloc_cq_parms* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ehca_plpar_hcall9(i32 %16, i64* %15, i32 %18, i32 2, i32 %22, i32 %25, i32 %28, i32 0, i32 0, i32 0, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds i64, i64* %15, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %33 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds i64, i64* %15, i64 3
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.ehca_alloc_cq_parms*, %struct.ehca_alloc_cq_parms** %6, align 8
  %39 = getelementptr inbounds %struct.ehca_alloc_cq_parms, %struct.ehca_alloc_cq_parms* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds i64, i64* %15, i64 4
  %41 = load i64, i64* %40, align 16
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ehca_alloc_cq_parms*, %struct.ehca_alloc_cq_parms** %6, align 8
  %44 = getelementptr inbounds %struct.ehca_alloc_cq_parms, %struct.ehca_alloc_cq_parms* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @H_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %3
  %49 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %50 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds i64, i64* %15, i64 5
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %15, i64 6
  %54 = load i64, i64* %53, align 16
  %55 = call i32 @hcp_galpas_ctor(i32* %50, i32 0, i64 %52, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds i64, i64* %15, i64 5
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %61)
  %63 = load i32, i32* @H_FREE_RESOURCE, align 4
  %64 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %67 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ehca_plpar_hcall_norets(i32 %63, i32 %65, i64 %69, i32 0, i32 0, i32 0, i32 0, i32 0)
  %71 = load i32, i32* @H_NO_MEM, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %58, %48
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @H_NOT_ENOUGH_RESOURCES, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ehca_plpar_hcall9(i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @hcp_galpas_ctor(i32*, i32, i64, i64) #2

declare dso_local i32 @ehca_gen_err(i8*, i32, ...) #2

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i64, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
