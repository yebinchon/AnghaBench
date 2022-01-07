; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_nand_device_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_nand_device_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@rtc_from4_fio_base = common dso_local global i64 0, align 8
@RTC_FROM4_FPGA_SR = common dso_local global i64 0, align 8
@RTC_FROM4_DEVICE_READY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @rtc_from4_nand_device_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_from4_nand_device_ready(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca i16, align 2
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load i64, i64* @rtc_from4_fio_base, align 8
  %5 = load i64, i64* @RTC_FROM4_FPGA_SR, align 8
  %6 = add nsw i64 %4, %5
  %7 = inttoptr i64 %6 to i16*
  %8 = load volatile i16, i16* %7, align 2
  store i16 %8, i16* %3, align 2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @RTC_FROM4_DEVICE_READY, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %10, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
