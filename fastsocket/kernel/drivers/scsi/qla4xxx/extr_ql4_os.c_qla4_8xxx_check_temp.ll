; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4_8xxx_check_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4_8xxx_check_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA8XXX_CRB_TEMP_STATE = common dso_local global i32 0, align 4
@QLA82XX_TEMP_PANIC = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Device temperature %d degrees C exceeds maximum allowed. Hardware has been shut down.\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA82XX_TEMP_WARN = common dso_local global i64 0, align 8
@QLA82XX_TEMP_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Device temperature is now %d degrees C in normal range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4_8xxx_check_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_8xxx_check_temp(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %7 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = load i32, i32* @QLA8XXX_CRB_TEMP_STATE, align 4
  %10 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @qla82xx_get_temp_state(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @qla82xx_get_temp_val(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @QLA82XX_TEMP_PANIC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @KERN_WARNING, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ql4_printk(i32 %19, %struct.scsi_qla_host* %20, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @QLA_ERROR, align 4
  store i32 %23, i32* %6, align 4
  br label %53

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @QLA82XX_TEMP_WARN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QLA82XX_TEMP_NORMAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @ql4_printk(i32 %35, %struct.scsi_qla_host* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %52

40:                                               ; preds = %24
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QLA82XX_TEMP_WARN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @ql4_printk(i32 %47, %struct.scsi_qla_host* %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @qla82xx_get_temp_state(i64) #1

declare dso_local i64 @qla82xx_get_temp_val(i64) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
