; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sh_rtc = type { i32 }

@PF_OXS = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @sh_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sh_rtc*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.sh_rtc* %10, %struct.sh_rtc** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %35 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %18
    i32 128, label %27
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 130
  %16 = zext i1 %15 to i32
  %17 = call i32 @sh_rtc_setaie(%struct.device* %13, i32 %16)
  br label %38

18:                                               ; preds = %3
  %19 = load i32, i32* @PF_OXS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %22 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @sh_rtc_setcie(%struct.device* %25, i32 0)
  br label %38

27:                                               ; preds = %3
  %28 = load i32, i32* @PF_OXS, align 4
  %29 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %30 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @sh_rtc_setcie(%struct.device* %33, i32 1)
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOIOCTLCMD, align 4
  %37 = sub i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %27, %18, %12
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sh_rtc_setaie(%struct.device*, i32) #1

declare dso_local i32 @sh_rtc_setcie(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
