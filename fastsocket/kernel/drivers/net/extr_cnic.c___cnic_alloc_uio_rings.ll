; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c___cnic_alloc_uio_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c___cnic_alloc_uio_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_uio_dev = type { i32, i32, i8*, i32, %struct.TYPE_4__*, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32 }

@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_uio_dev*, i32)* @__cnic_alloc_uio_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cnic_alloc_uio_rings(%struct.cnic_uio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_uio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_uio_dev* %0, %struct.cnic_uio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %8 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %7, i32 0, i32 7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %6, align 8
  %12 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %12, i32 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %22 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %24 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %30, i32 0, i32 6
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @__GFP_COMP, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @dma_alloc_coherent(i32* %26, i32 %29, i32* %31, i32 %34)
  %36 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %37 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %39 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %17
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %17
  %46 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %57 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PAGE_ALIGN(i32 %58)
  %60 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %61 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %63 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %67 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %69, i32 0, i32 3
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load i32, i32* @__GFP_COMP, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @dma_alloc_coherent(i32* %65, i32 %68, i32* %70, i32 %73)
  %75 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %45
  %82 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %83 = call i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %81, %42, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
