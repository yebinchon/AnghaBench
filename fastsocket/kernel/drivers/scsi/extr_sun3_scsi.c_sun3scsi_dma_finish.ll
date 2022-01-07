; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i16, i16 }
%struct.TYPE_4__ = type { i32 }

@sun3_dma_active = common dso_local global i64 0, align 8
@dregs = common dso_local global %struct.TYPE_5__* null, align 8
@CSR_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sun3scsi: fifo failed to empty!\0A\00", align 1
@default_instance = common dso_local global %struct.TYPE_4__* null, align 8
@last_residual = common dso_local global i16 0, align 2
@sun3_dma_orig_addr = common dso_local global i32* null, align 8
@sun3_dma_orig_count = common dso_local global i16 0, align 2
@UDC_RESET = common dso_local global i32 0, align 4
@UDC_CSR = common dso_local global i32 0, align 4
@CSR_SEND = common dso_local global i32 0, align 4
@CSR_FIFO = common dso_local global i32 0, align 4
@sun3_dma_setup_done = common dso_local global i32* null, align 8
@BASR_ACK = common dso_local global i32 0, align 4
@BASR_PHASE_MATCH = common dso_local global i32 0, align 4
@BUS_AND_STATUS_REG = common dso_local global i32 0, align 4
@dmabuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sun3scsi_dma_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun3scsi_dma_finish(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* @sun3_dma_active, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  store i32 20000, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %27
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CSR_FIFO_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %100

27:                                               ; preds = %21
  %28 = call i32 @udelay(i32 10)
  br label %13

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_instance, align 8
  %32 = call zeroext i16 @sun3scsi_dma_count(%struct.TYPE_4__* %31)
  store i16 %32, i16* %4, align 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 4
  store i16 %35, i16* %5, align 2
  %36 = load i16, i16* %5, align 2
  store i16 %36, i16* @last_residual, align 2
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %30
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 %41, %43
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i16, i16* %48, align 2
  store i16 %49, i16* %8, align 2
  %50 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %51 = call i64 @dvma_btov(i32* %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %9, align 8
  %53 = load i16, i16* @sun3_dma_orig_count, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %5, align 2
  %56 = zext i16 %55 to i32
  %57 = sub nsw i32 %54, %56
  %58 = load i8*, i8** %9, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %9, align 8
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 65280
  %64 = ashr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -2
  store i8 %65, i8* %67, align 1
  %68 = load i16, i16* %8, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  store i8 %71, i8* %73, align 1
  br label %74

74:                                               ; preds = %46, %39, %30
  %75 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %76 = call i32 @dvma_unmap(i32* %75)
  store i32* null, i32** @sun3_dma_orig_addr, align 8
  %77 = load i32, i32* @UDC_RESET, align 4
  %78 = load i32, i32* @UDC_CSR, align 4
  %79 = call i32 @sun3_udc_write(i32 %77, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i16 0, i16* %81, align 4
  %82 = load i32, i32* @CSR_SEND, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @CSR_FIFO, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @CSR_FIFO, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  store i32* null, i32** @sun3_dma_setup_done, align 8
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %74, %25
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i16 @sun3scsi_dma_count(%struct.TYPE_4__*) #1

declare dso_local i64 @dvma_btov(i32*) #1

declare dso_local i32 @dvma_unmap(i32*) #1

declare dso_local i32 @sun3_udc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
