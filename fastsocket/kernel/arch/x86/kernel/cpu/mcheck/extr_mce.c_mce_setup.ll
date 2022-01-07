; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MSR_IA32_MCG_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mce_setup(%struct.mce* %0) #0 {
  %2 = alloca %struct.mce*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  store %struct.mce* %0, %struct.mce** %2, align 8
  %4 = load %struct.mce*, %struct.mce** %2, align 8
  %5 = call i32 @memset(%struct.mce* %4, i32 0, i32 36)
  %6 = call i32 (...) @smp_processor_id()
  %7 = load %struct.mce*, %struct.mce** %2, align 8
  %8 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.mce*, %struct.mce** %2, align 8
  %10 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 8
  store i32 %6, i32* %10, align 4
  %11 = load %struct.mce*, %struct.mce** %2, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rdtscll(i32 %13)
  %15 = call i32 (...) @get_seconds()
  %16 = load %struct.mce*, %struct.mce** %2, align 8
  %17 = getelementptr inbounds %struct.mce, %struct.mce* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %19 = load %struct.mce*, %struct.mce** %2, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = call i32 @cpuid_eax(i32 1)
  %22 = load %struct.mce*, %struct.mce** %2, align 8
  %23 = getelementptr inbounds %struct.mce, %struct.mce* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mce*, %struct.mce** %2, align 8
  %25 = getelementptr inbounds %struct.mce, %struct.mce* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @cpu_data(i32 %26)
  %28 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %27, i64* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mce*, %struct.mce** %2, align 8
  %32 = getelementptr inbounds %struct.mce, %struct.mce* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MSR_IA32_MCG_CAP, align 4
  %34 = load %struct.mce*, %struct.mce** %2, align 8
  %35 = getelementptr inbounds %struct.mce, %struct.mce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rdmsrl(i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @memset(%struct.mce*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @rdtscll(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i64 @cpu_data(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
