; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_generic_ide_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_generic_ide_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.request = type { %struct.request_pm_state*, i32, i32 }
%struct.request_pm_state = type { i32, i32 }
%struct.ide_driver = type { i32 (%struct.TYPE_7__*)* }

@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_PM_RESUME = common dso_local global i32 0, align 4
@REQ_PREEMPT = common dso_local global i32 0, align 4
@IDE_PM_START_RESUME = common dso_local global i32 0, align 4
@PM_EVENT_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_ide_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request_pm_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ide_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.TYPE_7__* @dev_get_drvdata(%struct.device* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call %struct.TYPE_7__* @ide_get_pair_dev(%struct.TYPE_7__* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ide_port_acpi(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %20
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ide_acpi_set_state(i32* %30, i32 1)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ide_acpi_push_timing(i32* %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @ide_acpi_exec_tfs(%struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = call i32 @memset(%struct.request_pm_state* %7, i32 0, i32 8)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @READ, align 4
  %43 = load i32, i32* @__GFP_WAIT, align 4
  %44 = call %struct.request* @blk_get_request(i32 %41, i32 %42, i32 %43)
  store %struct.request* %44, %struct.request** %6, align 8
  %45 = load i32, i32* @REQ_TYPE_PM_RESUME, align 4
  %46 = load %struct.request*, %struct.request** %6, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @REQ_PREEMPT, align 4
  %49 = load %struct.request*, %struct.request** %6, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.request*, %struct.request** %6, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 0
  store %struct.request_pm_state* %7, %struct.request_pm_state** %54, align 8
  %55 = load i32, i32* @IDE_PM_START_RESUME, align 4
  %56 = getelementptr inbounds %struct.request_pm_state, %struct.request_pm_state* %7, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @PM_EVENT_ON, align 4
  %58 = getelementptr inbounds %struct.request_pm_state, %struct.request_pm_state* %7, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.request*, %struct.request** %6, align 8
  %63 = call i32 @blk_execute_rq(i32 %61, i32* null, %struct.request* %62, i32 1)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.request*, %struct.request** %6, align 8
  %65 = call i32 @blk_put_request(%struct.request* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %37
  %69 = load %struct.device*, %struct.device** %2, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %2, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.ide_driver* @to_ide_driver(i64 %76)
  store %struct.ide_driver* %77, %struct.ide_driver** %9, align 8
  %78 = load %struct.ide_driver*, %struct.ide_driver** %9, align 8
  %79 = getelementptr inbounds %struct.ide_driver, %struct.ide_driver* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_7__*)* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.ide_driver*, %struct.ide_driver** %9, align 8
  %84 = getelementptr inbounds %struct.ide_driver, %struct.ide_driver* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call i32 %85(%struct.TYPE_7__* %86)
  br label %88

88:                                               ; preds = %82, %73
  br label %89

89:                                               ; preds = %88, %68, %37
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_7__* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_7__* @ide_get_pair_dev(%struct.TYPE_7__*) #1

declare dso_local i64 @ide_port_acpi(i32*) #1

declare dso_local i32 @ide_acpi_set_state(i32*, i32) #1

declare dso_local i32 @ide_acpi_push_timing(i32*) #1

declare dso_local i32 @ide_acpi_exec_tfs(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.request_pm_state*, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local %struct.ide_driver* @to_ide_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
