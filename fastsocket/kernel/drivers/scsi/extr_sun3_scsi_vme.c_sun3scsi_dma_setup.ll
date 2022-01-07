; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i64, i64 }

@sun3_dma_orig_addr = common dso_local global i32* null, align 8
@sun3_dma_orig_count = common dso_local global i64 0, align 8
@CSR_SEND = common dso_local global i32 0, align 4
@dregs = common dso_local global %struct.TYPE_2__* null, align 8
@CSR_PACK_ENABLE = common dso_local global i32 0, align 4
@CSR_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @sun3scsi_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun3scsi_dma_setup(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %12 = call i32 @dvma_unmap(i32* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @dvma_map_vme(i64 %15, i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** @sun3_dma_orig_addr, align 8
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* @sun3_dma_orig_count, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32, i32* @CSR_SEND, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %37

30:                                               ; preds = %13
  %31 = load i32, i32* @CSR_SEND, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* @CSR_PACK_ENABLE, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = lshr i64 %44, 16
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 65535
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i32 @dvma_unmap(i32*) #1

declare dso_local i64 @dvma_map_vme(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
