; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@STATE_AWAKE = common dso_local global i32 0, align 4
@MAC_CSR17_BBP_DESIRE_STATE = common dso_local global i32 0, align 4
@MAC_CSR17_RF_DESIRE_STATE = common dso_local global i32 0, align 4
@MAC_CSR17_PUT_TO_SLEEP = common dso_local global i32 0, align 4
@MAC_CSR17 = common dso_local global i32 0, align 4
@MAC_CSR17_SET_STATE = common dso_local global i32 0, align 4
@REGISTER_BUSY_COUNT = common dso_local global i32 0, align 4
@MAC_CSR17_BBP_CURR_STATE = common dso_local global i32 0, align 4
@MAC_CSR17_RF_CURR_STATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2500usb_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_set_state(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATE_AWAKE, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %9, align 1
  store i64 0, i64* %6, align 8
  %17 = load i32, i32* @MAC_CSR17_BBP_DESIRE_STATE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rt2x00_set_field16(i64* %6, i32 %17, i32 %18)
  %20 = load i32, i32* @MAC_CSR17_RF_DESIRE_STATE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rt2x00_set_field16(i64* %6, i32 %20, i32 %21)
  %23 = load i32, i32* @MAC_CSR17_PUT_TO_SLEEP, align 4
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @rt2x00_set_field16(i64* %6, i32 %23, i32 %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %28 = load i32, i32* @MAC_CSR17, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %27, i32 %28, i64 %29)
  %31 = load i32, i32* @MAC_CSR17_SET_STATE, align 4
  %32 = call i32 @rt2x00_set_field16(i64* %6, i32 %31, i32 1)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %34 = load i32, i32* @MAC_CSR17, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %33, i32 %34, i64 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %67, %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %43 = load i32, i32* @MAC_CSR17, align 4
  %44 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %42, i32 %43, i64* %7)
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @MAC_CSR17_BBP_CURR_STATE, align 4
  %47 = call signext i8 @rt2x00_get_field16(i64 %45, i32 %46)
  store i8 %47, i8* %10, align 1
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @MAC_CSR17_RF_CURR_STATE, align 4
  %50 = call signext i8 @rt2x00_get_field16(i64 %48, i32 %49)
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %10, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %73

61:                                               ; preds = %55, %41
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %63 = load i32, i32* @MAC_CSR17, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %62, i32 %63, i64 %64)
  %66 = call i32 @msleep(i32 30)
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %37

70:                                               ; preds = %37
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @rt2x00_set_field16(i64*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32, i64*) #1

declare dso_local signext i8 @rt2x00_get_field16(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
