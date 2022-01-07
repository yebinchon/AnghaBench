; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@WAIT_CMD_TOV = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Wait up to %d seconds for cmds to complete\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4xxx_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_cmd_wait(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @WAIT_CMD_TOV, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = mul i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = load i64, i64* @WAIT_CMD_TOV, align 8
  %16 = call i32 @ql4_printk(i32 %13, %struct.scsi_qla_host* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @DEBUG2(i32 %16)
  br label %18

18:                                               ; preds = %68, %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @time_after_eq(i64 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %51, %24
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__* %40, i64 %41)
  store %struct.scsi_cmnd* %42, %struct.scsi_cmnd** %6, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = icmp ne %struct.scsi_cmnd* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %47 = call i64 @CMD_SP(%struct.scsi_cmnd* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %54

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %29

54:                                               ; preds = %49, %29
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 1
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %72

68:                                               ; preds = %54
  %69 = call i32 @msleep(i32 1000)
  br label %18

70:                                               ; preds = %18
  %71 = load i32, i32* @QLA_ERROR, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
