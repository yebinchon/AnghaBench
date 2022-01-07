; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_atarimouse.c_atamouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_atarimouse.c_atamouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atamouse_dev = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@atari_mouse_buttons = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atamouse_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atamouse_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, 2
  %16 = shl i32 %15, 1
  %17 = or i32 %10, %16
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @atamouse_dev, align 4
  %28 = load i32, i32* @REL_X, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @input_report_rel(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @atamouse_dev, align 4
  %32 = load i32, i32* @REL_Y, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @input_report_rel(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @atamouse_dev, align 4
  %36 = load i32, i32* @BTN_LEFT, align 4
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 1
  %39 = call i32 @input_report_key(i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* @atamouse_dev, align 4
  %41 = load i32, i32* @BTN_MIDDLE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 2
  %44 = call i32 @input_report_key(i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* @atamouse_dev, align 4
  %46 = load i32, i32* @BTN_RIGHT, align 4
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 4
  %49 = call i32 @input_report_key(i32 %45, i32 %46, i32 %48)
  %50 = load i32, i32* @atamouse_dev, align 4
  %51 = call i32 @input_sync(i32 %50)
  ret void
}

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
