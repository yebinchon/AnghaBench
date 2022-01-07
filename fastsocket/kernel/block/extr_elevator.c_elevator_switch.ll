; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue*, i32 }
%struct.elevator_queue = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.elevator_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"elv switch: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.elevator_type*)* @elevator_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elevator_switch(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.elevator_queue*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %12 = call %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %10, %struct.elevator_type* %11)
  store %struct.elevator_queue* %12, %struct.elevator_queue** %7, align 8
  %13 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %14 = icmp ne %struct.elevator_queue* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %21 = call i8* @elevator_init_queue(%struct.request_queue* %19, %struct.elevator_queue* %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %26 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %25, i32 0, i32 2
  %27 = call i32 @kobject_put(i32* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %18
  %31 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %32 = call i32 @elv_quiesce_start(%struct.request_queue* %31)
  %33 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  %35 = load %struct.elevator_queue*, %struct.elevator_queue** %34, align 8
  store %struct.elevator_queue* %35, %struct.elevator_queue** %6, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @spin_lock_irq(i32 %38)
  %40 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %41 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @elevator_attach(%struct.request_queue* %40, %struct.elevator_queue* %41, i8* %42)
  %44 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @spin_unlock_irq(i32 %46)
  %48 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %49 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %30
  %53 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %54 = call i32 @__elv_unregister_queue(%struct.elevator_queue* %53)
  %55 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %56 = call i32 @elv_register_queue(%struct.request_queue* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %73

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %30
  %62 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %63 = call i32 @elevator_exit(%struct.elevator_queue* %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %65 = call i32 @elv_quiesce_end(%struct.request_queue* %64)
  %66 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %67 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %68 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @blk_add_trace_msg(%struct.request_queue* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %3, align 4
  br label %84

73:                                               ; preds = %59
  %74 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %75 = call i32 @elevator_exit(%struct.elevator_queue* %74)
  %76 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %77 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %78 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %77, i32 0, i32 0
  store %struct.elevator_queue* %76, %struct.elevator_queue** %78, align 8
  %79 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %80 = call i32 @elv_register_queue(%struct.request_queue* %79)
  %81 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %82 = call i32 @elv_quiesce_end(%struct.request_queue* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %61, %24, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local i8* @elevator_init_queue(%struct.request_queue*, %struct.elevator_queue*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @elv_quiesce_start(%struct.request_queue*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @elevator_attach(%struct.request_queue*, %struct.elevator_queue*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @__elv_unregister_queue(%struct.elevator_queue*) #1

declare dso_local i32 @elv_register_queue(%struct.request_queue*) #1

declare dso_local i32 @elevator_exit(%struct.elevator_queue*) #1

declare dso_local i32 @elv_quiesce_end(%struct.request_queue*) #1

declare dso_local i32 @blk_add_trace_msg(%struct.request_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
