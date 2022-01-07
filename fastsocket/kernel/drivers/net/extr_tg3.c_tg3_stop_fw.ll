; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_stop_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_stop_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ENABLE_ASF = common dso_local global i32 0, align 4
@ENABLE_APE = common dso_local global i32 0, align 4
@NIC_SRAM_FW_CMD_MBOX = common dso_local global i32 0, align 4
@FWCMD_NICDRV_PAUSE_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_stop_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_stop_fw(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load %struct.tg3*, %struct.tg3** %2, align 8
  %4 = load i32, i32* @ENABLE_ASF, align 4
  %5 = call i64 @tg3_flag(%struct.tg3* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.tg3*, %struct.tg3** %2, align 8
  %9 = load i32, i32* @ENABLE_APE, align 4
  %10 = call i64 @tg3_flag(%struct.tg3* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = call i32 @tg3_wait_for_event_ack(%struct.tg3* %13)
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = load i32, i32* @NIC_SRAM_FW_CMD_MBOX, align 4
  %17 = load i32, i32* @FWCMD_NICDRV_PAUSE_FW, align 4
  %18 = call i32 @tg3_write_mem(%struct.tg3* %15, i32 %16, i32 %17)
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = call i32 @tg3_generate_fw_event(%struct.tg3* %19)
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = call i32 @tg3_wait_for_event_ack(%struct.tg3* %21)
  br label %23

23:                                               ; preds = %12, %7, %1
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_wait_for_event_ack(%struct.tg3*) #1

declare dso_local i32 @tg3_write_mem(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_generate_fw_event(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
