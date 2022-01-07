; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_sg_to_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_sg_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32*, i32 }
%struct.mmc_data = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }

@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*, %struct.mmc_data*)* @at91_mci_sg_to_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_sg_to_dma(%struct.at91mci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.at91mci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.at91mci_host* %0, %struct.at91mci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %13 = load %struct.at91mci_host*, %struct.at91mci_host** %3, align 8
  %14 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = call i64 (...) @cpu_is_at91sam9260()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = call i64 (...) @cpu_is_at91sam9263()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28, %2
  %32 = load %struct.at91mci_host*, %struct.at91mci_host** %3, align 8
  %33 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @memset(i32* %37, i32 0, i32 12)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %28
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %107, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %110

45:                                               ; preds = %41
  %46 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 3
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i64 %50
  store %struct.scatterlist* %51, %struct.scatterlist** %9, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %53 = call i32 @sg_page(%struct.scatterlist* %52)
  %54 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %55 = call i32* @kmap_atomic(i32 %53, i32 %54)
  %56 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32* %60, i32** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @min(i32 %61, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = call i64 (...) @cpu_is_at91rm9200()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %74, 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @swab32(i32 %82)
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %72

89:                                               ; preds = %72
  br label %99

90:                                               ; preds = %45
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @memcpy(i32* %91, i32* %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %8, align 8
  br label %99

99:                                               ; preds = %90, %89
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %102 = call i32 @kunmap_atomic(i32* %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %110

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %41

110:                                              ; preds = %105, %41
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  ret void
}

declare dso_local i64 @cpu_is_at91sam9260(...) #1

declare dso_local i64 @cpu_is_at91sam9263(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @cpu_is_at91rm9200(...) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
