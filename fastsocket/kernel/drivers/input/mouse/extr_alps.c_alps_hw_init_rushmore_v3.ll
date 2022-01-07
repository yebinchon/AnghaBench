; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_hw_init_rushmore_v3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_hw_init_rushmore_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev, %struct.alps_data* }
%struct.ps2dev = type { i32 }
%struct.alps_data = type { i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@ALPS_REG_BASE_RUSHMORE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_rushmore_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_rushmore_v3(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %5, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ALPS_DUALPOINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = load i32, i32* @ALPS_REG_BASE_RUSHMORE, align 4
  %22 = call i32 @alps_setup_trackstick_v3(%struct.psmouse* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %91

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @ALPS_DUALPOINT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %37 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = call i64 @alps_enter_command_mode(%struct.psmouse* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %46, i32 49881)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %50, i32 49867, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45, %41
  br label %91

54:                                               ; preds = %49
  %55 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %56 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %55, i32 49862)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %91

60:                                               ; preds = %54
  %61 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 253
  %64 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %91

67:                                               ; preds = %60
  %68 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %69 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %68, i32 49865, i32 100)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %91

72:                                               ; preds = %67
  %73 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %74 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %73, i32 49860)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %91

78:                                               ; preds = %72
  %79 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 2
  %82 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %79, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %91

85:                                               ; preds = %78
  %86 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %87 = call i32 @alps_exit_command_mode(%struct.psmouse* %86)
  %88 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %89 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %90 = call i32 @ps2_command(%struct.ps2dev* %88, i32* null, i32 %89)
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %84, %77, %71, %66, %59, %53, %27
  %92 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %93 = call i32 @alps_exit_command_mode(%struct.psmouse* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @alps_setup_trackstick_v3(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @__alps_command_mode_write_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
