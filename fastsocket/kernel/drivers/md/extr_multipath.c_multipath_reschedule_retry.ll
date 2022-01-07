; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_reschedule_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_reschedule_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath_bh = type { i32, %struct.mddev* }
%struct.mddev = type { i32, %struct.mpconf* }
%struct.mpconf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath_bh*)* @multipath_reschedule_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_reschedule_retry(%struct.multipath_bh* %0) #0 {
  %2 = alloca %struct.multipath_bh*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.mpconf*, align 8
  store %struct.multipath_bh* %0, %struct.multipath_bh** %2, align 8
  %6 = load %struct.multipath_bh*, %struct.multipath_bh** %2, align 8
  %7 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %6, i32 0, i32 1
  %8 = load %struct.mddev*, %struct.mddev** %7, align 8
  store %struct.mddev* %8, %struct.mddev** %4, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.mpconf*, %struct.mpconf** %10, align 8
  store %struct.mpconf* %11, %struct.mpconf** %5, align 8
  %12 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %13 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.multipath_bh*, %struct.multipath_bh** %2, align 8
  %17 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %16, i32 0, i32 0
  %18 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %19 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %18, i32 0, i32 1
  %20 = call i32 @list_add(i32* %17, i32* %19)
  %21 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %22 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.mddev*, %struct.mddev** %4, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @md_wakeup_thread(i32 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
