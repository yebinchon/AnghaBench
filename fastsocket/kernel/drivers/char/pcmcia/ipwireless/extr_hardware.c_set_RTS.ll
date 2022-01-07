; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_set_RTS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_set_RTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32* }

@IPW_CONTROL_LINE_RTS = common dso_local global i32 0, align 4
@COMCTRL_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_hardware*, i32, i32, i32)* @set_RTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_RTS(%struct.ipw_hardware* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipw_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load i32, i32* @IPW_CONTROL_LINE_RTS, align 4
  %13 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %14 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %12
  store i32 %20, i32* %18, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load i32, i32* @IPW_CONTROL_LINE_RTS, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %25 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %11
  %33 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @COMCTRL_RTS, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @set_control_line(%struct.ipw_hardware* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @set_control_line(%struct.ipw_hardware*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
