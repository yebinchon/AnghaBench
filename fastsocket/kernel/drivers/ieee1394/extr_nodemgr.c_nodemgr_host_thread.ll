; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_host_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_host_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NodeMgr: Exiting thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nodemgr_host_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_host_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.hpsb_host*
  store %struct.hpsb_host* %9, %struct.hpsb_host** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @set_freezable()
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %12 = call i32 @nodemgr_create_host_dev_files(%struct.hpsb_host* %11)
  br label %13

13:                                               ; preds = %109, %80, %69, %30, %1
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @set_current_state(i32 %14)
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %17 = call i32 @get_hpsb_generation(%struct.hpsb_host* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @schedule()
  br label %25

25:                                               ; preds = %23, %20, %13
  %26 = load i32, i32* @TASK_RUNNING, align 4
  %27 = call i32 @__set_current_state(i32 %26)
  %28 = call i64 (...) @try_to_freeze()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %13

31:                                               ; preds = %25
  %32 = call i64 (...) @kthread_should_stop()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %110

35:                                               ; preds = %31
  %36 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %37 = call i32 @get_hpsb_generation(%struct.hpsb_host* %36)
  store i32 %37, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = call i32 @msleep_interruptible(i32 63)
  %43 = call i64 (...) @try_to_freeze()
  %44 = call i64 (...) @kthread_should_stop()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %110

47:                                               ; preds = %41
  %48 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %49 = call i32 @get_hpsb_generation(%struct.hpsb_host* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @nodemgr_check_irm_capability(%struct.hpsb_host* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @nodemgr_do_irm_duties(%struct.hpsb_host* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %13

72:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  %73 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @nodemgr_node_scan(%struct.hpsb_host* %73, i32 %74)
  %76 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @nodemgr_node_probe(%struct.hpsb_host* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %13

81:                                               ; preds = %72
  %82 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %83 = call i32 @nodemgr_update_host_dev_links(%struct.hpsb_host* %82)
  store i32 15, i32* %6, align 4
  br label %84

84:                                               ; preds = %100, %81
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = call i32 @msleep_interruptible(i32 200)
  %89 = call i64 (...) @try_to_freeze()
  %90 = call i64 (...) @kthread_should_stop()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %110

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %96 = call i32 @get_hpsb_generation(%struct.hpsb_host* %95)
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %103

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %6, align 4
  br label %84

103:                                              ; preds = %98, %84
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %108 = call i32 @nodemgr_remove_nodes_in_limbo(%struct.hpsb_host* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %13

110:                                              ; preds = %92, %46, %34
  %111 = call i32 @HPSB_VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @nodemgr_create_host_dev_files(%struct.hpsb_host*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @nodemgr_check_irm_capability(%struct.hpsb_host*, i32) #1

declare dso_local i32 @nodemgr_do_irm_duties(%struct.hpsb_host*, i32) #1

declare dso_local i32 @nodemgr_node_scan(%struct.hpsb_host*, i32) #1

declare dso_local i32 @nodemgr_node_probe(%struct.hpsb_host*, i32) #1

declare dso_local i32 @nodemgr_update_host_dev_links(%struct.hpsb_host*) #1

declare dso_local i32 @nodemgr_remove_nodes_in_limbo(%struct.hpsb_host*) #1

declare dso_local i32 @HPSB_VERBOSE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
