; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_mcu_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_mcu_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@H2M_MAILBOX_CSR_OWNER = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR_CMD_TOKEN = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR_ARG0 = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR_ARG1 = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@HOST_CMD_CSR_HOST_COMMAND = common dso_local global i32 0, align 4
@HOST_CMD_CSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_mcu_request(%struct.rt2x00_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %13 = call i64 @rt2x00_is_soc(%struct.rt2x00_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %50

16:                                               ; preds = %5
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %21 = call i64 @WAIT_FOR_MCU(%struct.rt2x00_dev* %20, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load i32, i32* @H2M_MAILBOX_CSR_OWNER, align 4
  %25 = call i32 @rt2x00_set_field32(i64* %11, i32 %24, i32 1)
  %26 = load i32, i32* @H2M_MAILBOX_CSR_CMD_TOKEN, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rt2x00_set_field32(i64* %11, i32 %26, i32 %27)
  %29 = load i32, i32* @H2M_MAILBOX_CSR_ARG0, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @rt2x00_set_field32(i64* %11, i32 %29, i32 %30)
  %32 = load i32, i32* @H2M_MAILBOX_CSR_ARG1, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @rt2x00_set_field32(i64* %11, i32 %32, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %36 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %35, i32 %36, i64 %37)
  store i64 0, i64* %11, align 8
  %39 = load i32, i32* @HOST_CMD_CSR_HOST_COMMAND, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rt2x00_set_field32(i64* %11, i32 %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %43 = load i32, i32* @HOST_CMD_CSR, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %42, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %23, %16
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %15
  ret void
}

declare dso_local i64 @rt2x00_is_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WAIT_FOR_MCU(%struct.rt2x00_dev*, i64*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_register_write_lock(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
