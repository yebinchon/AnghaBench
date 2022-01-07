; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_time.c_a20r_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_time.c_a20r_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@A20R_PT_CLOCK_BASE = common dso_local global i32 0, align 4
@SNI_COUNTER0_DIV = common dso_local global i32 0, align 4
@SNI_COUNTER2_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @a20r_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a20r_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %45 [
    i32 131, label %6
    i32 132, label %43
    i32 128, label %43
    i32 129, label %43
    i32 130, label %44
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %8 = add nsw i32 %7, 12
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store volatile i32 52, i32* %10, align 4
  %11 = call i32 (...) @wmb()
  %12 = load i32, i32* @SNI_COUNTER0_DIV, align 4
  %13 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %14 = add nsw i32 %13, 0
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  store volatile i32 %12, i32* %16, align 4
  %17 = call i32 (...) @wmb()
  %18 = load i32, i32* @SNI_COUNTER0_DIV, align 4
  %19 = ashr i32 %18, 8
  %20 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %21 = add nsw i32 %20, 0
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store volatile i32 %19, i32* %23, align 4
  %24 = call i32 (...) @wmb()
  %25 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %26 = add nsw i32 %25, 12
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store volatile i32 180, i32* %28, align 4
  %29 = call i32 (...) @wmb()
  %30 = load i32, i32* @SNI_COUNTER2_DIV, align 4
  %31 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %32 = add nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store volatile i32 %30, i32* %34, align 4
  %35 = call i32 (...) @wmb()
  %36 = load i32, i32* @SNI_COUNTER2_DIV, align 4
  %37 = ashr i32 %36, 8
  %38 = load i32, i32* @A20R_PT_CLOCK_BASE, align 4
  %39 = add nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  store volatile i32 %37, i32* %41, align 4
  %42 = call i32 (...) @wmb()
  br label %45

43:                                               ; preds = %2, %2, %2
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %2, %44, %43, %6
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
