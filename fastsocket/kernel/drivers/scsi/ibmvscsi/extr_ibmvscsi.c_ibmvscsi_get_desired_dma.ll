; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_get_desired_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_get_desired_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }

@max_events = common dso_local global i32 0, align 4
@IBMVSCSI_MAX_SECTORS_DEFAULT = common dso_local global i32 0, align 4
@IBMVSCSI_CMDS_PER_LUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vio_dev*)* @ibmvscsi_get_desired_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsi_get_desired_dma(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load i32, i32* @max_events, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @IBMVSCSI_MAX_SECTORS_DEFAULT, align 4
  %8 = mul nsw i32 %7, 512
  %9 = load i32, i32* @IBMVSCSI_CMDS_PER_LUN_DEFAULT, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  ret i64 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
