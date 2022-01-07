; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_make_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_make_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp37xx_circ_dma_chain = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.stmp3xxx_dma_descriptor* }
%struct.stmp3xxx_dma_descriptor = type { i32, %struct.TYPE_2__*, %struct.stmp3xxx_dma_descriptor* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_make_chain(i32 %0, %struct.stmp37xx_circ_dma_chain* %1, %struct.stmp3xxx_dma_descriptor* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmp37xx_circ_dma_chain*, align 8
  %8 = alloca %struct.stmp3xxx_dma_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.stmp37xx_circ_dma_chain* %1, %struct.stmp37xx_circ_dma_chain** %7, align 8
  store %struct.stmp3xxx_dma_descriptor* %2, %struct.stmp3xxx_dma_descriptor** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* %11, align 4
  store i32 %15, i32* %5, align 4
  br label %131

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %23, i64 %25
  %27 = call i32 @stmp3xxx_dma_allocate_command(i32 %22, %struct.stmp3xxx_dma_descriptor* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %43, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %38, i64 %40
  %42 = call i32 @stmp3xxx_dma_free_command(i32 %37, %struct.stmp3xxx_dma_descriptor* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp sgt i32 %44, 0
  br i1 %46, label %36, label %47

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %131

50:                                               ; preds = %21
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %54, i64 %56
  %58 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %58, i64 %61
  %63 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %62, i32 0, i32 2
  store %struct.stmp3xxx_dma_descriptor* %57, %struct.stmp3xxx_dma_descriptor** %63, align 8
  %64 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %64, i64 %66
  %68 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %70, i64 %73
  %75 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %53, %50
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %84 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %83, i64 0
  %85 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %85, i64 %88
  %90 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %89, i32 0, i32 2
  store %struct.stmp3xxx_dma_descriptor* %84, %struct.stmp3xxx_dma_descriptor** %90, align 8
  %91 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %92 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %91, i64 0
  %93 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sub i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %95, i64 %98
  %100 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %94, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %105 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %8, align 8
  %107 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %108 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %107, i32 0, i32 9
  store %struct.stmp3xxx_dma_descriptor* %106, %struct.stmp3xxx_dma_descriptor** %108, align 8
  %109 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %110 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %109, i32 0, i32 8
  store i64 0, i64* %110, align 8
  %111 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %112 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %114 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %113, i32 0, i32 6
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %117 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %119 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %121 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %120, i32 0, i32 4
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @STMP3XXX_DMA_BUS(i32 %122)
  %124 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %125 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %126)
  %128 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %7, align 8
  %129 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %82, %48, %14
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @stmp3xxx_dma_allocate_command(i32, %struct.stmp3xxx_dma_descriptor*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @stmp3xxx_dma_free_command(i32, %struct.stmp3xxx_dma_descriptor*) #1

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
