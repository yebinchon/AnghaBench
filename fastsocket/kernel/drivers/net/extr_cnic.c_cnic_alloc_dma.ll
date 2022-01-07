; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.TYPE_2__*, %struct.cnic_local* }
%struct.TYPE_2__ = type { i32 }
%struct.cnic_local = type { i32 (%struct.cnic_dev.0*, %struct.cnic_dma*)* }
%struct.cnic_dev.0 = type opaque
%struct.cnic_dma = type opaque
%struct.cnic_dma.1 = type { i32, i32, i32*, i32, i32**, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.cnic_dma.1*, i32, i32)* @cnic_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_dma(%struct.cnic_dev* %0, %struct.cnic_dma.1* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.cnic_dma.1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.cnic_dma.1* %1, %struct.cnic_dma.1** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i32** @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %24 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %23, i32 0, i32 4
  store i32** %22, i32*** %24, align 8
  %25 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %26 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %25, i32 0, i32 4
  %27 = load i32**, i32*** %26, align 8
  %28 = icmp eq i32** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %133

32:                                               ; preds = %4
  %33 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %34 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = bitcast i32** %38 to i32*
  %40 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %41 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %44 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %80, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %51 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %55 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %56 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i8* @dma_alloc_coherent(i32* %53, i32 %54, i32* %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %65 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %64, i32 0, i32 4
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %63, i32** %69, align 8
  %70 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %71 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %70, i32 0, i32 4
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %49
  br label %127

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %133

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %88, 8
  %90 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %98 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %100 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %104 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %107 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %106, i32 0, i32 3
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call i8* @dma_alloc_coherent(i32* %102, i32 %105, i32* %107, i32 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %112 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %114 = getelementptr inbounds %struct.cnic_dma.1, %struct.cnic_dma.1* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %87
  br label %127

118:                                              ; preds = %87
  %119 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %120 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %119, i32 0, i32 0
  %121 = load i32 (%struct.cnic_dev.0*, %struct.cnic_dma*)*, i32 (%struct.cnic_dev.0*, %struct.cnic_dma*)** %120, align 8
  %122 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %123 = bitcast %struct.cnic_dev* %122 to %struct.cnic_dev.0*
  %124 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %125 = bitcast %struct.cnic_dma.1* %124 to %struct.cnic_dma*
  %126 = call i32 %121(%struct.cnic_dev.0* %123, %struct.cnic_dma* %125)
  store i32 0, i32* %5, align 4
  br label %133

127:                                              ; preds = %117, %78
  %128 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %129 = load %struct.cnic_dma.1*, %struct.cnic_dma.1** %7, align 8
  %130 = call i32 @cnic_free_dma(%struct.cnic_dev* %128, %struct.cnic_dma.1* %129)
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %118, %86, %29
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32** @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cnic_free_dma(%struct.cnic_dev*, %struct.cnic_dma.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
