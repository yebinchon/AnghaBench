; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vsyscall_64.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vsyscall_64.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.timespec, i32, i32, %struct.TYPE_3__ }
%struct.timespec = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.clocksource = type { i32, i32, i32, i32 }

@vsyscall_gtod_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timespec* %0, %struct.timespec* %1, %struct.clocksource* %2, i32 %3) #0 {
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.clocksource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %5, align 8
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  store %struct.clocksource* %2, %struct.clocksource** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 0), i64 %10)
  %12 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %13 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 5, i32 4), align 4
  %15 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %16 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 5, i32 3), align 4
  %18 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %19 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 5, i32 2), align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 5, i32 1), align 4
  %22 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %23 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 5, i32 0), align 4
  %25 = load %struct.timespec*, %struct.timespec** %5, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 4), align 4
  %28 = load %struct.timespec*, %struct.timespec** %5, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 3), align 4
  %31 = load %struct.timespec*, %struct.timespec** %6, align 8
  %32 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timespec* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 2) to i8*), i8* align 4 %32, i64 8, i1 false)
  %33 = call i32 (...) @__current_kernel_time()
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 1), align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsyscall_gtod_data, i32 0, i32 0), i64 %34)
  ret void
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__current_kernel_time(...) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
