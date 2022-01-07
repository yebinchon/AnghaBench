; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_activate_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_activate_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev, %struct.fsp_data* }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsp_data = type { i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to enable 4 bytes packet format.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSP_REG_SYSCTL5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to read SYSCTL5 register.\0A\00", align 1
@FSP_BIT_EN_MSID7 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID8 = common dso_local global i32 0, align 4
@FSP_BIT_EN_AUTO_MSID8 = common dso_local global i32 0, align 4
@FSP_BIT_EN_PKT_G0 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to set up required mode bits.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to enable OPC tag mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @fsp_activate_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_activate_protocol(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.fsp_data*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.fsp_data*, %struct.fsp_data** %9, align 8
  store %struct.fsp_data* %10, %struct.fsp_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %5, align 8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -56, i8* %13, align 1
  %14 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %16 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %17 = call i32 @ps2_command(%struct.ps2dev* %14, i8* %15, i32 %16)
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -56, i8* %18, align 1
  %19 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %22 = call i32 @ps2_command(%struct.ps2dev* %19, i8* %20, i32 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 80, i8* %23, align 1
  %24 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %27 = call i32 @ps2_command(%struct.ps2dev* %24, i8* %25, i32 %26)
  %28 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %31 = call i32 @ps2_command(%struct.ps2dev* %28, i8* %29, i32 %30)
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %111

45:                                               ; preds = %1
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %48 = call i64 @fsp_reg_read(%struct.psmouse* %46, i32 %47, i32* %7)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %52 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %111

59:                                               ; preds = %45
  %60 = load i32, i32* @FSP_BIT_EN_MSID7, align 4
  %61 = load i32, i32* @FSP_BIT_EN_MSID8, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FSP_BIT_EN_AUTO_MSID8, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @FSP_BIT_EN_PKT_G0, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %73 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %80

76:                                               ; preds = %59
  %77 = load i32, i32* @FSP_BIT_EN_MSID6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %59
  %81 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %82 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @fsp_reg_write(%struct.psmouse* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %111

95:                                               ; preds = %80
  %96 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %97 = call i64 @fsp_opc_tag_enable(%struct.psmouse* %96, i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %101 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @dev_warn(i32* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %99, %95
  %107 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %108 = call i32 @fsp_onpad_vscr(%struct.psmouse* %107, i32 1)
  %109 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %110 = call i32 @fsp_onpad_hscr(%struct.psmouse* %109, i32 1)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %86, %50, %36
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

declare dso_local i64 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @fsp_opc_tag_enable(%struct.psmouse*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fsp_onpad_vscr(%struct.psmouse*, i32) #1

declare dso_local i32 @fsp_onpad_hscr(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
