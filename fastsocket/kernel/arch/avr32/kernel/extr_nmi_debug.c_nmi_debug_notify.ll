; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_nmi_debug.c_nmi_debug_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_nmi_debug.c_nmi_debug_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { i32 }

@DIE_NMI = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@nmi_actions = common dso_local global i32 0, align 4
@NMI_SHOW_STATE = common dso_local global i32 0, align 4
@NMI_SHOW_REGS = common dso_local global i32 0, align 4
@NMI_DEBOUNCE = common dso_local global i32 0, align 4
@NMI_DIE = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nmi_debug_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmi_debug_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.die_args*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.die_args*
  store %struct.die_args* %10, %struct.die_args** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @DIE_NMI, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* @nmi_actions, align 4
  %21 = load i32, i32* @NMI_SHOW_STATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @show_state()
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* @nmi_actions, align 4
  %28 = load i32, i32* @NMI_SHOW_REGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.die_args*, %struct.die_args** %8, align 8
  %33 = getelementptr inbounds %struct.die_args, %struct.die_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @show_regs(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @nmi_actions, align 4
  %38 = load i32, i32* @NMI_DEBOUNCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @mdelay(i32 10)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* @nmi_actions, align 4
  %45 = load i32, i32* @NMI_DIE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @show_state(...) #1

declare dso_local i32 @show_regs(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
