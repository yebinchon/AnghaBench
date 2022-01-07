; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_maxmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_maxmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_8__, i32, %struct.ehca_mr* }
%struct.TYPE_8__ = type { i32 }
%struct.ehca_mr = type { i64*, i32, %struct.TYPE_7__, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehca_pd = type { i32 }
%struct.ehca_mr_hipzout_parms = type { i32, i32, %struct.TYPE_7__ }

@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"hipz_reg_smr failed, h_ret=%lli e_origmr=%p hca_hndl=%llx mr_hndl=%llx lkey=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_reg_maxmr(%struct.ehca_shca* %0, %struct.ehca_mr* %1, i64* %2, i32 %3, %struct.ehca_pd* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehca_shca*, align 8
  %10 = alloca %struct.ehca_mr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ehca_pd*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ehca_mr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ehca_mr_hipzout_parms, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %9, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ehca_pd* %4, %struct.ehca_pd** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.ehca_shca*, %struct.ehca_shca** %9, align 8
  %21 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %20, i32 0, i32 2
  %22 = load %struct.ehca_mr*, %struct.ehca_mr** %21, align 8
  store %struct.ehca_mr* %22, %struct.ehca_mr** %17, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @ehca_mrmw_map_acl(i32 %23, i32* %18)
  %25 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %26 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ehca_mrmw_set_pgsize_hipz_acl(i32 %27, i32* %18)
  %29 = load %struct.ehca_shca*, %struct.ehca_shca** %9, align 8
  %30 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %29, i32 0, i32 0
  %31 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %32 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = load i32, i32* %18, align 4
  %36 = load %struct.ehca_pd*, %struct.ehca_pd** %13, align 8
  %37 = getelementptr inbounds %struct.ehca_pd, %struct.ehca_pd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @hipz_h_register_smr(i32 %40, %struct.ehca_mr* %31, %struct.ehca_mr* %32, i64 %34, i32 %35, i32 %38, %struct.ehca_mr_hipzout_parms* %19)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @H_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %7
  %46 = load %struct.ehca_shca*, %struct.ehca_shca** %9, align 8
  %47 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %46, i32 0, i32 1
  %48 = load i64, i64* %16, align 8
  %49 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %50 = load %struct.ehca_shca*, %struct.ehca_shca** %9, align 8
  %51 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %55 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %59 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ehca_err(i32* %47, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %48, %struct.ehca_mr* %49, i32 %53, i32 %57, i32 %62)
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @ehca2ib_return_code(i64 %64)
  store i32 %65, i32* %8, align 4
  br label %104

66:                                               ; preds = %7
  %67 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %68 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %71 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %73 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %76 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %78 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %81 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i64*, i64** %11, align 8
  %83 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %84 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %83, i32 0, i32 0
  store i64* %82, i64** %84, align 8
  %85 = load %struct.ehca_mr*, %struct.ehca_mr** %17, align 8
  %86 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %89 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %92 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %94 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %19, i32 0, i32 2
  %96 = bitcast %struct.TYPE_7__* %94 to i8*
  %97 = bitcast %struct.TYPE_7__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %19, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %14, align 8
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %19, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %15, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %66, %45
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @ehca_mrmw_map_acl(i32, i32*) #1

declare dso_local i32 @ehca_mrmw_set_pgsize_hipz_acl(i32, i32*) #1

declare dso_local i64 @hipz_h_register_smr(i32, %struct.ehca_mr*, %struct.ehca_mr*, i64, i32, i32, %struct.ehca_mr_hipzout_parms*) #1

declare dso_local i32 @ehca_err(i32*, i8*, i64, %struct.ehca_mr*, i32, i32, i32) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
