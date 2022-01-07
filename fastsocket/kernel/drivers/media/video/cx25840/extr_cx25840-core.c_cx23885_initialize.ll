; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }

@wait = common dso_local global i32 0, align 4
@cx25840_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cx25840_fw\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CX25840_VID_INT_STAT_REG = common dso_local global i32 0, align 4
@CX25840_AUD_INT_CTRL_REG = common dso_local global i32 0, align 4
@CX25840_AUD_INT_STAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @cx23885_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_initialize(%struct.i2c_client* %0) #0 {
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
  %11 = call i32 @cx25840_write(%struct.i2c_client* %10, i32 0, i32 0)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = call i32 @cx25840_and_or(%struct.i2c_client* %12, i32 258, i32 -2, i32 1)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = call i32 @cx25840_and_or(%struct.i2c_client* %14, i32 258, i32 -2, i32 0)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @cx25840_and_or(%struct.i2c_client* %16, i32 2051, i32 -17, i32 0)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = call i32 @cx25840_write(%struct.i2c_client* %18, i32 920, i32 0)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @cx25840_write(%struct.i2c_client* %20, i32 2, i32 118)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @cx25840_write(%struct.i2c_client* %22, i32 1, i32 64)
  %24 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %25 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %38 [
    i32 128, label %27
    i32 129, label %32
    i32 130, label %37
  ]

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = call i32 @cx25840_write4(%struct.i2c_client* %28, i32 284, i32 15252006)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = call i32 @cx25840_write4(%struct.i2c_client* %30, i32 280, i32 1035)
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = call i32 @cx25840_write4(%struct.i2c_client* %33, i32 284, i32 30504012)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %36 = call i32 @cx25840_write4(%struct.i2c_client* %35, i32 280, i32 1046)
  br label %43

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %1, %37
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = call i32 @cx25840_write4(%struct.i2c_client* %39, i32 284, i32 0)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %42 = call i32 @cx25840_write4(%struct.i2c_client* %41, i32 280, i32 1044)
  br label %43

43:                                               ; preds = %38, %32, %27
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = call i32 @cx25840_write4(%struct.i2c_client* %44, i32 828, i32 1)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %47 = call i32 @cx25840_write4(%struct.i2c_client* %46, i32 832, i32 234348419)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = call i32 @cx25840_write4(%struct.i2c_client* %48, i32 268, i32 2876105)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = call i32 @cx25840_write4(%struct.i2c_client* %50, i32 264, i32 1039)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = call i32 @cx25840_write4(%struct.i2c_client* %52, i32 1044, i32 1080594)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = call i32 @cx25840_write4(%struct.i2c_client* %54, i32 1056, i32 1023443586)
  %56 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %57 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %70 [
    i32 128, label %59
    i32 129, label %64
    i32 130, label %69
  ]

59:                                               ; preds = %43
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = call i32 @cx25840_write4(%struct.i2c_client* %60, i32 276, i32 12509092)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = call i32 @cx25840_write4(%struct.i2c_client* %62, i32 272, i32 656135)
  br label %75

64:                                               ; preds = %43
  %65 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %66 = call i32 @cx25840_write4(%struct.i2c_client* %65, i32 276, i32 25018184)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %68 = call i32 @cx25840_write4(%struct.i2c_client* %67, i32 272, i32 656142)
  br label %75

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %43, %69
  %71 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %72 = call i32 @cx25840_write4(%struct.i2c_client* %71, i32 276, i32 29297822)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %74 = call i32 @cx25840_write4(%struct.i2c_client* %73, i32 272, i32 656140)
  br label %75

75:                                               ; preds = %70, %64, %59
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = call i32 @cx25840_write(%struct.i2c_client* %76, i32 258, i32 16)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %79 = call i32 @cx25840_write(%struct.i2c_client* %78, i32 259, i32 17)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = call i32 @cx25840_write(%struct.i2c_client* %80, i32 1024, i32 0)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %83 = call i32 @cx25840_write(%struct.i2c_client* %82, i32 1025, i32 232)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = call i32 @cx25840_write(%struct.i2c_client* %84, i32 324, i32 5)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %87 = call i32 @cx25840_write(%struct.i2c_client* %86, i32 352, i32 29)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %89 = call i32 @cx25840_write(%struct.i2c_client* %88, i32 356, i32 0)
  %90 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %91 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %90, i32 0, i32 4
  %92 = load i32, i32* @cx25840_work_handler, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %95 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %94, i32 0, i32 3
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %97, %struct.workqueue_struct** %4, align 8
  %98 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %99 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %98, i32 0, i32 3
  %100 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %101 = call i32 @prepare_to_wait(i32* %99, i32* @wait, i32 %100)
  %102 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %103 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %104 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %103, i32 0, i32 4
  %105 = call i32 @queue_work(%struct.workqueue_struct* %102, i32* %104)
  %106 = call i32 (...) @schedule()
  %107 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %108 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %107, i32 0, i32 3
  %109 = call i32 @finish_wait(i32* %108, i32* @wait)
  %110 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %111 = call i32 @destroy_workqueue(%struct.workqueue_struct* %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %113 = call i32 @cx25840_std_setup(%struct.i2c_client* %112)
  %114 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %115 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %116 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %119 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @set_input(%struct.i2c_client* %114, i32 %117, i32 %120)
  %122 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %123 = call i32 @cx25840_and_or(%struct.i2c_client* %122, i32 2051, i32 -17, i32 16)
  %124 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %125 = load i32, i32* @CX25840_VID_INT_STAT_REG, align 4
  %126 = call i32 @cx25840_write4(%struct.i2c_client* %124, i32 %125, i32 -1)
  %127 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %128 = load i32, i32* @CX25840_AUD_INT_CTRL_REG, align 4
  %129 = call i32 @cx25840_write(%struct.i2c_client* %127, i32 %128, i32 255)
  %130 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %131 = load i32, i32* @CX25840_AUD_INT_STAT_REG, align 4
  %132 = call i32 @cx25840_write(%struct.i2c_client* %130, i32 %131, i32 255)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

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
