; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_prep_ai_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_prep_ai_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DMA_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @prep_ai_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_ai_dma(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 2
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @virt_to_bus(i32 %65)
  store i64 %66, i64* %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @DMA_MODE_READ, align 4
  %69 = call i32 @set_dma_mode(i32 %67, i32 %68)
  %70 = call i64 (...) @claim_dma_lock()
  store i64 %70, i64* %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @clear_dma_ff(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @set_dma_addr(i32 %73, i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @set_dma_count(i32 %76, i32 %77)
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @release_dma_lock(i64 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @enable_dma(i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %35, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @virt_to_bus(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_addr(i32, i64) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @enable_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
