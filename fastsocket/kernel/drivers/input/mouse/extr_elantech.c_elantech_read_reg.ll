; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.elantech_data* }
%struct.elantech_data = type { i32 }

@ETP_REGISTER_READ = common dso_local global i8 0, align 1
@PSMOUSE_CMD_GETINFO = common dso_local global i8 0, align 1
@ETP_PS2_CUSTOM_COMMAND = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [45 x i8] c"elantech.c: failed to read register 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8*)* @elantech_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_read_reg(%struct.psmouse* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elantech_data*, align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load %struct.elantech_data*, %struct.elantech_data** %12, align 8
  store %struct.elantech_data* %13, %struct.elantech_data** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sgt i32 %19, 38
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %94

22:                                               ; preds = %17
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sgt i32 %24, 17
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %94

31:                                               ; preds = %26, %22
  %32 = load %struct.elantech_data*, %struct.elantech_data** %8, align 8
  %33 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %82 [
    i32 1, label %35
    i32 2, label %54
  ]

35:                                               ; preds = %31
  %36 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %37 = load i8, i8* @ETP_REGISTER_READ, align 1
  %38 = call i32 @psmouse_sliced_command(%struct.psmouse* %36, i8 zeroext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @psmouse_sliced_command(%struct.psmouse* %41, i8 zeroext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 0
  %48 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %49 = load i8, i8* @PSMOUSE_CMD_GETINFO, align 1
  %50 = call i32 @ps2_command(i32* %47, i8* %48, i8 zeroext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %40, %35
  store i32 -1, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %45
  br label %82

54:                                               ; preds = %31
  %55 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %56 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %57 = call i32 @elantech_ps2_command(%struct.psmouse* %55, i8* null, i8 zeroext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %54
  %60 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %61 = load i8, i8* @ETP_REGISTER_READ, align 1
  %62 = call i32 @elantech_ps2_command(%struct.psmouse* %60, i8* null, i8 zeroext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %59
  %65 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %66 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %67 = call i32 @elantech_ps2_command(%struct.psmouse* %65, i8* null, i8 zeroext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %71 = load i8, i8* %6, align 1
  %72 = call i32 @elantech_ps2_command(%struct.psmouse* %70, i8* null, i8 zeroext %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %77 = load i8, i8* @PSMOUSE_CMD_GETINFO, align 1
  %78 = call i32 @elantech_ps2_command(%struct.psmouse* %75, i8* %76, i8 zeroext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %69, %64, %59, %54
  store i32 -1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %31, %81, %53
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8, i8* %6, align 1
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 zeroext %86)
  br label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %7, align 8
  store i8 %90, i8* %91, align 1
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %30, %21
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @psmouse_sliced_command(%struct.psmouse*, i8 zeroext) #1

declare dso_local i32 @ps2_command(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @elantech_ps2_command(%struct.psmouse*, i8*, i8 zeroext) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
