; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_traps.c_arm_notify_die.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_traps.c_arm_notify_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pt_regs = type { i32 }
%struct.siginfo = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_notify_die(i8* %0, %struct.pt_regs* %1, %struct.siginfo* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.siginfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store %struct.siginfo* %2, %struct.siginfo** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %12 = call i64 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.siginfo*, %struct.siginfo** %8, align 8
  %24 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.siginfo*, %struct.siginfo** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %28 = call i32 @force_sig_info(i32 %25, %struct.siginfo* %26, %struct.TYPE_5__* %27)
  br label %34

29:                                               ; preds = %5
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @die(i8* %30, %struct.pt_regs* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %14
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @force_sig_info(i32, %struct.siginfo*, %struct.TYPE_5__*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
