; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq_attr = type { i64, i64, i32, i32, i32 }
%struct.h_epas = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_HEA_RESOURCE = common dso_local global i32 0, align 4
@H_ALL_RES_TYPE_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ehea_h_alloc_resource_cq(i64 %0, %struct.ehea_cq_attr* %1, i64* %2, %struct.h_epas* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ehea_cq_attr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.h_epas*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.ehea_cq_attr* %1, %struct.ehea_cq_attr** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.h_epas* %3, %struct.h_epas** %8, align 8
  %12 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i32, i32* @H_ALLOC_HEA_RESOURCE, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @H_ALL_RES_TYPE_CQ, align 4
  %19 = load %struct.ehea_cq_attr*, %struct.ehea_cq_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ehea_cq_attr, %struct.ehea_cq_attr* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ehea_cq_attr*, %struct.ehea_cq_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ehea_cq_attr, %struct.ehea_cq_attr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ehea_cq_attr*, %struct.ehea_cq_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ehea_cq_attr, %struct.ehea_cq_attr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ehea_plpar_hcall9(i32 %16, i64* %15, i64 %17, i32 %18, i32 %21, i32 %24, i32 %27, i32 0, i32 0, i32 0, i32 0)
  store i64 %28, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %15, i64 0
  %30 = load i64, i64* %29, align 16
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds i64, i64* %15, i64 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ehea_cq_attr*, %struct.ehea_cq_attr** %6, align 8
  %35 = getelementptr inbounds %struct.ehea_cq_attr, %struct.ehea_cq_attr* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds i64, i64* %15, i64 4
  %37 = load i64, i64* %36, align 16
  %38 = load %struct.ehea_cq_attr*, %struct.ehea_cq_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ehea_cq_attr, %struct.ehea_cq_attr* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %4
  %43 = load %struct.h_epas*, %struct.h_epas** %8, align 8
  %44 = getelementptr inbounds i64, i64* %15, i64 5
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %15, i64 6
  %47 = load i64, i64* %46, align 16
  %48 = call i32 @hcp_epas_ctor(%struct.h_epas* %43, i64 %45, i64 %47)
  br label %49

49:                                               ; preds = %42, %4
  %50 = load i64, i64* %9, align 8
  %51 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i64 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehea_plpar_hcall9(i32, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @hcp_epas_ctor(%struct.h_epas*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
