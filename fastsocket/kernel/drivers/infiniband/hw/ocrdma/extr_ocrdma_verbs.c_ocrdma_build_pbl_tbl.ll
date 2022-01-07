; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_pbl_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_pbl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_hw_mr = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*)* @ocrdma_build_pbl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_hw_mr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %13 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %9, align 8
  %19 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %20 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_4__* @kzalloc(i32 %24, i32 %25)
  %27 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %27, i32 0, i32 1
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %30 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %77, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %40 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @dma_alloc_coherent(i32* %45, i32 %46, i32* %11, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %53 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %54 = call i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %52, %struct.ocrdma_hw_mr* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %80

57:                                               ; preds = %43
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memset(i8* %58, i32 0, i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %63 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i8* %61, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %5, align 8
  %71 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 8
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %37

80:                                               ; preds = %51, %37
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %33
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
