; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscMsgOutSDTR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscMsgOutSDTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@EXTENDED_MESSAGE = common dso_local global i32 0, align 4
@MS_SDTR_LEN = common dso_local global i32 0, align 4
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@ASC_SYN_MAX_OFFSET = common dso_local global i32 0, align 4
@ASCV_MSGOUT_BEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @AscMsgOutSDTR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscMsgOutSDTR(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @EXTENDED_MESSAGE, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MS_SDTR_LEN, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @EXTENDED_SDTR, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ASC_SYN_MAX_OFFSET, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @AscGetSynPeriodIndex(%struct.TYPE_6__* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ASCV_MSGOUT_BEG, align 4
  %38 = bitcast %struct.TYPE_5__* %8 to i32*
  %39 = call i32 @AscMemWordCopyPtrToLram(i32 %36, i32 %37, i32* %38, i32 10)
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ASCV_MSGOUT_BEG, align 4
  %48 = bitcast %struct.TYPE_5__* %8 to i32*
  %49 = call i32 @AscMemWordCopyPtrToLram(i32 %46, i32 %47, i32* %48, i32 10)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @AscGetSynPeriodIndex(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
