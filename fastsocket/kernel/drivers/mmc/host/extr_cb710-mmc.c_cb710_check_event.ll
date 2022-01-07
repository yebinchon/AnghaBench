; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_check_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_STATUS_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S0_FIFO_UNDERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CHECK : ignoring bit 6 in status %04X\0A\00", align 1
@CB710_MMC_STATUS0_PORT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS_ERROR_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CHECK : returning EIO on status %04X\0A\00", align 1
@CB710_MMC_STATUS1_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S1_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, i32)* @cb710_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_check_event(%struct.cb710_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cb710_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %8 = load i32, i32* @CB710_MMC_STATUS_PORT, align 4
  %9 = call i32 @cb710_read_port_16(%struct.cb710_slot* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @CB710_MMC_S0_FIFO_UNDERFLOW, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %16 = call i32 @cb710_slot_dev(%struct.cb710_slot* %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %20 = load i32, i32* @CB710_MMC_STATUS0_PORT, align 4
  %21 = load i32, i32* @CB710_MMC_S0_FIFO_UNDERFLOW, align 4
  %22 = call i32 @cb710_write_port_8(%struct.cb710_slot* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @CB710_MMC_S0_FIFO_UNDERFLOW, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %14, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CB710_MMC_STATUS_ERROR_EVENTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %34 = call i32 @cb710_slot_dev(%struct.cb710_slot* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %38 = load i32, i32* @CB710_MMC_STATUS0_PORT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @cb710_write_port_8(%struct.cb710_slot* %37, i32 %38, i32 %40)
  %42 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %43 = load i32, i32* @CB710_MMC_STATUS1_PORT, align 4
  %44 = load i32, i32* @CB710_MMC_S1_RESET, align 4
  %45 = call i32 @cb710_write_port_8(%struct.cb710_slot* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 8
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %56 = load i32, i32* @CB710_MMC_STATUS1_PORT, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cb710_write_port_8(%struct.cb710_slot* %55, i32 %56, i32 %57)
  store i32 1, i32* %3, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %32
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @cb710_read_port_16(%struct.cb710_slot*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_write_port_8(%struct.cb710_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
