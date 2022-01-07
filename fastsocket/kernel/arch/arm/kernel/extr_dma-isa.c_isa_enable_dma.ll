; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_dma-isa.c_isa_enable_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_dma-isa.c_isa_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@DMA_MODE_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@isa_dma_port = common dso_local global i32** null, align 8
@ISA_DMA_PGLO = common dso_local global i64 0, align 8
@ISA_DMA_PGHI = common dso_local global i64 0, align 8
@ISA_DMA_CLRFF = common dso_local global i64 0, align 8
@ISA_DMA_ADDR = common dso_local global i64 0, align 8
@ISA_DMA_COUNT = common dso_local global i64 0, align 8
@ISA_DMA_MODE = common dso_local global i64 0, align 8
@ISA_DMA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @isa_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isa_enable_dma(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %172

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMA_MODE_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %31 [
    i32 129, label %25
    i32 128, label %27
    i32 130, label %29
  ]

25:                                               ; preds = %13
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %26, i32* %8, align 4
  br label %33

27:                                               ; preds = %13
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %13
  %30 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %13
  %32 = load i32, i32* @DMA_NONE, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @dma_map_single(i32* null, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %38, %33
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = lshr i64 %73, 16
  %75 = trunc i64 %74 to i32
  %76 = load i32**, i32*** @isa_dma_port, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @ISA_DMA_PGLO, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @outb(i32 %75, i32 %83)
  %85 = load i64, i64* %5, align 8
  %86 = lshr i64 %85, 24
  %87 = trunc i64 %86 to i32
  %88 = load i32**, i32*** @isa_dma_port, align 8
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @ISA_DMA_PGHI, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @outb(i32 %87, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = icmp uge i32 %97, 4
  br i1 %98, label %99, label %104

99:                                               ; preds = %62
  %100 = load i64, i64* %5, align 8
  %101 = lshr i64 %100, 1
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = lshr i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %99, %62
  %105 = load i32**, i32*** @isa_dma_port, align 8
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @ISA_DMA_CLRFF, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @outb(i32 0, i32 %112)
  %114 = load i64, i64* %5, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32**, i32*** @isa_dma_port, align 8
  %117 = load i32, i32* %3, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @ISA_DMA_ADDR, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @outb(i32 %115, i32 %123)
  %125 = load i64, i64* %5, align 8
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = load i32**, i32*** @isa_dma_port, align 8
  %129 = load i32, i32* %3, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @ISA_DMA_ADDR, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @outb(i32 %127, i32 %135)
  %137 = load i64, i64* %6, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32**, i32*** @isa_dma_port, align 8
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @ISA_DMA_COUNT, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @outb(i32 %138, i32 %146)
  %148 = load i64, i64* %6, align 8
  %149 = lshr i64 %148, 8
  %150 = trunc i64 %149 to i32
  %151 = load i32**, i32*** @isa_dma_port, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @ISA_DMA_COUNT, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @outb(i32 %150, i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = load i32**, i32*** @isa_dma_port, align 8
  %162 = load i32, i32* %3, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @ISA_DMA_MODE, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @outb(i32 %160, i32 %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %104, %2
  %173 = load i32, i32* %3, align 4
  %174 = and i32 %173, 3
  %175 = load i32**, i32*** @isa_dma_port, align 8
  %176 = load i32, i32* %3, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @ISA_DMA_MASK, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @outb(i32 %174, i32 %182)
  ret void
}

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
