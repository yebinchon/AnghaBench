; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_fn_dec_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_fn_dec_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@fg_console = common dso_local global i32 0, align 4
@want_console = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @fn_dec_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_dec_console(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load i32, i32* @fg_console, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @want_console, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @want_console, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @vc_cons_allocated(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %32

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %3, align 4
  br label %13

32:                                               ; preds = %27, %13
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @set_console(i32 %33)
  ret void
}

declare dso_local i64 @vc_cons_allocated(i32) #1

declare dso_local i32 @set_console(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
