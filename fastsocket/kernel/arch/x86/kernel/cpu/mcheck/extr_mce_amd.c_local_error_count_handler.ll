; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_amd.c_local_error_count_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_amd.c_local_error_count_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threshold_block_cross_cpu = type { i64, %struct.threshold_block* }
%struct.threshold_block = type { i64, i32 }

@THRESHOLD_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_error_count_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_error_count_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.threshold_block_cross_cpu*, align 8
  %4 = alloca %struct.threshold_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.threshold_block_cross_cpu*
  store %struct.threshold_block_cross_cpu* %8, %struct.threshold_block_cross_cpu** %3, align 8
  %9 = load %struct.threshold_block_cross_cpu*, %struct.threshold_block_cross_cpu** %3, align 8
  %10 = getelementptr inbounds %struct.threshold_block_cross_cpu, %struct.threshold_block_cross_cpu* %9, i32 0, i32 1
  %11 = load %struct.threshold_block*, %struct.threshold_block** %10, align 8
  store %struct.threshold_block* %11, %struct.threshold_block** %4, align 8
  %12 = load %struct.threshold_block*, %struct.threshold_block** %4, align 8
  %13 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rdmsr(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 4095
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @THRESHOLD_MAX, align 8
  %22 = load %struct.threshold_block*, %struct.threshold_block** %4, align 8
  %23 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = sub nsw i64 %20, %25
  %27 = load %struct.threshold_block_cross_cpu*, %struct.threshold_block_cross_cpu** %3, align 8
  %28 = getelementptr inbounds %struct.threshold_block_cross_cpu, %struct.threshold_block_cross_cpu* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
