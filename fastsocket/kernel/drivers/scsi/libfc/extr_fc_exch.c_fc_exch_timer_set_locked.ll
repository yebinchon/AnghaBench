; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_timer_set_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_timer_set_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32 }

@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@FC_EX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Exchange timer armed\0A\00", align 1
@fc_exch_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, i32)* @fc_exch_timer_set_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_timer_set_locked(%struct.fc_exch* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %9 = load i32, i32* @FC_EX_DONE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %16 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @fc_exch_workqueue, align 4
  %18 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %19 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %18, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @msecs_to_jiffies(i32 %20)
  %22 = call i64 @queue_delayed_work(i32 %17, i32* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %26 = call i32 @fc_exch_hold(%struct.fc_exch* %25)
  br label %27

27:                                               ; preds = %13, %24, %14
  ret void
}

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*) #1

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
