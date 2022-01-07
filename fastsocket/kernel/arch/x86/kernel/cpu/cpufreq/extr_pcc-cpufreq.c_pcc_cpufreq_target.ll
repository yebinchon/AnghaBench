; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_pcc-cpufreq.c_pcc_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_pcc-cpufreq.c_pcc_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cpufreq_policy = type { i32 }
%struct.pcc_cpu = type { i64 }
%struct.cpufreq_freqs = type { i32, i32 }

@pcc_lock = common dso_local global i32 0, align 4
@pcc_cpu_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"target: CPU %d should go to target freq: %d (virtual) input_offset is 0x%x\0A\00", align 1
@pcch_virt_addr = common dso_local global i64 0, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@pcch_hdr = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_SET_FREQ = common dso_local global i32 0, align 4
@BUF_SZ = common dso_local global i32 0, align 4
@CMD_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"target: FAILED for cpu %d, with status: 0x%x\0A\00", align 1
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"target: was SUCCESSFUL for cpu %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @pcc_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcc_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcc_cpu*, align 8
  %9 = alloca %struct.cpufreq_freqs, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i32 @spin_lock(i32* @pcc_lock)
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @pcc_cpu_info, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.pcc_cpu* @per_cpu_ptr(i32 %17, i32 %18)
  store %struct.pcc_cpu* %19, %struct.pcc_cpu** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @pcch_virt_addr, align 8
  %23 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %24 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %33 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = mul i32 %34, 100
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @ioread32(i32* %37)
  %39 = mul nsw i32 %38, 1000
  %40 = udiv i32 %35, %39
  %41 = shl i32 %40, 8
  %42 = or i32 1, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* @pcch_virt_addr, align 8
  %45 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %46 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @iowrite32(i32 %43, i64 %48)
  %50 = load i32, i32* @CMD_SET_FREQ, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @iowrite16(i32 %50, i32* %52)
  %54 = call i32 (...) @pcc_cmd()
  %55 = load i64, i64* @pcch_virt_addr, align 8
  %56 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %57 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* @BUF_SZ, align 4
  %61 = call i32 @memset_io(i64 %59, i32 0, i32 %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @ioread16(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @CMD_COMPLETE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %3
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %81

72:                                               ; preds = %3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @iowrite16(i32 0, i32* %74)
  %76 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %77 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 @spin_unlock(i32* @pcc_lock)
  store i32 0, i32* %4, align 4
  br label %88

81:                                               ; preds = %68
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @iowrite16(i32 0, i32* %83)
  %85 = call i32 @spin_unlock(i32* @pcc_lock)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %72
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pcc_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @pcc_cmd(...) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
