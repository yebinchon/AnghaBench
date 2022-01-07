; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@call_rtas_display_status_delay.pending_newline = internal global i32 0, align 4
@call_rtas_display_status_delay.width = internal global i32 16, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @call_rtas_display_status_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_rtas_display_status_delay(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %11, %6
  %8 = load i32, i32* @call_rtas_display_status_delay.width, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @call_rtas_display_status_delay.width, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @call_rtas_display_status(i8 signext 32)
  br label %7

13:                                               ; preds = %7
  store i32 16, i32* @call_rtas_display_status_delay.width, align 4
  %14 = call i32 @mdelay(i32 500)
  store i32 1, i32* @call_rtas_display_status_delay.pending_newline, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load i32, i32* @call_rtas_display_status_delay.pending_newline, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @call_rtas_display_status(i8 signext 13)
  %20 = call i32 @call_rtas_display_status(i8 signext 10)
  br label %21

21:                                               ; preds = %18, %15
  store i32 0, i32* @call_rtas_display_status_delay.pending_newline, align 4
  %22 = load i32, i32* @call_rtas_display_status_delay.width, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @call_rtas_display_status_delay.width, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8, i8* %2, align 1
  %27 = call i32 @call_rtas_display_status(i8 signext %26)
  %28 = call i32 @udelay(i32 10000)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @call_rtas_display_status(i8 signext) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
