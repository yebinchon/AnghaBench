; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd_core_if_no_lockup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd_core_if_no_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32 }
%struct.CommandList = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_HARDWARE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_scsi_do_simple_cmd_core_if_no_lockup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_do_simple_cmd_core_if_no_lockup(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %7 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %17 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* @CMD_HARDWARE_ERR, align 4
  %21 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %22 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %31 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %32 = call i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info* %30, %struct.CommandList* %31)
  br label %33

33:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
