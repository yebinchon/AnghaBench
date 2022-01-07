; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_clock_sync_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_clock_sync_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_sync_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_sync_data*)* @clock_sync_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_sync_cpu(%struct.clock_sync_data* %0) #0 {
  %2 = alloca %struct.clock_sync_data*, align 8
  store %struct.clock_sync_data* %0, %struct.clock_sync_data** %2, align 8
  %3 = load %struct.clock_sync_data*, %struct.clock_sync_data** %2, align 8
  %4 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %3, i32 0, i32 2
  %5 = call i32 @atomic_dec(i32* %4)
  %6 = call i32 (...) @enable_sync_clock()
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.clock_sync_data*, %struct.clock_sync_data** %2, align 8
  %9 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = call i32 @__udelay(i32 1)
  %14 = call i32 (...) @barrier()
  br label %7

15:                                               ; preds = %7
  %16 = load %struct.clock_sync_data*, %struct.clock_sync_data** %2, align 8
  %17 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @disable_sync_clock(i32* null)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.clock_sync_data*, %struct.clock_sync_data** %2, align 8
  %24 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fixup_clock_comparator(i32 %25)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @enable_sync_clock(...) #1

declare dso_local i32 @__udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @disable_sync_clock(i32*) #1

declare dso_local i32 @fixup_clock_comparator(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
