; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_83xx_interrupt_service_routine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_83xx_interrupt_service_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4_83xx_interrupt_service_routine(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @readl(i32* %14)
  %16 = call i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host* %8, i32 %15)
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @writel(i32 0, i32* %20)
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = call i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host* %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @writel(i32 0, i32* %29)
  ret void
}

declare dso_local i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
