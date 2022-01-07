; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i16, i32, i32, i64, i64, i64, i64, i64 }

@sun3_dma_active = common dso_local global i64 0, align 8
@CSR_DMA_ENABLE = common dso_local global i32 0, align 4
@dregs = common dso_local global %struct.TYPE_2__* null, align 8
@sun3_dma_orig_count = common dso_local global i16 0, align 2
@last_residual = common dso_local global i16 0, align 2
@CSR_LEFT = common dso_local global i32 0, align 4
@sun3_dma_orig_addr = common dso_local global i32* null, align 8
@CSR_SEND = common dso_local global i32 0, align 4
@sun3_dma_setup_done = common dso_local global i32* null, align 8
@CSR_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sun3scsi_dma_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun3scsi_dma_finish(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* @sun3_dma_active, align 8
  %6 = load i32, i32* @CSR_DMA_ENABLE, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 4
  store i16 %14, i16* %3, align 2
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @sun3_dma_orig_count, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i16, i16* %3, align 2
  %29 = add i16 %28, 1
  store i16 %29, i16* %3, align 2
  br label %30

30:                                               ; preds = %27, %21, %17
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i16, i16* %3, align 2
  store i16 %32, i16* @last_residual, align 2
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %89, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CSR_LEFT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %35
  %43 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %44 = call i64 @dvma_vmetov(i32* %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %5, align 8
  %46 = load i16, i16* @sun3_dma_orig_count, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %3, align 2
  %49 = zext i16 %48 to i32
  %50 = sub nsw i32 %47, %49
  %51 = load i8*, i8** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %5, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CSR_LEFT, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %88 [
    i32 128, label %61
    i32 129, label %71
    i32 130, label %80
  ]

61:                                               ; preds = %42
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 65280
  %66 = ashr i32 %65, 8
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %42, %61
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  store i8 %76, i8* %77, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %42, %71
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 65280
  %85 = ashr i32 %84, 8
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %5, align 8
  store i8 %86, i8* %87, align 1
  br label %88

88:                                               ; preds = %42, %80
  br label %89

89:                                               ; preds = %88, %35, %31
  %90 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %91 = call i32 @dvma_unmap(i32* %90)
  store i32* null, i32** @sun3_dma_orig_addr, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i16 0, i16* %101, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @CSR_SEND, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32* null, i32** @sun3_dma_setup_done, align 8
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @dvma_vmetov(i32*) #1

declare dso_local i32 @dvma_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
