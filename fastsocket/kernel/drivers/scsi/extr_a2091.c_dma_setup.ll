; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a2091.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a2091.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i16, i64, i32 }

@CNTR_PDMD = common dso_local global i16 0, align 2
@CNTR_INTEN = common dso_local global i16 0, align 2
@A2091_XFER_MASK = common dso_local global i64 0, align 8
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
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i16, i16* @CNTR_PDMD, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @CNTR_INTEN, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %6, align 2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @virt_to_bus(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @A2091_XFER_MASK, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 511
  %35 = and i32 %34, -512
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %37 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %46 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32* %44, i32** %47, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %49 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %29
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %55 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  store i32 1, i32* %3, align 4
  br label %156

57:                                               ; preds = %29
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %59 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @virt_to_bus(i32* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @A2091_XFER_MASK, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %69 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %74 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %77 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  store i32 1, i32* %3, align 4
  br label %156

79:                                               ; preds = %57
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %84 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i32* %86, i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %82, %79
  br label %97

97:                                               ; preds = %96, %2
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i16, i16* @CNTR_DDIR, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* %6, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %6, align 2
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %112, align 8
  %114 = call %struct.TYPE_7__* @HDATA(%struct.Scsi_Host* %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 %108, i32* %115, align 4
  %116 = load i16, i16* %6, align 2
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %118 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %120, align 8
  %122 = call %struct.TYPE_8__* @DMA(%struct.Scsi_Host* %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i16 %116, i16* %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.Scsi_Host*, %struct.Scsi_Host** %128, align 8
  %130 = call %struct.TYPE_8__* @DMA(%struct.Scsi_Host* %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i64 %124, i64* %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %107
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cache_clear(i64 %135, i32 %139)
  br label %148

141:                                              ; preds = %107
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @cache_push(i64 %142, i32 %146)
  br label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.Scsi_Host*, %struct.Scsi_Host** %152, align 8
  %154 = call %struct.TYPE_8__* @DMA(%struct.Scsi_Host* %153)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %148, %67, %53
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @virt_to_bus(i32*) #1

declare dso_local %struct.TYPE_7__* @HDATA(%struct.Scsi_Host*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @DMA(%struct.Scsi_Host*) #1

declare dso_local i32 @cache_clear(i64, i32) #1

declare dso_local i32 @cache_push(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
