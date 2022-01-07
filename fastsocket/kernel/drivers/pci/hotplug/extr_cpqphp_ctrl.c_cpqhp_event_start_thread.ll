; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_event_start_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_event_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"phpd_event\00", align 1
@cpqhp_event_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't start up our event thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpqhp_event_start_thread() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @event_thread, align 4
  %3 = call i32 @kthread_run(i32 %2, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @cpqhp_event_thread, align 4
  %4 = load i32, i32* @cpqhp_event_thread, align 4
  %5 = call i64 @IS_ERR(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @cpqhp_event_thread, align 4
  %10 = call i32 @PTR_ERR(i32 %9)
  store i32 %10, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
