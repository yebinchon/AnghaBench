; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_ql4xxx_sem_spinlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_ql4xxx_sem_spinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"scsi%ld : Trying to get SEM lock - mask= 0x%x, code = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"scsi%ld : Got SEM LOCK - mask= 0x%x, code = 0x%x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql4xxx_sem_spinlock(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 30, i32* %10, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = call i32 @DEBUG2(i32 %16)
  br label %18

18:                                               ; preds = %53, %3
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %27 = call i32 @isp_semaphore(%struct.scsi_qla_host* %26)
  %28 = call i32 @writel(i32 %25, i32 %27)
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %30 = call i32 @isp_semaphore(%struct.scsi_qla_host* %29)
  %31 = call i32 @readw(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 1
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %36, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = call i32 @DEBUG2(i32 %48)
  %50 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %59

51:                                               ; preds = %18
  %52 = call i32 @ssleep(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %18, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @QLA_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %42
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @isp_semaphore(%struct.scsi_qla_host*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
