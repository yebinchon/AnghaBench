; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_bbp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_bbp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@BBP_CSR_CFG_VALUE = common dso_local global i32 0, align 4
@BBP_CSR_CFG_REGNUM = common dso_local global i32 0, align 4
@BBP_CSR_CFG_BUSY = common dso_local global i32 0, align 4
@BBP_CSR_CFG_READ_CONTROL = common dso_local global i32 0, align 4
@BBP_CSR_CFG_BBP_RW_MODE = common dso_local global i32 0, align 4
@BBP_CSR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i32)* @rt2800_bbp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_bbp_write(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = call i64 @WAIT_FOR_BBP(%struct.rt2x00_dev* %11, i64* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @BBP_CSR_CFG_VALUE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rt2x00_set_field32(i64* %7, i32 %15, i32 %16)
  %18 = load i32, i32* @BBP_CSR_CFG_REGNUM, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @rt2x00_set_field32(i64* %7, i32 %18, i32 %19)
  %21 = load i32, i32* @BBP_CSR_CFG_BUSY, align 4
  %22 = call i32 @rt2x00_set_field32(i64* %7, i32 %21, i32 1)
  %23 = load i32, i32* @BBP_CSR_CFG_READ_CONTROL, align 4
  %24 = call i32 @rt2x00_set_field32(i64* %7, i32 %23, i32 0)
  %25 = load i32, i32* @BBP_CSR_CFG_BBP_RW_MODE, align 4
  %26 = call i32 @rt2x00_set_field32(i64* %7, i32 %25, i32 1)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %28 = load i32, i32* @BBP_CSR_CFG, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %27, i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %14, %3
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WAIT_FOR_BBP(%struct.rt2x00_dev*, i64*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_register_write_lock(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
