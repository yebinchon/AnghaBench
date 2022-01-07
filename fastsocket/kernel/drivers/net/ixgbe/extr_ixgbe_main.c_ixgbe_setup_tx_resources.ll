; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32, i32, i32*, i64, i64, i8*, i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for the Tx descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  %8 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %8, i32 0, i32 8
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_to_node(%struct.device* %11)
  store i32 %12, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 7
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @vzalloc_node(i32 %30, i32 %31)
  %33 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @vzalloc(i32 %40)
  %42 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %29
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %107

50:                                               ; preds = %44
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ALIGN(i32 %61, i32 4096)
  %63 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @set_dev_node(%struct.device* %65, i32 %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 6
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @dma_alloc_coherent(%struct.device* %68, i32 %71, i32* %73, i32 %74)
  %76 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @set_dev_node(%struct.device* %78, i32 %79)
  %81 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %50
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %90, i32 0, i32 6
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @dma_alloc_coherent(%struct.device* %86, i32 %89, i32* %91, i32 %92)
  %94 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %85, %50
  %97 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %107

102:                                              ; preds = %96
  %103 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  store i32 0, i32* %2, align 4
  br label %118

107:                                              ; preds = %101, %49
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %109 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @vfree(i32* %110)
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %107, %102
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32* @vzalloc_node(i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
