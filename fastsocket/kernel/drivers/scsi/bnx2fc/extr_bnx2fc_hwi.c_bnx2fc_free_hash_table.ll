; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_hash_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i32, i32, i32*, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

@BNX2FC_NUM_MAX_SESS = common dso_local global i32 0, align 4
@BNX2FC_MAX_ROWS_IN_HASH_TBL = common dso_local global i32 0, align 4
@BNX2FC_HASH_TBL_CHUNK_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_hba*)* @bnx2fc_free_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_free_hash_table(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  %8 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @BNX2FC_NUM_MAX_SESS, align 4
  %12 = load i32, i32* @BNX2FC_MAX_ROWS_IN_HASH_TBL, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %52, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = shl i32 %32, 32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* @BNX2FC_HASH_TBL_CHUNK_SIZE, align 4
  %43 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dma_free_coherent(i32* %41, i32 %42, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dma_free_coherent(i32* %64, i32 %65, i32* %68, i32 %71)
  %73 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %74 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
