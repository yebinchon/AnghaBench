; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_intel.c_microcode_fini_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_intel.c_microcode_fini_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { i32* }

@ucode_cpu_info = common dso_local global %struct.ucode_cpu_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @microcode_fini_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @microcode_fini_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucode_cpu_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** @ucode_cpu_info, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %4, i64 %6
  store %struct.ucode_cpu_info* %7, %struct.ucode_cpu_info** %3, align 8
  %8 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %3, align 8
  %9 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @vfree(i32* %10)
  %12 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %3, align 8
  %13 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
