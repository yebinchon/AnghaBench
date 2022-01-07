; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_pid_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_pid_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pid = type { i32, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._pid*, i32)* @pid_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_calc(%struct._pid* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._pid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._pid* %0, %struct._pid** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct._pid*, %struct._pid** %4, align 8
  %13 = getelementptr inbounds %struct._pid, %struct._pid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @int_tofp(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @abs(i32 %19)
  %21 = load %struct._pid*, %struct._pid** %4, align 8
  %22 = getelementptr inbounds %struct._pid, %struct._pid* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

26:                                               ; preds = %2
  %27 = load %struct._pid*, %struct._pid** %4, align 8
  %28 = getelementptr inbounds %struct._pid, %struct._pid* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @mul_fp(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct._pid*, %struct._pid** %4, align 8
  %34 = getelementptr inbounds %struct._pid, %struct._pid* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = call i32 @int_tofp(i32 30)
  store i32 %37, i32* %11, align 4
  %38 = load %struct._pid*, %struct._pid** %4, align 8
  %39 = getelementptr inbounds %struct._pid, %struct._pid* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  %45 = load %struct._pid*, %struct._pid** %4, align 8
  %46 = getelementptr inbounds %struct._pid, %struct._pid* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct._pid*, %struct._pid** %4, align 8
  %49 = getelementptr inbounds %struct._pid, %struct._pid* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct._pid*, %struct._pid** %4, align 8
  %58 = getelementptr inbounds %struct._pid, %struct._pid* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct._pid*, %struct._pid** %4, align 8
  %61 = getelementptr inbounds %struct._pid, %struct._pid* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct._pid*, %struct._pid** %4, align 8
  %65 = getelementptr inbounds %struct._pid, %struct._pid* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = call i32 @mul_fp(i32 %62, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct._pid*, %struct._pid** %4, align 8
  %71 = getelementptr inbounds %struct._pid, %struct._pid* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct._pid*, %struct._pid** %4, align 8
  %74 = getelementptr inbounds %struct._pid, %struct._pid* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct._pid*, %struct._pid** %4, align 8
  %77 = getelementptr inbounds %struct._pid, %struct._pid* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mul_fp(i32 %75, i32 %78)
  %80 = add nsw i32 %72, %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @fp_toint(i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %59, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @int_tofp(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @mul_fp(i32, i32) #1

declare dso_local i64 @fp_toint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
