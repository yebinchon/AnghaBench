; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_thinking_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_thinking_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32 }
%struct.ps2dev = type { i32 }

@thinking_detect.seq = internal constant [9 x i8] c"\14<(\14\14<(\14\14", align 1
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Kensington\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ThinkingMouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @thinking_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thinking_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 3
  store %struct.ps2dev* %10, %struct.ps2dev** %6, align 8
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 10, i8* %11, align 1
  %12 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %15 = call i32 @ps2_command(%struct.ps2dev* %12, i8* %13, i32 %14)
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %16, align 1
  %17 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %20 = call i32 @ps2_command(%struct.ps2dev* %17, i8* %18, i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @thinking_detect.seq, i64 0, i64 0))
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* @thinking_detect.seq, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %34 = call i32 @ps2_command(%struct.ps2dev* %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %41 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %42 = call i32 @ps2_command(%struct.ps2dev* %39, i8* %40, i32 %41)
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %64

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @BTN_EXTRA, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__set_bit(i32 %52, i32 %57)
  %59 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %60 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %62 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %61, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  br label %63

63:                                               ; preds = %51, %48
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
