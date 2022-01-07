; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c___md_stop_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c___md_stop_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i32, i32, i64 }

@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @__md_stop_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md_stop_writes(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 4
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 4
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = call i32 @md_reap_sync_thread(%struct.mddev* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = call i32 @bitmap_flush(%struct.mddev* %22)
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = call i32 @md_super_wait(%struct.mddev* %24)
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.mddev*, %struct.mddev** %2, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load %struct.mddev*, %struct.mddev** %2, align 8
  %44 = call i32 @md_update_sb(%struct.mddev* %43, i32 1)
  br label %45

45:                                               ; preds = %40, %35, %18
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @bitmap_flush(%struct.mddev*) #1

declare dso_local i32 @md_super_wait(%struct.mddev*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
