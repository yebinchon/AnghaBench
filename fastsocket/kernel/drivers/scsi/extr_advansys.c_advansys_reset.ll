; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%p\0A\00", align 1
@reset = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SCSI bus reset started...\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"before AscInitAsc1000Driver()\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SCSI bus reset error: 0x%x\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"SCSI bus reset warning: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SCSI bus reset successful\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"after AscInitAsc1000Driver()\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"before AdvResetChipAndSB()\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SCSI bus reset error\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @advansys_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.asc_board*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %3, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.asc_board* %16, %struct.asc_board** %4, align 8
  %17 = load i32, i32* @SUCCESS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %18)
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %21 = load i32, i32* @reset, align 4
  %22 = call i32 @ASC_STATS(%struct.Scsi_Host* %20, i32 %21)
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %23, %struct.scsi_cmnd* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %27 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %1
  %30 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %31 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = call i32 @AscInitAsc1000Driver(%struct.TYPE_7__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %41, %struct.scsi_cmnd* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @FAILED, align 4
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %52, %struct.scsi_cmnd* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %59 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %57, %struct.scsi_cmnd* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %40
  %62 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_lock_irqsave(i32 %65, i64 %66)
  br label %93

68:                                               ; preds = %1
  %69 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %70 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32* %71, i32** %9, align 8
  %72 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @AdvResetChipAndSB(i32* %73)
  switch i32 %74, label %80 [
    i32 128, label %75
    i32 129, label %79
  ]

75:                                               ; preds = %68
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %78 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %76, %struct.scsi_cmnd* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %85

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %68, %79
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %83 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %81, %struct.scsi_cmnd* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i32, i32* @FAILED, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_lock_irqsave(i32 %88, i64 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @AdvISR(i32* %91)
  br label %93

93:                                               ; preds = %85, %61
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %96 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %98 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32 %99, i64 %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @ASC_STATS(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @AscInitAsc1000Driver(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @AdvResetChipAndSB(i32*) #1

declare dso_local i32 @AdvISR(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
