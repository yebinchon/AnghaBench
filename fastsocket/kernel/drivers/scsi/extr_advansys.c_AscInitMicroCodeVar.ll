; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitMicroCodeVar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitMicroCodeVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32* }
%struct.asc_board = type { i32 }

@ASC_MAX_TID = common dso_local global i32 0, align 4
@ASCV_DISC_ENABLE_B = common dso_local global i32 0, align 4
@ASCV_HOSTSCSI_ID_B = common dso_local global i32 0, align 4
@ASC_OVERRUN_BSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ASCV_OVERRUN_PADDR_D = common dso_local global i32 0, align 4
@ASCV_OVERRUN_BSIZE_D = common dso_local global i32 0, align 4
@ASCV_MC_DATE_W = common dso_local global i64 0, align 8
@ASCV_MC_VER_W = common dso_local global i64 0, align 8
@ASC_MCODE_START_ADDR = common dso_local global i64 0, align 8
@ASC_IERR_SET_PC_ADDR = common dso_local global i32 0, align 4
@ASC_IERR_START_STOP_CHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @AscInitMicroCodeVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AscInitMicroCodeVar(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.asc_board*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call %struct.asc_board* @asc_dvc_to_board(%struct.TYPE_7__* %10)
  store %struct.asc_board* %11, %struct.asc_board** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ASC_MAX_TID, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AscPutMCodeInitSDTRAtID(i32 %20, i32 %21, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @AscInitQLinkVar(%struct.TYPE_7__* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ASCV_DISC_ENABLE_B, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AscWriteLramByte(i32 %38, i32 %39, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ASCV_HOSTSCSI_ID_B, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ASC_TID_TO_TARGET_ID(i32 %52)
  %54 = call i32 @AscWriteLramByte(i32 %46, i32 %47, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 7
  %59 = call i32 @BUG_ON(i64 %58)
  %60 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %61 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @ASC_OVERRUN_BSIZE, align 4
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i32 @dma_map_single(i32 %62, i64 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_le32(i32 %73)
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ASCV_OVERRUN_PADDR_D, align 4
  %77 = bitcast i8** %7 to i32*
  %78 = call i32 @AscMemDWordCopyPtrToLram(i32 %75, i32 %76, i32* %77, i32 1)
  %79 = load i32, i32* @ASC_OVERRUN_BSIZE, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  store i8* %80, i8** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ASCV_OVERRUN_BSIZE_D, align 4
  %83 = bitcast i8** %8 to i32*
  %84 = call i32 @AscMemDWordCopyPtrToLram(i32 %81, i32 %82, i32* %83, i32 1)
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* @ASCV_MC_DATE_W, align 8
  %87 = call i8* @AscReadLramWord(i32 %85, i64 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* @ASCV_MC_VER_W, align 8
  %94 = call i8* @AscReadLramWord(i32 %92, i64 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %101 = call i32 @AscSetPCAddr(i32 %99, i64 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @AscGetPCAddr(i32 %102)
  %104 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %35
  %107 = load i32, i32* @ASC_IERR_SET_PC_ADDR, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %2, align 8
  br label %126

113:                                              ; preds = %35
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @AscStartChip(i32 %114)
  %116 = icmp ne i32 %115, 1
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* @ASC_IERR_START_STOP_CHIP, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i64, i64* %5, align 8
  store i64 %123, i64* %2, align 8
  br label %126

124:                                              ; preds = %113
  %125 = load i64, i64* %5, align 8
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %124, %117, %106
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local %struct.asc_board* @asc_dvc_to_board(%struct.TYPE_7__*) #1

declare dso_local i32 @AscPutMCodeInitSDTRAtID(i32, i32, i32) #1

declare dso_local i32 @AscInitQLinkVar(%struct.TYPE_7__*) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @ASC_TID_TO_TARGET_ID(i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @AscMemDWordCopyPtrToLram(i32, i32, i32*, i32) #1

declare dso_local i8* @AscReadLramWord(i32, i64) #1

declare dso_local i32 @AscSetPCAddr(i32, i64) #1

declare dso_local i64 @AscGetPCAddr(i32) #1

declare dso_local i32 @AscStartChip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
