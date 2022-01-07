; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_notifier_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_notifier_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32 }
%struct.hvc_iucv_private = type { i32, i64, i32, i32, i32 }

@TTY_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_struct*, i32)* @hvc_iucv_notifier_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_notifier_del(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvc_iucv_private*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.hvc_iucv_private* @hvc_iucv_get_private(i32 %6)
  store %struct.hvc_iucv_private* %7, %struct.hvc_iucv_private** %5, align 8
  %8 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %9 = icmp ne %struct.hvc_iucv_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %13 = call i32 @flush_sndbuf_sync(%struct.hvc_iucv_private* %12)
  %14 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %15 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %18 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %17, i32 0, i32 4
  %19 = call i32 @destroy_tty_buffer_list(i32* %18)
  %20 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %21 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %20, i32 0, i32 3
  %22 = call i32 @destroy_tty_buffer_list(i32* %21)
  %23 = load i32, i32* @TTY_CLOSED, align 4
  %24 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %25 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %27 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %29 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.hvc_iucv_private* @hvc_iucv_get_private(i32) #1

declare dso_local i32 @flush_sndbuf_sync(%struct.hvc_iucv_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @destroy_tty_buffer_list(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
