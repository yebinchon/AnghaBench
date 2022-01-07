; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_8xxx_default_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_8xxx_default_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.scsi_qla_host*, i32)* }
%struct.TYPE_3__ = type { i32, i32 }

@ISRX_82XX_RISC_INT = common dso_local global i32 0, align 4
@HSRX_RISC_MB_INT = common dso_local global i32 0, align 4
@HSRX_RISC_IOCB_INT = common dso_local global i32 0, align 4
@MAX_REQS_SERVICED_PER_INTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_default_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = call i64 @is_qla8032(%struct.scsi_qla_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @qla4_83xx_mailbox_intr_handler(i32 %15, i8* %16)
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %18, %66
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @readl(i32* %27)
  %29 = load i32, i32* @ISRX_82XX_RISC_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host* %33, i64 %34)
  br label %67

36:                                               ; preds = %23
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @readl(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HSRX_RISC_MB_INT, align 4
  %44 = load i32, i32* @HSRX_RISC_IOCB_INT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host* %49, i64 %50)
  br label %67

52:                                               ; preds = %36
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.scsi_qla_host*, i32)*, i32 (%struct.scsi_qla_host*, i32)** %56, align 8
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 %57(%struct.scsi_qla_host* %58, i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* @MAX_REQS_SERVICED_PER_INTR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %67

66:                                               ; preds = %52
  br label %23

67:                                               ; preds = %65, %48, %32
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %67, %14
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %77
}

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_mailbox_intr_handler(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
