; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_task_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_task_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i32, i32**, i32**, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2FC_TASKS_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_free_task_ctx(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  %5 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dma_free_coherent(i32* %13, i32 %14, i32* %17, i32* %20)
  %22 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %9, %1
  %25 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BNX2FC_TASKS_PER_PAGE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = icmp ne i32** %32, null
  br i1 %33, label %34, label %86

34:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %75

48:                                               ; preds = %39
  %49 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dma_free_coherent(i32* %52, i32 %53, i32* %60, i32* %67)
  %69 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %48, %39
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %35

79:                                               ; preds = %35
  %80 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = call i32 @kfree(i32** %82)
  %84 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %84, i32 0, i32 2
  store i32** null, i32*** %85, align 8
  br label %86

86:                                               ; preds = %79, %24
  %87 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %88 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = call i32 @kfree(i32** %89)
  %91 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %92 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %91, i32 0, i32 1
  store i32** null, i32*** %92, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
