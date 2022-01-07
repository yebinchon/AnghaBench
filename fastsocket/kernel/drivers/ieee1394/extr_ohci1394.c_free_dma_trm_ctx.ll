; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_free_dma_trm_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_free_dma_trm_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_trm_ctx = type { i32, %struct.ti_ohci*, i64*, i64*, i32, i32 }
%struct.ti_ohci = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Freeing dma_trm_ctx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_trm_ctx*)* @free_dma_trm_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dma_trm_ctx(%struct.dma_trm_ctx* %0) #0 {
  %2 = alloca %struct.dma_trm_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_ohci*, align 8
  store %struct.dma_trm_ctx* %0, %struct.dma_trm_ctx** %2, align 8
  %5 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %5, i32 0, i32 1
  %7 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  store %struct.ti_ohci* %7, %struct.ti_ohci** %4, align 8
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %9 = icmp eq %struct.ti_ohci* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DBGMSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %81

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %27
  %37 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pci_pool_free(i32 %48, i64 %55, i64 %62)
  br label %64

64:                                               ; preds = %45, %36, %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %21

68:                                               ; preds = %21
  %69 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %70 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pci_pool_destroy(i32 %71)
  %73 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @kfree(i64* %75)
  %77 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @kfree(i64* %79)
  br label %81

81:                                               ; preds = %68, %11
  %82 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %82, i32 0, i32 1
  store %struct.ti_ohci* null, %struct.ti_ohci** %83, align 8
  br label %84

84:                                               ; preds = %81, %10
  ret void
}

declare dso_local i32 @DBGMSG(i8*, i32) #1

declare dso_local i32 @pci_pool_free(i32, i64, i64) #1

declare dso_local i32 @pci_pool_destroy(i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
