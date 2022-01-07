; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_receive_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_receive_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i64 }
%struct.sg_mapping_iter = type { i32 }

@CB710_MMC_STATUS2_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S2_FIFO_READY = common dso_local global i32 0, align 4
@CB710_MMC_S1_PIO_TRANSFER_DONE = common dso_local global i32 0, align 4
@CB710_MMC_DATA_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, %struct.sg_mapping_iter*, i64)* @cb710_mmc_receive_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_receive_pio(%struct.cb710_slot* %0, %struct.sg_mapping_iter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb710_slot*, align 8
  %6 = alloca %struct.sg_mapping_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %5, align 8
  store %struct.sg_mapping_iter* %1, %struct.sg_mapping_iter** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %10 = load i32, i32* @CB710_MMC_STATUS2_PORT, align 4
  %11 = call i32 @cb710_read_port_8(%struct.cb710_slot* %9, i32 %10)
  %12 = load i32, i32* @CB710_MMC_S2_FIFO_READY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %17 = load i32, i32* @CB710_MMC_S1_PIO_TRANSFER_DONE, align 4
  %18 = call i32 @cb710_wait_for_event(%struct.cb710_slot* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %26 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %27 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CB710_MMC_DATA_PORT, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @cb710_sg_dwiter_write_from_io(%struct.sg_mapping_iter* %25, i64 %30, i64 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @cb710_read_port_8(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_wait_for_event(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_sg_dwiter_write_from_io(%struct.sg_mapping_iter*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
