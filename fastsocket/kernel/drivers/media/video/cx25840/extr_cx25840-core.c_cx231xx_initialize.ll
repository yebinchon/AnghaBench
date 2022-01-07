; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx231xx_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx231xx_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }

@wait = common dso_local global i32 0, align 4
@cx25840_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cx25840_fw\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @cx231xx_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx231xx_initialize(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.cx25840_state* @to_state(i32 %8)
  store %struct.cx25840_state* %9, %struct.cx25840_state** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = call i32 @cx25840_and_or(%struct.i2c_client* %10, i32 258, i32 -2, i32 1)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = call i32 @cx25840_and_or(%struct.i2c_client* %12, i32 258, i32 -2, i32 0)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = call i32 @cx25840_and_or(%struct.i2c_client* %14, i32 2051, i32 -17, i32 0)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @cx25840_write(%struct.i2c_client* %16, i32 920, i32 0)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = call i32 @cx25840_write(%struct.i2c_client* %18, i32 2, i32 118)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @cx25840_write(%struct.i2c_client* %20, i32 1, i32 64)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @cx25840_write4(%struct.i2c_client* %22, i32 828, i32 1)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @cx25840_write4(%struct.i2c_client* %24, i32 832, i32 234348419)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = call i32 @cx25840_write4(%struct.i2c_client* %26, i32 1044, i32 1080594)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = call i32 @cx25840_write4(%struct.i2c_client* %28, i32 1056, i32 1023443586)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = call i32 @cx25840_write(%struct.i2c_client* %30, i32 258, i32 16)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = call i32 @cx25840_write(%struct.i2c_client* %32, i32 259, i32 17)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = call i32 @cx25840_write(%struct.i2c_client* %34, i32 1024, i32 0)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = call i32 @cx25840_write(%struct.i2c_client* %36, i32 1025, i32 232)
  %38 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %39 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %38, i32 0, i32 3
  %40 = load i32, i32* @cx25840_work_handler, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %43 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %42, i32 0, i32 2
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %45, %struct.workqueue_struct** %4, align 8
  %46 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %47 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %46, i32 0, i32 2
  %48 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %49 = call i32 @prepare_to_wait(i32* %47, i32* @wait, i32 %48)
  %50 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %51 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %52 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %51, i32 0, i32 3
  %53 = call i32 @queue_work(%struct.workqueue_struct* %50, i32* %52)
  %54 = call i32 (...) @schedule()
  %55 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %56 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %55, i32 0, i32 2
  %57 = call i32 @finish_wait(i32* %56, i32* @wait)
  %58 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %59 = call i32 @destroy_workqueue(%struct.workqueue_struct* %58)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = call i32 @cx25840_std_setup(%struct.i2c_client* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %64 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %67 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_input(%struct.i2c_client* %62, i32 %65, i32 %68)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %71 = call i32 @cx25840_and_or(%struct.i2c_client* %70, i32 2051, i32 -17, i32 16)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @set_input(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
