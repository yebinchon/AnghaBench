; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_ts_rtc_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_ts_rtc_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ts78xx_fpga = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ts78xx_ts_rtc_device = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ts78xx_ts_rtc_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts78xx_ts_rtc_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = call i32 @ts78xx_ts_rtc_readbyte(i32 126)
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %3, align 1
  %7 = call i32 @ts78xx_ts_rtc_readbyte(i32 127)
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1
  %9 = call i32 @ts78xx_ts_rtc_writebyte(i8 zeroext 0, i32 126)
  %10 = call i32 @ts78xx_ts_rtc_writebyte(i8 zeroext 85, i32 127)
  %11 = call i32 @ts78xx_ts_rtc_readbyte(i32 127)
  %12 = icmp eq i32 %11, 85
  br i1 %12, label %13, label %38

13:                                               ; preds = %0
  %14 = call i32 @ts78xx_ts_rtc_writebyte(i8 zeroext -86, i32 127)
  %15 = call i32 @ts78xx_ts_rtc_readbyte(i32 127)
  %16 = icmp eq i32 %15, 170
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = call i32 @ts78xx_ts_rtc_readbyte(i32 126)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i8, i8* %3, align 1
  %22 = call i32 @ts78xx_ts_rtc_writebyte(i8 zeroext %21, i32 126)
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @ts78xx_ts_rtc_writebyte(i8 zeroext %23, i32 127)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ts78xx_fpga, i32 0, i32 0, i32 0, i32 0), align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = call i32 @platform_device_register(i32* @ts78xx_ts_rtc_device)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ts78xx_fpga, i32 0, i32 0, i32 0, i32 0), align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %35

33:                                               ; preds = %20
  %34 = call i32 @platform_device_add(i32* @ts78xx_ts_rtc_device)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %41

37:                                               ; preds = %17, %13
  br label %38

38:                                               ; preds = %37, %0
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @ts78xx_ts_rtc_readbyte(i32) #1

declare dso_local i32 @ts78xx_ts_rtc_writebyte(i8 zeroext, i32) #1

declare dso_local i32 @platform_device_register(i32*) #1

declare dso_local i32 @platform_device_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
