; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_absolute_mode_v1_v2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_absolute_mode_v1_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_absolute_mode_v1_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_absolute_mode_v1_v2(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 0
  store %struct.ps2dev* %6, %struct.ps2dev** %4, align 8
  %7 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %8 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %9 = call i32 @ps2_command(%struct.ps2dev* %7, i32* null, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %13 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %14 = call i32 @ps2_command(%struct.ps2dev* %12, i32* null, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %18 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %19 = call i32 @ps2_command(%struct.ps2dev* %17, i32* null, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %23 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %24 = call i32 @ps2_command(%struct.ps2dev* %22, i32* null, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %28 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %29 = call i32 @ps2_command(%struct.ps2dev* %27, i32* null, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %16, %11, %1
  store i32 -1, i32* %2, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %34 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %33, i32 0, i32 0
  %35 = load i32, i32* @PSMOUSE_CMD_SETPOLL, align 4
  %36 = call i32 @ps2_command(%struct.ps2dev* %34, i32* null, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
