; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_read.c"
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
@.str = private unnamed_addr constant [33 x i8] c"READ PAGE REG: 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32*)* @fsp_page_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_page_reg_read(%struct.psmouse* %0, i32* %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  store %struct.ps2dev* %9, %struct.ps2dev** %5, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %11 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %12 = call i32 @ps2_command(%struct.ps2dev* %10, i32* null, i32 %11)
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %15 = call i32 @psmouse_set_state(%struct.psmouse* %13, i32 %14)
  %16 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %17 = call i32 @ps2_begin_command(%struct.ps2dev* %16)
  %18 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %19 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %20 = call i64 @ps2_sendbyte(%struct.ps2dev* %18, i32 243, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %25 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %26 = call i64 @ps2_sendbyte(%struct.ps2dev* %24, i32 102, i32 %25)
  %27 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %28 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %29 = call i64 @ps2_sendbyte(%struct.ps2dev* %27, i32 136, i32 %28)
  %30 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %31 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %32 = call i64 @ps2_sendbyte(%struct.ps2dev* %30, i32 243, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %37 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %38 = call i64 @ps2_sendbyte(%struct.ps2dev* %36, i32 131, i32 %37)
  %39 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %40 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %41 = call i64 @ps2_sendbyte(%struct.ps2dev* %39, i32 136, i32 %40)
  %42 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %45 = call i64 @__ps2_command(%struct.ps2dev* %42, i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %53

48:                                               ; preds = %35
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %47, %34, %22
  %54 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %55 = call i32 @ps2_end_command(%struct.ps2dev* %54)
  %56 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %57 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %58 = call i32 @ps2_command(%struct.ps2dev* %56, i32* null, i32 %57)
  %59 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %60 = load i32, i32* @PSMOUSE_ACTIVATED, align 4
  %61 = call i32 @psmouse_set_state(%struct.psmouse* %59, i32 %60)
  %62 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %63 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i32, i32) #1

declare dso_local i64 @__ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
