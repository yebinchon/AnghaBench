; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, i32, i32 (%struct.psmouse*)* }

@psmouse_mutex = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @psmouse_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_cleanup(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.psmouse*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %5)
  store %struct.psmouse* %6, %struct.psmouse** %3, align 8
  store %struct.psmouse* null, %struct.psmouse** %4, align 8
  %7 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %8 = load %struct.serio*, %struct.serio** %2, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load %struct.serio*, %struct.serio** %9, align 8
  %11 = icmp ne %struct.serio* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.serio*, %struct.serio** %2, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 0
  %22 = load %struct.serio*, %struct.serio** %21, align 8
  %23 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %22)
  store %struct.psmouse* %23, %struct.psmouse** %4, align 8
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = call i32 @psmouse_deactivate(%struct.psmouse* %24)
  br label %26

26:                                               ; preds = %19, %12, %1
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i32 @psmouse_deactivate(%struct.psmouse* %27)
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 2
  %31 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %30, align 8
  %32 = icmp ne i32 (%struct.psmouse*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 2
  %36 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %35, align 8
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = call i32 %36(%struct.psmouse* %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %41 = call i32 @psmouse_reset(%struct.psmouse* %40)
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 1
  %44 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %45 = call i32 @ps2_command(i32* %43, i32* null, i32 %44)
  %46 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %47 = icmp ne %struct.psmouse* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %50 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %49, i32 0, i32 0
  %51 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %50, align 8
  %52 = icmp ne i32 (%struct.psmouse*)* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 0
  %56 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %55, align 8
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = call i32 %56(%struct.psmouse* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %61 = call i32 @psmouse_activate(%struct.psmouse* %60)
  br label %62

62:                                               ; preds = %59, %39
  %63 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  ret void
}

declare dso_local %struct.psmouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(i32*, i32*, i32) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
