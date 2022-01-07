; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_arbitration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_arbitration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ARBIT_STATUS = common dso_local global i32 0, align 4
@ARBIT_WIN = common dso_local global i8 0, align 1
@ARBIT_FAIL = common dso_local global i8 0, align 1
@ARBIT_TIMEOUT_TIME = common dso_local global i32 0, align 4
@NSP32_DEBUG_AUTOSCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"arbit: 0x%x, delay time: %d\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@EXT_PORT = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"arbit timeout\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SET_ARBIT = common dso_local global i32 0, align 4
@ARBIT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @nsp32_arbitration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_arbitration(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ARBIT_STATUS, align 4
  %12 = call zeroext i8 @nsp32_read1(i32 %10, i32 %11)
  store i8 %12, i8* %5, align 1
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @ARBIT_WIN, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @ARBIT_FAIL, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = and i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ARBIT_TIMEOUT_TIME, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi i1 [ false, %15 ], [ %28, %25 ]
  br i1 %30, label %9, label %31

31:                                               ; preds = %29
  %32 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @ARBIT_WIN, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32, i32* @DID_OK, align 4
  %45 = shl i32 %44, 16
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @EXT_PORT, align 4
  %50 = load i32, i32* @LED_ON, align 4
  %51 = call i32 @nsp32_index_write1(i32 %48, i32 %49, i32 %50)
  br label %74

52:                                               ; preds = %31
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @ARBIT_FAIL, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @DID_BUS_BUSY, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %6, align 4
  br label %73

65:                                               ; preds = %52
  %66 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %67 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @DID_NO_CONNECT, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SET_ARBIT, align 4
  %77 = load i32, i32* @ARBIT_CLEAR, align 4
  %78 = call i32 @nsp32_write1(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local zeroext i8 @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_index_write1(i32, i32, i32) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
