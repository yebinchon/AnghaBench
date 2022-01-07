; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_get_next_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_get_next_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.subchannel = type { i32 }
%struct.device = type { i32 }

@chsc_subchannel_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@chsc_subchannel_match_next_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subchannel* (%struct.subchannel*)* @chsc_get_next_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subchannel* @chsc_get_next_subchannel(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = icmp ne %struct.subchannel* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32* [ %8, %6 ], [ null, %9 ]
  %12 = load i32, i32* @chsc_subchannel_match_next_free, align 4
  %13 = call %struct.device* @driver_find_device(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chsc_subchannel_driver, i32 0, i32 0), i32* %11, i32* null, i32 %12)
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call %struct.subchannel* @to_subchannel(%struct.device* %17)
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.subchannel* [ %18, %16 ], [ null, %19 ]
  ret %struct.subchannel* %21
}

declare dso_local %struct.device* @driver_find_device(i32*, i32*, i32*, i32) #1

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
