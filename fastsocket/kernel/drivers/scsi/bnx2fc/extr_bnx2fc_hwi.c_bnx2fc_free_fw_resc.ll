; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_fw_resc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_fw_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i32*, i32, %struct.TYPE_2__*, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2FC_NUM_MAX_SESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_free_fw_resc(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  %4 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %4, i32 0, i32 7
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dma_free_coherent(i32* %12, i32 %13, i32* %16, i32 %19)
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32* %32, i32 %33, i32* %36, i32 %39)
  %41 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %41, i32 0, i32 5
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %28, %23
  %44 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load i32, i32* @BNX2FC_NUM_MAX_SESS, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  %53 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dma_free_coherent(i32* %56, i32 %57, i32* %60, i32 %63)
  %65 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %48, %43
  %68 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load i32, i32* @BNX2FC_NUM_MAX_SESS, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  %77 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %86 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32* %80, i32 %81, i32* %84, i32 %87)
  %89 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %72, %67
  %92 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %93 = call i32 @bnx2fc_free_hash_table(%struct.bnx2fc_hba* %92)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @bnx2fc_free_hash_table(%struct.bnx2fc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
