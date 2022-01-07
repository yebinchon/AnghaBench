; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_sliced_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_sliced_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_sliced_command(%struct.psmouse* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %11 = call i64 @ps2_command(i32* %9, i8* null, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  store i32 6, i32* %6, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 3
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %26 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 0
  %27 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %28 = call i64 @ps2_command(i32* %26, i8* %7, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %6, align 4
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ps2_command(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
