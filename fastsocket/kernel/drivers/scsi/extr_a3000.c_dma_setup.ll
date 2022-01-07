; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a3000.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a3000.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i16, i64, i32 }

@CNTR_PDMD = common dso_local global i16 0, align 2
@CNTR_INTEN = common dso_local global i16 0, align 2
@A3000_XFER_MASK = common dso_local global i64 0, align 8
@a3000_host = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CNTR_DDIR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i16, i16* @CNTR_PDMD, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @CNTR_INTEN, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %6, align 2
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @virt_to_bus(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @A3000_XFER_MASK, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %2
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 511
  %29 = and i32 %28, -512
  %30 = load i32, i32* @a3000_host, align 4
  %31 = call %struct.TYPE_5__* @HDATA(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @a3000_host, align 4
  %34 = call %struct.TYPE_5__* @HDATA(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kmalloc(i32 %36, i32 %37)
  %39 = load i32, i32* @a3000_host, align 4
  %40 = call %struct.TYPE_5__* @HDATA(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @a3000_host, align 4
  %43 = call %struct.TYPE_5__* @HDATA(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %23
  %48 = load i32, i32* @a3000_host, align 4
  %49 = call %struct.TYPE_5__* @HDATA(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  store i32 1, i32* %3, align 4
  br label %119

51:                                               ; preds = %23
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @a3000_host, align 4
  %56 = call %struct.TYPE_5__* @HDATA(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %58, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %54, %51
  %69 = load i32, i32* @a3000_host, align 4
  %70 = call %struct.TYPE_5__* @HDATA(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @virt_to_bus(i32 %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %68, %2
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i16, i16* @CNTR_DDIR, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* %6, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %6, align 2
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @a3000_host, align 4
  %87 = call %struct.TYPE_5__* @HDATA(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i16, i16* %6, align 2
  %90 = load i32, i32* @a3000_host, align 4
  %91 = call %struct.TYPE_6__* @DMA(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i16 %89, i16* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @a3000_host, align 4
  %95 = call %struct.TYPE_6__* @DMA(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %84
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cache_clear(i64 %100, i32 %104)
  br label %113

106:                                              ; preds = %84
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cache_push(i64 %107, i32 %111)
  br label %113

113:                                              ; preds = %106, %99
  %114 = call i32 (...) @mb()
  %115 = load i32, i32* @a3000_host, align 4
  %116 = call %struct.TYPE_6__* @DMA(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  %118 = call i32 (...) @mb()
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %113, %47
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @virt_to_bus(i32) #1

declare dso_local %struct.TYPE_5__* @HDATA(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @DMA(i32) #1

declare dso_local i32 @cache_clear(i64, i32) #1

declare dso_local i32 @cache_push(i64, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
