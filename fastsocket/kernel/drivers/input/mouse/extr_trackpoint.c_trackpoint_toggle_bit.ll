; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_toggle_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_toggle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32 }

@TP_COMMAND = common dso_local global i8 0, align 1
@TP_TOGGLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2dev*, i8, i8)* @trackpoint_toggle_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_toggle_bit(%struct.ps2dev* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.ps2dev* %0, %struct.ps2dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %13, 47
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %42

16:                                               ; preds = %11
  %17 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %18 = load i8, i8* @TP_COMMAND, align 1
  %19 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %18)
  %20 = call i64 @ps2_command(%struct.ps2dev* %17, i32* null, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %24 = load i8, i8* @TP_TOGGLE, align 1
  %25 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %24)
  %26 = call i64 @ps2_command(%struct.ps2dev* %23, i32* null, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %30)
  %32 = call i64 @ps2_command(%struct.ps2dev* %29, i32* null, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %36 = load i8, i8* %7, align 1
  %37 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %36)
  %38 = call i64 @ps2_command(%struct.ps2dev* %35, i32* null, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28, %22, %16
  store i32 -1, i32* %4, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
