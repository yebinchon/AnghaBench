; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_cleanup_db_tab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_cleanup_db_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Kernel UARC page %d not empty\0A\00", align 1
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cleanup_db_tab(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = call i32 @mthca_is_memfree(%struct.mthca_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %96

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %82, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %9
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %82

30:                                               ; preds = %17
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %42 = call i32 @bitmap_empty(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %30
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @mthca_warn(%struct.mthca_dev* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %30
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %50, i32* %52, i32 %53)
  %55 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %49, i32 %54, i32 1)
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_free_coherent(i32* %59, i32 %60, i32 %70, i32 %80)
  br label %82

82:                                               ; preds = %48, %29
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %9

85:                                               ; preds = %9
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %87 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @kfree(%struct.TYPE_4__* %90)
  %92 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %93 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @kfree(%struct.TYPE_4__* %94)
  br label %96

96:                                               ; preds = %85, %7
  ret void
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
