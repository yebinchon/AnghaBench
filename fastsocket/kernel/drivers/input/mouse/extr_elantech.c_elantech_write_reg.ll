; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.elantech_data* }
%struct.elantech_data = type { i32 }

@ETP_REGISTER_WRITE = common dso_local global i8 0, align 1
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i8 0, align 1
@ETP_PS2_CUSTOM_COMMAND = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [64 x i8] c"elantech.c: failed to write register 0x%02x with value 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8)* @elantech_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_write_reg(%struct.psmouse* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.elantech_data*, align 8
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.elantech_data*, %struct.elantech_data** %11, align 8
  store %struct.elantech_data* %12, %struct.elantech_data** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %18, 38
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %103

21:                                               ; preds = %16
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, 17
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %103

30:                                               ; preds = %25, %21
  %31 = load %struct.elantech_data*, %struct.elantech_data** %8, align 8
  %32 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %94 [
    i32 1, label %34
    i32 2, label %57
  ]

34:                                               ; preds = %30
  %35 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %36 = load i8, i8* @ETP_REGISTER_WRITE, align 1
  %37 = call i32 @psmouse_sliced_command(%struct.psmouse* %35, i8 zeroext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %41 = load i8, i8* %6, align 1
  %42 = call i32 @psmouse_sliced_command(%struct.psmouse* %40, i8 zeroext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %46 = load i8, i8* %7, align 1
  %47 = call i32 @psmouse_sliced_command(%struct.psmouse* %45, i8 zeroext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 0
  %52 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %53 = call i32 @ps2_command(i32* %51, i32* null, i8 zeroext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %44, %39, %34
  store i32 -1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %49
  br label %94

57:                                               ; preds = %30
  %58 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %59 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %60 = call i32 @elantech_ps2_command(%struct.psmouse* %58, i32* null, i8 zeroext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %64 = load i8, i8* @ETP_REGISTER_WRITE, align 1
  %65 = call i32 @elantech_ps2_command(%struct.psmouse* %63, i32* null, i8 zeroext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %62
  %68 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %69 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %70 = call i32 @elantech_ps2_command(%struct.psmouse* %68, i32* null, i8 zeroext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %74 = load i8, i8* %6, align 1
  %75 = call i32 @elantech_ps2_command(%struct.psmouse* %73, i32* null, i8 zeroext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %79 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %80 = call i32 @elantech_ps2_command(%struct.psmouse* %78, i32* null, i8 zeroext %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %84 = load i8, i8* %7, align 1
  %85 = call i32 @elantech_ps2_command(%struct.psmouse* %83, i32* null, i8 zeroext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %89 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %90 = call i32 @elantech_ps2_command(%struct.psmouse* %88, i32* null, i8 zeroext %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82, %77, %72, %67, %62, %57
  store i32 -1, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %94

94:                                               ; preds = %30, %93, %56
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8, i8* %6, align 1
  %99 = load i8, i8* %7, align 1
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8 zeroext %98, i8 zeroext %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %29, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @psmouse_sliced_command(%struct.psmouse*, i8 zeroext) #1

declare dso_local i32 @ps2_command(i32*, i32*, i8 zeroext) #1

declare dso_local i32 @elantech_ps2_command(%struct.psmouse*, i32*, i8 zeroext) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
