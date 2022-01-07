; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_amd.c_show_error_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_amd.c_show_error_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threshold_block = type { i32 }
%struct.threshold_block_cross_cpu = type { i32, %struct.threshold_block* }

@local_error_count_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.threshold_block*, i8*)* @show_error_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_error_count(%struct.threshold_block* %0, i8* %1) #0 {
  %3 = alloca %struct.threshold_block*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.threshold_block_cross_cpu, align 8
  store %struct.threshold_block* %0, %struct.threshold_block** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.threshold_block_cross_cpu, %struct.threshold_block_cross_cpu* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.threshold_block_cross_cpu, %struct.threshold_block_cross_cpu* %5, i32 0, i32 1
  %8 = load %struct.threshold_block*, %struct.threshold_block** %3, align 8
  store %struct.threshold_block* %8, %struct.threshold_block** %7, align 8
  %9 = load %struct.threshold_block*, %struct.threshold_block** %3, align 8
  %10 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @local_error_count_handler, align 4
  %13 = call i32 @smp_call_function_single(i32 %11, i32 %12, %struct.threshold_block_cross_cpu* %5, i32 1)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds %struct.threshold_block_cross_cpu, %struct.threshold_block_cross_cpu* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 %17
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.threshold_block_cross_cpu*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
