; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_smr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_smr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ehca_mr = type { i64*, i32, %struct.TYPE_7__, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehca_pd = type { i32 }
%struct.ehca_mr_hipzout_parms = type { i32, i32, %struct.TYPE_7__ }

@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [127 x i8] c"hipz_reg_smr failed, h_ret=%lli shca=%p e_origmr=%p e_newmr=%p iova_start=%p acl=%x e_pd=%p hca_hndl=%llx mr_hndl=%llx lkey=%x\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"ret=%i shca=%p e_origmr=%p e_newmr=%p iova_start=%p acl=%x e_pd=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_reg_smr(%struct.ehca_shca* %0, %struct.ehca_mr* %1, %struct.ehca_mr* %2, i64* %3, i32 %4, %struct.ehca_pd* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehca_shca*, align 8
  %11 = alloca %struct.ehca_mr*, align 8
  %12 = alloca %struct.ehca_mr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ehca_pd*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ehca_mr_hipzout_parms, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %10, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %11, align 8
  store %struct.ehca_mr* %2, %struct.ehca_mr** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.ehca_pd* %5, %struct.ehca_pd** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @ehca_mrmw_map_acl(i32 %22, i32* %20)
  %24 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %25 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ehca_mrmw_set_pgsize_hipz_acl(i32 %26, i32* %20)
  %28 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %29 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %28, i32 0, i32 1
  %30 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %31 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = ptrtoint i64* %32 to i64
  %34 = load i32, i32* %20, align 4
  %35 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %36 = getelementptr inbounds %struct.ehca_pd, %struct.ehca_pd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @hipz_h_register_smr(i32 %39, %struct.ehca_mr* %30, %struct.ehca_mr* %31, i64 %33, i32 %34, i32 %37, %struct.ehca_mr_hipzout_parms* %21)
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %19, align 8
  %42 = load i64, i64* @H_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %8
  %45 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %46 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %45, i32 0, i32 0
  %47 = load i64, i64* %19, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %50 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %51 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %55 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %56 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %60 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %64 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, i32, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr*, i64*, i32, %struct.ehca_pd*, ...) @ehca_err(i32* %46, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i32 %48, %struct.ehca_shca* %49, %struct.ehca_mr* %50, %struct.ehca_mr* %51, i64* %52, i32 %53, %struct.ehca_pd* %54, i32 %58, i32 %62, i32 %67)
  %69 = load i64, i64* %19, align 8
  %70 = call i32 @ehca2ib_return_code(i64 %69)
  store i32 %70, i32* %18, align 4
  br label %109

71:                                               ; preds = %8
  %72 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %73 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %76 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %78 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %81 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %83 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %86 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i64*, i64** %13, align 8
  %88 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %89 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %88, i32 0, i32 0
  store i64* %87, i64** %89, align 8
  %90 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %91 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %94 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %97 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %99 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %21, i32 0, i32 2
  %101 = bitcast %struct.TYPE_7__* %99 to i8*
  %102 = bitcast %struct.TYPE_7__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %21, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %16, align 8
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %21, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %17, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %9, align 4
  br label %125

109:                                              ; preds = %44
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %114 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %113, i32 0, i32 0
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %117 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %118 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %119 = load i64*, i64** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %122 = call i32 (i32*, i8*, i32, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr*, i64*, i32, %struct.ehca_pd*, ...) @ehca_err(i32* %114, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %115, %struct.ehca_shca* %116, %struct.ehca_mr* %117, %struct.ehca_mr* %118, i64* %119, i32 %120, %struct.ehca_pd* %121)
  br label %123

123:                                              ; preds = %112, %109
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %71
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @ehca_mrmw_map_acl(i32, i32*) #1

declare dso_local i32 @ehca_mrmw_set_pgsize_hipz_acl(i32, i32*) #1

declare dso_local i64 @hipz_h_register_smr(i32, %struct.ehca_mr*, %struct.ehca_mr*, i64, i32, i32, %struct.ehca_mr_hipzout_parms*) #1

declare dso_local i32 @ehca_err(i32*, i8*, i32, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr*, i64*, i32, %struct.ehca_pd*, ...) #1

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
