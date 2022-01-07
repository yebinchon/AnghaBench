; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_force_recalibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_force_recalibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, %struct.hgpk_data*, %struct.ps2dev }
%struct.hgpk_data = type { i64 }
%struct.ps2dev = type { i32 }

@HGPK_MODEL_C = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@PSMOUSE_ACTIVATED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@recal_guard_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_force_recalibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_force_recalibrate(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca %struct.hgpk_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2
  store %struct.ps2dev* %7, %struct.ps2dev** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.hgpk_data*, %struct.hgpk_data** %9, align 8
  store %struct.hgpk_data* %10, %struct.hgpk_data** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HGPK_MODEL_C, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %20 = call i32 @psmouse_set_state(%struct.psmouse* %18, i32 %19)
  %21 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %22 = call i32 @psmouse_reset(%struct.psmouse* %21)
  %23 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %24 = call i64 @ps2_command(%struct.ps2dev* %23, i32* null, i32 245)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %28 = call i64 @ps2_command(%struct.ps2dev* %27, i32* null, i32 245)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %32 = call i64 @ps2_command(%struct.ps2dev* %31, i32* null, i32 230)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %36 = call i64 @ps2_command(%struct.ps2dev* %35, i32* null, i32 245)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %26, %17
  store i32 -1, i32* %2, align 4
  br label %56

39:                                               ; preds = %34
  %40 = call i32 @msleep(i32 150)
  %41 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %42 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %43 = call i64 @ps2_command(%struct.ps2dev* %41, i32* null, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %56

46:                                               ; preds = %39
  %47 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %48 = load i32, i32* @PSMOUSE_ACTIVATED, align 4
  %49 = call i32 @psmouse_set_state(%struct.psmouse* %47, i32 %48)
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i32, i32* @recal_guard_time, align 4
  %52 = call i64 @msecs_to_jiffies(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  %55 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %45, %38, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
