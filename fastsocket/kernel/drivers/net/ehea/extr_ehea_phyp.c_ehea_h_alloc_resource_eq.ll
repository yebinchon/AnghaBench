; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eq_attr = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALL_RES_EQ_RES_TYPE = common dso_local global i32 0, align 4
@H_ALL_RES_TYPE_EQ = common dso_local global i32 0, align 4
@H_ALL_RES_EQ_NEQ = common dso_local global i32 0, align 4
@H_ALL_RES_EQ_INH_EQE_GEN = common dso_local global i32 0, align 4
@H_ALL_RES_EQ_NON_NEQ_ISN = common dso_local global i32 0, align 4
@H_ALLOC_HEA_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_h_alloc_resource_eq(i32 %0, %struct.ehea_eq_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_eq_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ehea_eq_attr* %1, %struct.ehea_eq_attr** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* @H_ALL_RES_EQ_RES_TYPE, align 4
  %16 = load i32, i32* @H_ALL_RES_TYPE_EQ, align 4
  %17 = call i32 @EHEA_BMASK_SET(i32 %15, i32 %16)
  %18 = load i32, i32* @H_ALL_RES_EQ_NEQ, align 4
  %19 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = call i32 @EHEA_BMASK_SET(i32 %18, i32 %24)
  %26 = or i32 %17, %25
  %27 = load i32, i32* @H_ALL_RES_EQ_INH_EQE_GEN, align 4
  %28 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @EHEA_BMASK_SET(i32 %27, i32 %33)
  %35 = or i32 %26, %34
  %36 = load i32, i32* @H_ALL_RES_EQ_NON_NEQ_ISN, align 4
  %37 = call i32 @EHEA_BMASK_SET(i32 %36, i32 1)
  %38 = or i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @H_ALLOC_HEA_RESOURCE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ehea_plpar_hcall9(i32 %39, i64* %14, i32 %40, i32 %41, i32 %44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds i64, i64* %14, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds i64, i64* %14, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %53 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds i64, i64* %14, i64 4
  %55 = load i64, i64* %54, align 16
  %56 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %57 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = getelementptr inbounds i64, i64* %14, i64 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %61 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds i64, i64* %14, i64 6
  %63 = load i64, i64* %62, align 16
  %64 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %65 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = getelementptr inbounds i64, i64* %14, i64 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %69 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds i64, i64* %14, i64 8
  %71 = load i64, i64* %70, align 16
  %72 = load %struct.ehea_eq_attr*, %struct.ehea_eq_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ehea_eq_attr, %struct.ehea_eq_attr* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #2

declare dso_local i32 @ehea_plpar_hcall9(i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
