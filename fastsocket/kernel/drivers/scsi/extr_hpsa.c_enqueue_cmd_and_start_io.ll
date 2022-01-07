; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_enqueue_cmd_and_start_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_enqueue_cmd_and_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32, i32 }
%struct.CommandList = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @enqueue_cmd_and_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_cmd_and_start_io(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %7 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %8 = call i32 @set_performant_mode(%struct.ctlr_info* %6, %struct.CommandList* %7)
  %9 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %10 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %11 = call i32 @dial_down_lockup_detection_during_fw_flash(%struct.ctlr_info* %9, %struct.CommandList* %10)
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %17 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %16, i32 0, i32 2
  %18 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %19 = call i32 @addQ(i32* %17, %struct.CommandList* %18)
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %29 = call i32 @start_io(%struct.ctlr_info* %28)
  ret void
}

declare dso_local i32 @set_performant_mode(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @dial_down_lockup_detection_during_fw_flash(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @addQ(i32*, %struct.CommandList*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @start_io(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
