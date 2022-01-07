; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_genius_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_genius_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Genius\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @genius_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genius_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 4
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 3, i8* %10, align 1
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %13 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %14 = call i32 @ps2_command(%struct.ps2dev* %11, i8* %12, i32 %13)
  %15 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %16 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %17 = call i32 @ps2_command(%struct.ps2dev* %15, i8* null, i32 %16)
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %20 = call i32 @ps2_command(%struct.ps2dev* %18, i8* null, i32 %19)
  %21 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %22 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %23 = call i32 @ps2_command(%struct.ps2dev* %21, i8* null, i32 %22)
  %24 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %26 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %27 = call i32 @ps2_command(%struct.ps2dev* %24, i8* %25, i32 %26)
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 51
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 85
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32, %2
  store i32 -1, i32* %3, align 4
  br label %75

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %43
  %47 = load i32, i32* @BTN_EXTRA, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__set_bit(i32 %47, i32 %52)
  %54 = load i32, i32* @BTN_SIDE, align 4
  %55 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %56 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__set_bit(i32 %54, i32 %59)
  %61 = load i32, i32* @REL_WHEEL, align 4
  %62 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__set_bit(i32 %61, i32 %66)
  %68 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %69 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %71 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %70, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %71, align 8
  %72 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %73 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %72, i32 0, i32 2
  store i32 4, i32* %73, align 8
  br label %74

74:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %42
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
