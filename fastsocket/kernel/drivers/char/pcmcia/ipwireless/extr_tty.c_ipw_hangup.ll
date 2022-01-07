; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipw_tty* }
%struct.ipw_tty = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ipw_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.ipw_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  store %struct.ipw_tty* %6, %struct.ipw_tty** %3, align 8
  %7 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %8 = icmp ne %struct.ipw_tty* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %28

22:                                               ; preds = %10
  %23 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %24 = call i32 @do_ipw_close(%struct.ipw_tty* %23)
  %25 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  %26 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %28

28:                                               ; preds = %22, %18, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @do_ipw_close(%struct.ipw_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
