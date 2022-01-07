; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_inline.h_qla2x00_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_inline.h_qla2x00_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsp_que = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.rsp_que*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsp_que*)* @qla2x00_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_poll(%struct.rsp_que* %0) #0 {
  %2 = alloca %struct.rsp_que*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.rsp_que* %0, %struct.rsp_que** %2, align 8
  %5 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %6 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %11 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %15 = call i32 @qla82xx_poll(i32 0, %struct.rsp_que* %14)
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.rsp_que*)*, i32 (i32, %struct.rsp_que*)** %20, align 8
  %22 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %23 = call i32 %21(i32 0, %struct.rsp_que* %22)
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_poll(i32, %struct.rsp_que*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
