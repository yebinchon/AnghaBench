; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_synctty.c_ppp_sync_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_synctty.c_ppp_sync_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.syncppp* }
%struct.syncppp = type { i32, i32, i32, i32, i32, i32 }

@disc_data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ppp_sync_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_sync_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.syncppp*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = call i32 @write_lock_irq(i32* @disc_data_lock)
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.syncppp*, %struct.syncppp** %6, align 8
  store %struct.syncppp* %7, %struct.syncppp** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  store %struct.syncppp* null, %struct.syncppp** %9, align 8
  %10 = call i32 @write_unlock_irq(i32* @disc_data_lock)
  %11 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %12 = icmp ne %struct.syncppp* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %16 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %15, i32 0, i32 5
  %17 = call i32 @atomic_dec_and_test(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %21 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %20, i32 0, i32 4
  %22 = call i32 @wait_for_completion(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %25 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %24, i32 0, i32 3
  %26 = call i32 @tasklet_kill(i32* %25)
  %27 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %28 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %27, i32 0, i32 2
  %29 = call i32 @ppp_unregister_channel(i32* %28)
  %30 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %31 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %30, i32 0, i32 1
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %34 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree_skb(i32 %35)
  %37 = load %struct.syncppp*, %struct.syncppp** %3, align 8
  %38 = call i32 @kfree(%struct.syncppp* %37)
  br label %39

39:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ppp_unregister_channel(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.syncppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
