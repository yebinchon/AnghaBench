; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_setup_default_idt_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_setup_default_idt_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lguest_ro_state = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_default_idt_entries(%struct.lguest_ro_state* %0, i64* %1) #0 {
  %3 = alloca %struct.lguest_ro_state*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.lguest_ro_state* %0, %struct.lguest_ro_state** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.lguest_ro_state*, %struct.lguest_ro_state** %3, align 8
  %9 = getelementptr inbounds %struct.lguest_ro_state, %struct.lguest_ro_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load %struct.lguest_ro_state*, %struct.lguest_ro_state** %3, align 8
  %15 = getelementptr inbounds %struct.lguest_ro_state, %struct.lguest_ro_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %5, align 4
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @default_idt_entry(i32* %19, i32 %20, i64 %25, i32* null)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @default_idt_entry(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
