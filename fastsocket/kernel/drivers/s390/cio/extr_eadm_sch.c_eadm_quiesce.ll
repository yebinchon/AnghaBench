; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @eadm_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_quiesce(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %6 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @spin_lock_irq(i32 %7)
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = call i32 @cio_disable_subchannel(%struct.subchannel* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @spin_unlock_irq(i32 %13)
  br label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %4, label %20

20:                                               ; preds = %15
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
