; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_ql4xxx_sem_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_ql4xxx_sem_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"scsi%ld : Got SEM LOCK - mask= 0x%x, code = 0x%x, sema code=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql4xxx_sem_lock(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = call i32 @isp_semaphore(%struct.scsi_qla_host* %17)
  %19 = call i32 @writel(i32 %16, i32 %18)
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %21 = call i32 @isp_semaphore(%struct.scsi_qla_host* %20)
  %22 = call i32 @readw(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = call i32 @DEBUG2(i32 %40)
  store i32 1, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @isp_semaphore(%struct.scsi_qla_host*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
