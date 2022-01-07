; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_sync_clock_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_sync_clock_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_aib = type { i32 }
%struct.clock_sync_data = type { i32, i32, %struct.etr_aib* }

@etr_port0 = common dso_local global %struct.etr_aib zeroinitializer, align 4
@etr_port1 = common dso_local global %struct.etr_aib zeroinitializer, align 4
@EAGAIN = common dso_local global i32 0, align 4
@etr_sync_clock = common dso_local global i32 0, align 4
@cpu_online_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etr_aib*, i32)* @etr_sync_clock_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_sync_clock_stop(%struct.etr_aib* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etr_aib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clock_sync_data, align 8
  %7 = alloca %struct.etr_aib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.etr_aib* %0, %struct.etr_aib** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, %struct.etr_aib* @etr_port0, %struct.etr_aib* @etr_port1
  store %struct.etr_aib* %13, %struct.etr_aib** %7, align 8
  %14 = load %struct.etr_aib*, %struct.etr_aib** %7, align 8
  %15 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @etr_aib_follows(%struct.etr_aib* %14, %struct.etr_aib* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.etr_aib*, %struct.etr_aib** %7, align 8
  %19 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %20 = call i32 @memcpy(%struct.etr_aib* %18, %struct.etr_aib* %19, i32 4)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %2
  %27 = call i32 @memset(%struct.clock_sync_data* %6, i32 0, i32 16)
  %28 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %29 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %6, i32 0, i32 2
  store %struct.etr_aib* %28, %struct.etr_aib** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = call i32 (...) @get_online_cpus()
  %33 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %6, i32 0, i32 1
  %34 = call i64 (...) @num_online_cpus()
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @atomic_set(i32* %33, i64 %35)
  %37 = load i32, i32* @etr_sync_clock, align 4
  %38 = call i32 @stop_machine(i32 %37, %struct.clock_sync_data* %6, i32* @cpu_online_map)
  store i32 %38, i32* %9, align 4
  %39 = call i32 (...) @put_online_cpus()
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @etr_aib_follows(%struct.etr_aib*, %struct.etr_aib*, i32) #1

declare dso_local i32 @memcpy(%struct.etr_aib*, %struct.etr_aib*, i32) #1

declare dso_local i32 @memset(%struct.clock_sync_data*, i32, i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @stop_machine(i32, %struct.clock_sync_data*, i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
