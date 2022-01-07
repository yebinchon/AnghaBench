; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_intellimouse_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_intellimouse_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Wheel Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @intellimouse_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intellimouse_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [2 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 4
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -56, i8* %10, align 1
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %13 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %14 = call i32 @ps2_command(%struct.ps2dev* %11, i8* %12, i32 %13)
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 100, i8* %15, align 1
  %16 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %19 = call i32 @ps2_command(%struct.ps2dev* %16, i8* %17, i32 %18)
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 80, i8* %20, align 1
  %21 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %24 = call i32 @ps2_command(%struct.ps2dev* %21, i8* %22, i32 %23)
  %25 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %28 = call i32 @ps2_command(%struct.ps2dev* %25, i8* %26, i32 %27)
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, i32* @BTN_MIDDLE, align 4
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__set_bit(i32 %38, i32 %43)
  %45 = load i32, i32* @REL_WHEEL, align 4
  %46 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__set_bit(i32 %45, i32 %50)
  %52 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %37
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %56, %37
  %60 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %66 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %65, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %69 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %68, i32 0, i32 2
  store i32 4, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %34
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
