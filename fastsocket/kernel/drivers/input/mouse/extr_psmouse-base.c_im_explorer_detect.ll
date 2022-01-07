; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_im_explorer_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_im_explorer_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Explorer Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @im_explorer_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @im_explorer_detect(%struct.psmouse* %0, i32 %1) #0 {
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
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = call i32 @intellimouse_detect(%struct.psmouse* %10, i32 0)
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -56, i8* %12, align 1
  %13 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %15 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %16 = call i32 @ps2_command(%struct.ps2dev* %13, i8* %14, i32 %15)
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -56, i8* %17, align 1
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %20 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %21 = call i32 @ps2_command(%struct.ps2dev* %18, i8* %19, i32 %20)
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 80, i8* %22, align 1
  %23 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %26 = call i32 @ps2_command(%struct.ps2dev* %23, i8* %24, i32 %25)
  %27 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %30 = call i32 @ps2_command(%struct.ps2dev* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %109

36:                                               ; preds = %2
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -56, i8* %37, align 1
  %38 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %41 = call i32 @ps2_command(%struct.ps2dev* %38, i8* %39, i32 %40)
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 80, i8* %42, align 1
  %43 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %46 = call i32 @ps2_command(%struct.ps2dev* %43, i8* %44, i32 %45)
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 40, i8* %47, align 1
  %48 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %50 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %51 = call i32 @ps2_command(%struct.ps2dev* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %36
  %55 = load i32, i32* @BTN_MIDDLE, align 4
  %56 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__set_bit(i32 %55, i32 %60)
  %62 = load i32, i32* @REL_WHEEL, align 4
  %63 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %64 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__set_bit(i32 %62, i32 %67)
  %69 = load i32, i32* @REL_HWHEEL, align 4
  %70 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %71 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @__set_bit(i32 %69, i32 %74)
  %76 = load i32, i32* @BTN_SIDE, align 4
  %77 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %78 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__set_bit(i32 %76, i32 %81)
  %83 = load i32, i32* @BTN_EXTRA, align 4
  %84 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %85 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__set_bit(i32 %83, i32 %88)
  %90 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %91 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %54
  %95 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %96 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %96, align 8
  br label %97

97:                                               ; preds = %94, %54
  %98 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %99 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %104 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %103, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %107 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %106, i32 0, i32 2
  store i32 4, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %36
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %35
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @intellimouse_detect(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
