; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_traps.c_die_if_no_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_traps.c_die_if_no_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

@DIE_BREAKPOINT = common dso_local global i32 0, align 4
@DIE_GPF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_if_no_fixup(i8* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %9 = call i64 @user_mode(%struct.pt_regs* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @peripheral_leds_display_exception(i32 %13)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %44 [
    i32 133, label %16
    i32 137, label %16
    i32 136, label %16
    i32 139, label %16
    i32 132, label %16
    i32 131, label %16
    i32 140, label %16
    i32 135, label %16
    i32 134, label %16
    i32 129, label %16
    i32 130, label %16
    i32 138, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %17 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %18 = call i32 @fixup_exception(%struct.pt_regs* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %58

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %12, %21
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i32, i32* @DIE_BREAKPOINT, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @notify_die(i32 %35, i8* %36, %struct.pt_regs* %37, i32 %38, i32 0, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %58

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %27, %22
  br label %45

44:                                               ; preds = %12
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* @DIE_GPF, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @notify_die(i32 %46, i8* %47, %struct.pt_regs* %48, i32 %49, i32 0, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @die(i8* %54, %struct.pt_regs* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %52, %41, %20, %11
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @peripheral_leds_display_exception(i32) #1

declare dso_local i32 @fixup_exception(%struct.pt_regs*) #1

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
