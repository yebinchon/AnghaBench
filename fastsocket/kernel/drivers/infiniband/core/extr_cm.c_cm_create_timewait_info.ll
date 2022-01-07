; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_create_timewait_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_create_timewait_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_timewait_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cm_work_handler = common dso_local global i32 0, align 4
@IB_CM_TIMEWAIT_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_timewait_info* (i32)* @cm_create_timewait_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_timewait_info* @cm_create_timewait_info(i32 %0) #0 {
  %2 = alloca %struct.cm_timewait_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm_timewait_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cm_timewait_info* @kzalloc(i32 12, i32 %5)
  store %struct.cm_timewait_info* %6, %struct.cm_timewait_info** %4, align 8
  %7 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %8 = icmp ne %struct.cm_timewait_info* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cm_timewait_info* @ERR_PTR(i32 %11)
  store %struct.cm_timewait_info* %12, %struct.cm_timewait_info** %2, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %16 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %19 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* @cm_work_handler, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load i32, i32* @IB_CM_TIMEWAIT_EXIT, align 4
  %24 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %25 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  store %struct.cm_timewait_info* %28, %struct.cm_timewait_info** %2, align 8
  br label %29

29:                                               ; preds = %13, %9
  %30 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %2, align 8
  ret %struct.cm_timewait_info* %30
}

declare dso_local %struct.cm_timewait_info* @kzalloc(i32, i32) #1

declare dso_local %struct.cm_timewait_info* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
