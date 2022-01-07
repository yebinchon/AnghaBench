; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_free_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32*, i32, i32, %struct.TYPE_3__*, i32**, i32*, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_napi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_mem(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %5 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 7
  %7 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %8 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %7, i64 0
  store %struct.bnx2_napi* %8, %struct.bnx2_napi** %4, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %10 = call i32 @bnx2_free_tx_mem(%struct.bnx2* %9)
  %11 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %12 = call i32 @bnx2_free_rx_mem(%struct.bnx2* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %56, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %13
  %20 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 5
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %34 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 5
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_free_coherent(i32* %32, i32 %33, i32* %40, i32 %47)
  %49 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 5
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %28, %19
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %61 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %71 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_free_coherent(i32* %69, i32 %72, i32* %76, i32 %79)
  %81 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %82 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %65, %59
  ret void
}

declare dso_local i32 @bnx2_free_tx_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_rx_mem(%struct.bnx2*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
