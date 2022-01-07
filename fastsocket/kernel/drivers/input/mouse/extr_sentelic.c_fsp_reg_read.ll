; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@PSMOUSE_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"READ REG: 0x%02x is 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32*)* @fsp_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_reg_read(%struct.psmouse* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ps2dev*, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %7, align 8
  store i32 -1, i32* %10, align 4
  %13 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %14 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %15 = call i32 @ps2_command(%struct.ps2dev* %13, i32* null, i32 %14)
  %16 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %17 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %18 = call i32 @psmouse_set_state(%struct.psmouse* %16, i32 %17)
  %19 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %20 = call i32 @ps2_begin_command(%struct.ps2dev* %19)
  %21 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %22 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %23 = call i64 @ps2_sendbyte(%struct.ps2dev* %21, i8 zeroext -13, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %79

26:                                               ; preds = %3
  %27 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %28 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %29 = call i64 @ps2_sendbyte(%struct.ps2dev* %27, i8 zeroext 102, i32 %28)
  %30 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %31 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %32 = call i64 @ps2_sendbyte(%struct.ps2dev* %30, i8 zeroext -120, i32 %31)
  %33 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %34 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %35 = call i64 @ps2_sendbyte(%struct.ps2dev* %33, i8 zeroext -13, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %79

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = call zeroext i8 @fsp_test_invert_cmd(i32 %39)
  store i8 %40, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %46 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %47 = call i64 @ps2_sendbyte(%struct.ps2dev* %45, i8 zeroext 104, i32 %46)
  br label %63

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = call zeroext i8 @fsp_test_swap_cmd(i32 %49)
  store i8 %50, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %56 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %57 = call i64 @ps2_sendbyte(%struct.ps2dev* %55, i8 zeroext -52, i32 %56)
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %60 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %61 = call i64 @ps2_sendbyte(%struct.ps2dev* %59, i8 zeroext 102, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %65 = load i8, i8* %9, align 1
  %66 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %67 = call i64 @ps2_sendbyte(%struct.ps2dev* %64, i8 zeroext %65, i32 %66)
  %68 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %70 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %71 = call i64 @__ps2_command(%struct.ps2dev* %68, i8* %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %79

74:                                               ; preds = %63
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %73, %37, %25
  %80 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %81 = call i32 @ps2_end_command(%struct.ps2dev* %80)
  %82 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %83 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %84 = call i32 @ps2_command(%struct.ps2dev* %82, i32* null, i32 %83)
  %85 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %86 = load i32, i32* @PSMOUSE_ACTIVATED, align 4
  %87 = call i32 @psmouse_set_state(%struct.psmouse* %85, i32 %86)
  %88 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %89 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %5, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i64 @__ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
