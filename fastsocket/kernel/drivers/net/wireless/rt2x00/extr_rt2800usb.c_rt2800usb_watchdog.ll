; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@TXRXQ_PCNT = common dso_local global i32 0, align 4
@TXRXQ_PCNT_TX0Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TX HW queue 0 timed out, invoke forced kick\0A\00", align 1
@PBF_CFG = common dso_local global i32 0, align 4
@TXRXQ_PCNT_TX1Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"TX HW queue 1 timed out, invoke forced kick\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800usb_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800usb_watchdog(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @TXRXQ_PCNT, align 4
  %7 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %5, i32 %6, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TXRXQ_PCNT_TX0Q, align 4
  %10 = call i64 @rt2x00_get_field32(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32, i32* @PBF_CFG, align 4
  %17 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %15, i32 %16, i32 15990802)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %29, %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = call i32 @udelay(i32 10)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TXRXQ_PCNT_TX0Q, align 4
  %25 = call i64 @rt2x00_get_field32(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %18

32:                                               ; preds = %27, %18
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load i32, i32* @PBF_CFG, align 4
  %35 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %33, i32 %34, i32 15990790)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = load i32, i32* @TXRXQ_PCNT, align 4
  %39 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %37, i32 %38, i32* %4)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TXRXQ_PCNT_TX1Q, align 4
  %42 = call i64 @rt2x00_get_field32(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = load i32, i32* @PBF_CFG, align 4
  %49 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %47, i32 %48, i32 15990794)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %61, %44
  %51 = load i32, i32* %3, align 4
  %52 = icmp ult i32 %51, 10
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = call i32 @udelay(i32 10)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TXRXQ_PCNT_TX1Q, align 4
  %57 = call i64 @rt2x00_get_field32(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %50

64:                                               ; preds = %59, %50
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = load i32, i32* @PBF_CFG, align 4
  %67 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %65, i32 %66, i32 15990790)
  br label %68

68:                                               ; preds = %64, %36
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2x00usb_watchdog(%struct.rt2x00_dev* %69)
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rt2x00usb_watchdog(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
