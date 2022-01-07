; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_ktstart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_ktstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktstate = type { i32, %struct.task_struct*, i32 }
%struct.task_struct = type { i32 }

@kthread = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aoe_ktstart(%struct.ktstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ktstate*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.ktstate* %0, %struct.ktstate** %3, align 8
  %5 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %6 = getelementptr inbounds %struct.ktstate, %struct.ktstate* %5, i32 0, i32 0
  %7 = call i32 @init_completion(i32* %6)
  %8 = load i32, i32* @kthread, align 4
  %9 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %10 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %11 = getelementptr inbounds %struct.ktstate, %struct.ktstate* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.task_struct* @kthread_run(i32 %8, %struct.ktstate* %9, i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %4, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = icmp eq %struct.task_struct* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i64 @IS_ERR(%struct.task_struct* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %26 = getelementptr inbounds %struct.ktstate, %struct.ktstate* %25, i32 0, i32 1
  store %struct.task_struct* %24, %struct.task_struct** %26, align 8
  %27 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %28 = getelementptr inbounds %struct.ktstate, %struct.ktstate* %27, i32 0, i32 0
  %29 = call i32 @wait_for_completion(i32* %28)
  %30 = load %struct.ktstate*, %struct.ktstate** %3, align 8
  %31 = getelementptr inbounds %struct.ktstate, %struct.ktstate* %30, i32 0, i32 0
  %32 = call i32 @init_completion(i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.ktstate*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
