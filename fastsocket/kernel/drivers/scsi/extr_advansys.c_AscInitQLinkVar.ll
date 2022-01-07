; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitQLinkVar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitQLinkVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ASCV_BUSY_QHEAD_B = common dso_local global i32 0, align 4
@ASCV_DISC1_QHEAD_B = common dso_local global i32 0, align 4
@ASCV_TOTAL_READY_Q_B = common dso_local global i64 0, align 8
@ASCV_ASCDVC_ERR_CODE_W = common dso_local global i32 0, align 4
@ASCV_HALTCODE_W = common dso_local global i32 0, align 4
@ASCV_STOP_CODE_B = common dso_local global i32 0, align 4
@ASCV_SCSIBUSY_B = common dso_local global i32 0, align 4
@ASCV_WTM_FLAG_B = common dso_local global i32 0, align 4
@ASC_QADR_BEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @AscInitQLinkVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscInitQLinkVar(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @AscPutRiscVarFreeQHead(i32 %9, i32 1)
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @AscPutRiscVarDoneQTail(i32 %11, i64 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @AscPutVarFreeQHead(i32 %16, i32 1)
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @AscPutVarDoneQTail(i32 %18, i64 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ASCV_BUSY_QHEAD_B, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = call i32 @AscWriteLramByte(i32 %23, i32 %24, i64 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ASCV_DISC1_QHEAD_B, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = call i32 @AscWriteLramByte(i32 %32, i32 %33, i64 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* @ASCV_TOTAL_READY_Q_B, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @AscWriteLramByte(i32 %41, i32 %43, i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ASCV_ASCDVC_ERR_CODE_W, align 4
  %50 = call i32 @AscWriteLramWord(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %53 = call i32 @AscWriteLramWord(i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %56 = call i32 @AscWriteLramByte(i32 %54, i32 %55, i64 0)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ASCV_SCSIBUSY_B, align 4
  %59 = call i32 @AscWriteLramByte(i32 %57, i32 %58, i64 0)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ASCV_WTM_FLAG_B, align 4
  %62 = call i32 @AscWriteLramByte(i32 %60, i32 %61, i64 0)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @AscPutQDoneInProgress(i32 %63, i32 0)
  %65 = load i32, i32* @ASC_QADR_BEG, align 4
  store i32 %65, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %73, %1
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @AscWriteLramWord(i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %5, align 4
  br label %66

78:                                               ; preds = %66
  ret void
}

declare dso_local i32 @AscPutRiscVarFreeQHead(i32, i32) #1

declare dso_local i32 @AscPutRiscVarDoneQTail(i32, i64) #1

declare dso_local i32 @AscPutVarFreeQHead(i32, i32) #1

declare dso_local i32 @AscPutVarDoneQTail(i32, i64) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i64) #1

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

declare dso_local i32 @AscPutQDoneInProgress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
