; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_mwait_usable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_mwait_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i64 }

@force_mwait = common dso_local global i64 0, align 8
@MWAIT_INFO = common dso_local global i64 0, align 8
@MWAIT_ECX_EXTENDED_INFO = common dso_local global i32 0, align 4
@MWAIT_EDX_C1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwait_usable(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_x86*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  %8 = load i64, i64* @force_mwait, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %13 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MWAIT_INFO, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

18:                                               ; preds = %11
  %19 = load i64, i64* @MWAIT_INFO, align 8
  %20 = call i32 @cpuid(i64 %19, i32* %4, i32* %5, i32* %6, i32* %7)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MWAIT_ECX_EXTENDED_INFO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MWAIT_EDX_C1, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %25, %17, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @cpuid(i64, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
