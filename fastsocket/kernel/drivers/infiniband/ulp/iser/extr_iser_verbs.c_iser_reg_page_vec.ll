; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_reg_page_vec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_reg_page_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32 }
%struct.iser_page_vec = type { i32, i32, i64*, i64 }
%struct.iser_mem_reg = type { i32, i32, i64, i8*, i64, i32 }
%struct.ib_pool_fmr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ib_fmr_pool_map_phys failed: %d\0A\00", align 1
@SIZE_4K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [128 x i8] c"PHYSICAL Mem.register, [PHYS p_array: 0x%p, sz: %d, entry[0]: (0x%08lx,%ld)] -> [lkey: 0x%08X mem_h: 0x%p va: 0x%08lX sz: %ld]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_reg_page_vec(%struct.iser_conn* %0, %struct.iser_page_vec* %1, %struct.iser_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca %struct.iser_page_vec*, align 8
  %7 = alloca %struct.iser_mem_reg*, align 8
  %8 = alloca %struct.ib_pool_fmr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %5, align 8
  store %struct.iser_page_vec* %1, %struct.iser_page_vec** %6, align 8
  store %struct.iser_mem_reg* %2, %struct.iser_mem_reg** %7, align 8
  %12 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %13 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64*, i64** %10, align 8
  %22 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %23 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.ib_pool_fmr* @ib_fmr_pool_map_phys(i32 %20, i64* %21, i32 %24, i64 %25)
  store %struct.ib_pool_fmr* %26, %struct.ib_pool_fmr** %8, align 8
  %27 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %8, align 8
  %28 = call i64 @IS_ERR(%struct.ib_pool_fmr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %8, align 8
  %32 = call i64 @PTR_ERR(%struct.ib_pool_fmr* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @iser_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %3
  %38 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %8, align 8
  %39 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %44 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %8, align 8
  %46 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %51 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %53 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SIZE_4K, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %58 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %61 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %63 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %8, align 8
  %65 = bitcast %struct.ib_pool_fmr* %64 to i8*
  %66 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %67 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %69 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %72 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %76 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %79 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %81 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %82 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %85 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.iser_page_vec*, %struct.iser_page_vec** %6, align 8
  %90 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %94 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %98 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %101 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %104 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = call i32 @iser_dbg(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.1, i64 0, i64 0), %struct.iser_page_vec* %80, i32 %83, i64 %88, i64 %92, i32 %96, i8* %99, i64 %102, i64 %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %37, %30
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.ib_pool_fmr* @ib_fmr_pool_map_phys(i32, i64*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.ib_pool_fmr*) #1

declare dso_local i64 @PTR_ERR(%struct.ib_pool_fmr*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @iser_dbg(i8*, %struct.iser_page_vec*, i32, i64, i64, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
