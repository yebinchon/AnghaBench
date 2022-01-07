; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_xterm_kern.c_xterm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_xterm_kern.c_xterm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xterm_wait = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xterm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xterm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xterm_wait*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.xterm_wait*
  store %struct.xterm_wait* %9, %struct.xterm_wait** %6, align 8
  %10 = load %struct.xterm_wait*, %struct.xterm_wait** %6, align 8
  %11 = getelementptr inbounds %struct.xterm_wait, %struct.xterm_wait* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xterm_wait*, %struct.xterm_wait** %6, align 8
  %14 = getelementptr inbounds %struct.xterm_wait, %struct.xterm_wait* %13, i32 0, i32 2
  %15 = call i32 @os_rcv_fd(i32 %12, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.xterm_wait*, %struct.xterm_wait** %6, align 8
  %25 = getelementptr inbounds %struct.xterm_wait, %struct.xterm_wait* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xterm_wait*, %struct.xterm_wait** %6, align 8
  %27 = getelementptr inbounds %struct.xterm_wait, %struct.xterm_wait* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @os_rcv_fd(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
