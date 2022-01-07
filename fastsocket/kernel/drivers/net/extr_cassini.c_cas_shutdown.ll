; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i32, i32, i32, i64 }

@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_shutdown(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i64, align 8
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = getelementptr inbounds %struct.cas, %struct.cas* %4, i32 0, i32 6
  store i64 0, i64* %5, align 8
  %6 = load %struct.cas*, %struct.cas** %2, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 5
  %8 = call i32 @del_timer_sync(i32* %7)
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.cas*, %struct.cas** %2, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (...) @schedule()
  br label %9

16:                                               ; preds = %9
  %17 = load %struct.cas*, %struct.cas** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @cas_lock_all_save(%struct.cas* %17, i64 %18)
  %20 = load %struct.cas*, %struct.cas** %2, align 8
  %21 = call i32 @cas_reset(%struct.cas* %20, i32 0)
  %22 = load %struct.cas*, %struct.cas** %2, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.cas*, %struct.cas** %2, align 8
  %30 = call i32 @cas_phy_powerdown(%struct.cas* %29)
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.cas*, %struct.cas** %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @cas_unlock_all_restore(%struct.cas* %32, i64 %33)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @cas_lock_all_save(%struct.cas*, i64) #1

declare dso_local i32 @cas_reset(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_powerdown(%struct.cas*) #1

declare dso_local i32 @cas_unlock_all_restore(%struct.cas*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
