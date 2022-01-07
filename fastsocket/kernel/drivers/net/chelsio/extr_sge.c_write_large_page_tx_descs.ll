; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_write_large_page_tx_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_write_large_page_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdQ_e = type { i32 }
%struct.cmdQ_ce = type { i32* }
%struct.cmdQ = type { i32, %struct.cmdQ_e*, %struct.cmdQ_ce* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_TX_DESC_MAX_PLEN = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cmdQ_e**, %struct.cmdQ_ce**, i32*, i32*, i32*, i32, %struct.cmdQ*)* @write_large_page_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_large_page_tx_descs(i32 %0, %struct.cmdQ_e** %1, %struct.cmdQ_ce** %2, i32* %3, i32* %4, i32* %5, i32 %6, %struct.cmdQ* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmdQ_e**, align 8
  %11 = alloca %struct.cmdQ_ce**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cmdQ*, align 8
  %17 = alloca %struct.cmdQ_e*, align 8
  %18 = alloca %struct.cmdQ_ce*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.cmdQ_e** %1, %struct.cmdQ_e*** %10, align 8
  store %struct.cmdQ_ce** %2, %struct.cmdQ_ce*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.cmdQ* %7, %struct.cmdQ** %16, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %8
  %23 = load %struct.cmdQ_e**, %struct.cmdQ_e*** %10, align 8
  %24 = load %struct.cmdQ_e*, %struct.cmdQ_e** %23, align 8
  store %struct.cmdQ_e* %24, %struct.cmdQ_e** %17, align 8
  %25 = load %struct.cmdQ_ce**, %struct.cmdQ_ce*** %11, align 8
  %26 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %25, align 8
  store %struct.cmdQ_ce* %26, %struct.cmdQ_ce** %18, align 8
  br label %27

27:                                               ; preds = %87, %22
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %27
  %33 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load %struct.cmdQ_e*, %struct.cmdQ_e** %17, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %45, %32
  %50 = phi i1 [ false, %32 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @write_tx_desc(%struct.cmdQ_e* %37, i32 %39, i32 %40, i32 %42, i32 %51)
  %53 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %18, align 8
  %54 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %18, align 8
  %56 = load i32, i32* @dma_len, align 4
  %57 = call i32 @pci_unmap_len_set(%struct.cmdQ_ce* %55, i32 %56, i32 0)
  %58 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %49
  %66 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %18, align 8
  %67 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %66, i32 1
  store %struct.cmdQ_ce* %67, %struct.cmdQ_ce** %18, align 8
  %68 = load %struct.cmdQ_e*, %struct.cmdQ_e** %17, align 8
  %69 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %68, i32 1
  store %struct.cmdQ_e* %69, %struct.cmdQ_e** %17, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load %struct.cmdQ*, %struct.cmdQ** %16, align 8
  %73 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.cmdQ*, %struct.cmdQ** %16, align 8
  %81 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %80, i32 0, i32 2
  %82 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %81, align 8
  store %struct.cmdQ_ce* %82, %struct.cmdQ_ce** %18, align 8
  %83 = load %struct.cmdQ*, %struct.cmdQ** %16, align 8
  %84 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %83, i32 0, i32 1
  %85 = load %struct.cmdQ_e*, %struct.cmdQ_e** %84, align 8
  store %struct.cmdQ_e* %85, %struct.cmdQ_e** %17, align 8
  br label %86

86:                                               ; preds = %76, %65
  br label %87

87:                                               ; preds = %86, %49
  br label %27

88:                                               ; preds = %27
  %89 = load %struct.cmdQ_e*, %struct.cmdQ_e** %17, align 8
  %90 = load %struct.cmdQ_e**, %struct.cmdQ_e*** %10, align 8
  store %struct.cmdQ_e* %89, %struct.cmdQ_e** %90, align 8
  %91 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %18, align 8
  %92 = load %struct.cmdQ_ce**, %struct.cmdQ_ce*** %11, align 8
  store %struct.cmdQ_ce* %91, %struct.cmdQ_ce** %92, align 8
  br label %93

93:                                               ; preds = %88, %8
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @write_tx_desc(%struct.cmdQ_e*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.cmdQ_ce*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
