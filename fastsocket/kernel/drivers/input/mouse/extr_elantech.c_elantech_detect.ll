; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"elantech.c: sending Elantech magic knock failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"elantech.c: unexpected magic knock result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@ETP_FW_VERSION_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"elantech.c: failed to query firmware version.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"elantech.c: Elantech version query result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"elantech.c: Probably not a real Elantech touchpad. Aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Elantech\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elantech_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 2
  %12 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %13 = call i64 @ps2_command(%struct.ps2dev* %11, i8* null, i32 %12)
  %14 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %15 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %16 = call i64 @ps2_command(%struct.ps2dev* %14, i8* null, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  %19 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %20 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %21 = call i64 @ps2_command(%struct.ps2dev* %19, i8* null, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %25 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %26 = call i64 @ps2_command(%struct.ps2dev* %24, i8* null, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %30 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %31 = call i64 @ps2_command(%struct.ps2dev* %29, i8* null, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %36 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %37 = call i64 @ps2_command(%struct.ps2dev* %34, i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %28, %23, %18, %2
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

41:                                               ; preds = %33
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 60
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 200
  br i1 %55, label %56, label %67

56:                                               ; preds = %51, %46, %41
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  store i32 -1, i32* %3, align 4
  br label %106

67:                                               ; preds = %51
  %68 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %69 = load i32, i32* @ETP_FW_VERSION_QUERY, align 4
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %71 = call i64 @synaptics_send_cmd(%struct.psmouse* %68, i32 %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

75:                                               ; preds = %67
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %75
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90, %75
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

97:                                               ; preds = %90
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %102 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %102, align 8
  %103 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %104 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %103, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %97
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %95, %73, %56, %39
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @synaptics_send_cmd(%struct.psmouse*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
