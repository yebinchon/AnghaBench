; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_flush_sndbuf_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_flush_sndbuf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_iucv_private*)* @flush_sndbuf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_sndbuf_sync(%struct.hvc_iucv_private* %0) #0 {
  %2 = alloca %struct.hvc_iucv_private*, align 8
  %3 = alloca i32, align 4
  store %struct.hvc_iucv_private* %0, %struct.hvc_iucv_private** %2, align 8
  %4 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %5 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %4, i32 0, i32 3
  %6 = call i32 @cancel_delayed_work_sync(i32* %5)
  %7 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %8 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %11 = call i32 @hvc_iucv_send(%struct.hvc_iucv_private* %10)
  %12 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %13 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %12, i32 0, i32 2
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %19 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %25 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %28 = call i32 @tty_outqueue_empty(%struct.hvc_iucv_private* %27)
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 10
  %31 = call i32 @wait_event_timeout(i32 %26, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hvc_iucv_send(%struct.hvc_iucv_private*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @tty_outqueue_empty(%struct.hvc_iucv_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
