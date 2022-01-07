; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_busy_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_busy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @do_busy_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_busy_event(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %3 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %4 = call i64 @sc_busy(%struct.raid_set* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %8 = call i32 @TestSetRSScBusy(%struct.raid_set* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %12 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @schedule_work(i32* %13)
  br label %15

15:                                               ; preds = %10, %6
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %18 = call i32 @ClearRSScBusy(%struct.raid_set* %17)
  br label %19

19:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @sc_busy(%struct.raid_set*) #1

declare dso_local i32 @TestSetRSScBusy(%struct.raid_set*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @ClearRSScBusy(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
