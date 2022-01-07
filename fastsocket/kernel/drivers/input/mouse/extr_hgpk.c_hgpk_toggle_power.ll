; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_toggle_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_toggle_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@HGPK_MODEL_D = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@PSMOUSE_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Powering off touchpad.\0A\00", align 1
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @hgpk_toggle_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_toggle_power(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HGPK_MODEL_D, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %21 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %22 = call i32 @psmouse_set_state(%struct.psmouse* %20, i32 %21)
  store i32 20, i32* %7, align 4
  br label %23

23:                                               ; preds = %35, %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %28 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 1
  %29 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %30 = call i32 @ps2_sendbyte(%struct.ps2dev* %28, i32 %29, i32 20)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %38

33:                                               ; preds = %26
  %34 = call i32 @msleep(i32 50)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %23

38:                                               ; preds = %32, %23
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = call i32 @psmouse_reset(%struct.psmouse* %39)
  %41 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %42 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %41, i32 0, i32 1
  %43 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %44 = call i64 @ps2_command(%struct.ps2dev* %42, i32* null, i32 %43)
  %45 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %46 = load i32, i32* @PSMOUSE_ACTIVATED, align 4
  %47 = call i32 @psmouse_set_state(%struct.psmouse* %45, i32 %46)
  br label %70

48:                                               ; preds = %16
  %49 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %50 = call i32 @hgpk_dbg(%struct.psmouse* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %52 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %53 = call i32 @psmouse_set_state(%struct.psmouse* %51, i32 %52)
  %54 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %55 = call i64 @ps2_command(%struct.ps2dev* %54, i32* null, i32 236)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %59 = call i64 @ps2_command(%struct.ps2dev* %58, i32* null, i32 236)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %63 = call i64 @ps2_command(%struct.ps2dev* %62, i32* null, i32 234)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57, %48
  store i32 -1, i32* %3, align 4
  br label %71

66:                                               ; preds = %61
  %67 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %68 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %67, i32 0, i32 1
  %69 = call i32 @ps2_sendbyte(%struct.ps2dev* %68, i32 236, i32 20)
  br label %70

70:                                               ; preds = %66, %38
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %65, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_sendbyte(%struct.ps2dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @hgpk_dbg(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
