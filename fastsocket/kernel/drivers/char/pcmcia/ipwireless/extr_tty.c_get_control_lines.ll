; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_get_control_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_get_control_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i32 }

@IPW_CONTROL_LINE_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@IPW_CONTROL_LINE_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@IPW_CONTROL_LINE_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@IPW_CONTROL_LINE_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@IPW_CONTROL_LINE_DCD = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_tty*)* @get_control_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_control_lines(%struct.ipw_tty* %0) #0 {
  %2 = alloca %struct.ipw_tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipw_tty* %0, %struct.ipw_tty** %2, align 8
  %5 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IPW_CONTROL_LINE_RTS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @TIOCM_RTS, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IPW_CONTROL_LINE_DTR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @TIOCM_DTR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IPW_CONTROL_LINE_CTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @TIOCM_CTS, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IPW_CONTROL_LINE_DSR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @TIOCM_DSR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @IPW_CONTROL_LINE_DCD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @TIOCM_CD, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
