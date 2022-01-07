; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_icm_table = type { i32, i32, i32, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_table_put(%struct.mthca_dev* %0, %struct.mthca_icm_table* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_icm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_icm_table* %1, %struct.mthca_icm_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %9 = call i32 @mthca_is_memfree(%struct.mthca_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %75

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %15 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %20 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %26 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %29 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %12
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %41 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %42 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %50 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %51 = sdiv i32 %49, %50
  %52 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %40, i64 %48, i32 %51)
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %54 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %55 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %62 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mthca_free_icm(%struct.mthca_dev* %53, %struct.TYPE_2__* %60, i32 %63)
  %65 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %66 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %69
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %70, align 8
  br label %71

71:                                               ; preds = %39, %12
  %72 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %73 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %11
  ret void
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i64, i32) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
