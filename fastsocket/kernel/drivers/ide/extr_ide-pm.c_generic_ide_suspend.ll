; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_generic_ide_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_generic_ide_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.request = type { %struct.request_pm_state*, i32 }
%struct.request_pm_state = type { i64, i32 }

@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_PM_SUSPEND = common dso_local global i32 0, align 4
@IDE_PM_START_SUSPEND = common dso_local global i32 0, align 4
@PM_EVENT_PRETHAW = common dso_local global i64 0, align 8
@PM_EVENT_FREEZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_ide_suspend(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.request_pm_state, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.TYPE_8__* @dev_get_drvdata(%struct.device* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__* %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ide_port_acpi(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = icmp eq %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ide_acpi_get_timing(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %2
  %36 = call i32 @memset(%struct.request_pm_state* %9, i32 0, i32 16)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @READ, align 4
  %41 = load i32, i32* @__GFP_WAIT, align 4
  %42 = call %struct.request* @blk_get_request(i32 %39, i32 %40, i32 %41)
  store %struct.request* %42, %struct.request** %8, align 8
  %43 = load i32, i32* @REQ_TYPE_PM_SUSPEND, align 4
  %44 = load %struct.request*, %struct.request** %8, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  store %struct.request_pm_state* %9, %struct.request_pm_state** %47, align 8
  %48 = load i32, i32* @IDE_PM_START_SUSPEND, align 4
  %49 = getelementptr inbounds %struct.request_pm_state, %struct.request_pm_state* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PM_EVENT_PRETHAW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i64, i64* @PM_EVENT_FREEZE, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %35
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.request_pm_state, %struct.request_pm_state* %9, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.request*, %struct.request** %8, align 8
  %65 = call i32 @blk_execute_rq(i32 %63, i32* null, %struct.request* %64, i32 0)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.request*, %struct.request** %8, align 8
  %67 = call i32 @blk_put_request(%struct.request* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %57
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @ide_port_acpi(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = icmp eq %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %74
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @ide_acpi_set_state(i32* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %70, %57
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__*) #1

declare dso_local i64 @ide_port_acpi(i32*) #1

declare dso_local i32 @ide_acpi_get_timing(i32*) #1

declare dso_local i32 @memset(%struct.request_pm_state*, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @ide_acpi_set_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
