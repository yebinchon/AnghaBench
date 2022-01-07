; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_start_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_start_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i64, %struct.aac_init* }
%struct.aac_init = type { i32 }

@INIT_STRUCT_BASE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @aac_rx_start_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_rx_start_adapter(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca %struct.aac_init*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %4 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %5 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %4, i32 0, i32 1
  %6 = load %struct.aac_init*, %struct.aac_init** %5, align 8
  store %struct.aac_init* %6, %struct.aac_init** %3, align 8
  %7 = call i32 (...) @get_seconds()
  %8 = call i32 @cpu_to_le32(i32 %7)
  %9 = load %struct.aac_init*, %struct.aac_init** %3, align 8
  %10 = getelementptr inbounds %struct.aac_init, %struct.aac_init* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %12 = load i32, i32* @INIT_STRUCT_BASE_ADDRESS, align 4
  %13 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @rx_sync_cmd(%struct.aac_dev* %11, i32 %12, i32 %16, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @rx_sync_cmd(%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
