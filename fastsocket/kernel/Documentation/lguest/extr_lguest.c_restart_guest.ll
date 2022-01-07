; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_restart_guest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_restart_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD_SETSIZE = common dso_local global i32 0, align 4
@main_args = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Could not exec %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restart_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @restart_guest() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @FD_SETSIZE, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @close(i32 %7)
  br label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2

12:                                               ; preds = %2
  %13 = call i32 (...) @cleanup_devices()
  %14 = load i32*, i32** @main_args, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @main_args, align 8
  %18 = call i32 @execv(i32 %16, i32* %17)
  %19 = load i32*, i32** @main_args, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  unreachable
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cleanup_devices(...) #1

declare dso_local i32 @execv(i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
