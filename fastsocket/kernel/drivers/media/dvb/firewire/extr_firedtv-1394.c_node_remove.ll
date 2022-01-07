; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-1394.c_node_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-1394.c_node_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.firedtv = type { i32 }

@node_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @node_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.firedtv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.firedtv* @dev_get_drvdata(%struct.device* %4)
  store %struct.firedtv* %5, %struct.firedtv** %3, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = call i32 @fdtv_dvb_unregister(%struct.firedtv* %6)
  %8 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %9 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %10 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %9, i32 0, i32 0
  %11 = call i32 @list_del(i32* %10)
  %12 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %13 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %14 = call i32 @fdtv_unregister_rc(%struct.firedtv* %13)
  %15 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %16 = call i32 @kfree(%struct.firedtv* %15)
  ret i32 0
}

declare dso_local %struct.firedtv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @fdtv_dvb_unregister(%struct.firedtv*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fdtv_unregister_rc(%struct.firedtv*) #1

declare dso_local i32 @kfree(%struct.firedtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
