; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_notifier_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_notifier_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32 }
%struct.hvc_iucv_private = type { i32, i32 }

@TTY_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvc_struct*, i32)* @hvc_iucv_notifier_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_notifier_add(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hvc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hvc_iucv_private*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.hvc_iucv_private* @hvc_iucv_get_private(i32 %7)
  store %struct.hvc_iucv_private* %8, %struct.hvc_iucv_private** %6, align 8
  %9 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %6, align 8
  %10 = icmp ne %struct.hvc_iucv_private* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %6, align 8
  %14 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load i32, i32* @TTY_OPENED, align 4
  %17 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %6, align 8
  %18 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %6, align 8
  %20 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_bh(i32* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.hvc_iucv_private* @hvc_iucv_get_private(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
