; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_show_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_show_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c" %4lli MB of %4lli MB (%5.1f%% )\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @show_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_progress(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca double, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %39

22:                                               ; preds = %18, %14, %2
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %25 = load i64, i64* %3, align 8
  %26 = uitofp i64 %25 to double
  %27 = load i64, i64* %4, align 8
  %28 = uitofp i64 %27 to double
  %29 = fdiv double %26, %28
  %30 = fmul double %29, 1.000000e+02
  store double %30, double* %7, align 8
  %31 = load i64, i64* %3, align 8
  %32 = lshr i64 %31, 20
  %33 = load i64, i64* %4, align 8
  %34 = lshr i64 %33, 20
  %35 = load double, double* %7, align 8
  %36 = call i32 @PRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %34, double %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fflush(i32 %37)
  br label %39

39:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @PRINT(i8*, i64, i64, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
