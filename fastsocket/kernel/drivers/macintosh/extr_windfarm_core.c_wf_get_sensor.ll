; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_core.c_wf_get_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_core.c_wf_get_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wf_get_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wf_sensor*, align 8
  store %struct.wf_sensor* %0, %struct.wf_sensor** %3, align 8
  %4 = load %struct.wf_sensor*, %struct.wf_sensor** %3, align 8
  %5 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @try_module_get(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.wf_sensor*, %struct.wf_sensor** %3, align 8
  %16 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %15, i32 0, i32 0
  %17 = call i32 @kref_get(i32* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
