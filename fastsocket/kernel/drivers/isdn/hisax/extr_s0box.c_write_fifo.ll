; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_fifo(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, 2
  %12 = call i32 @outb_p(i32 28, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, 2
  %15 = call i32 @outb_p(i32 20, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 127
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %36, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 2
  %27 = call i32 @outb_p(i32 22, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %28, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @outb_p(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 2
  %35 = call i32 @outb_p(i32 23, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 2
  %42 = call i32 @outb_p(i32 20, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 2
  %45 = call i32 @outb_p(i32 28, i32 %44)
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
