; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nibtab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64*, i32)* @read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fifo(i32 %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 2
  %14 = call i32 @outb_p(i32 28, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, 2
  %17 = call i32 @outb_p(i32 20, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 128
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @outb_p(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 2
  %24 = call i32 @outb_p(i32 22, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %61, %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 2
  %32 = call i32 @outb_p(i32 23, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  %35 = call i32 @inb_p(i32 %34)
  %36 = ashr i32 %35, 3
  %37 = and i32 %36, 23
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 2
  %41 = call i32 @outb_p(i32 22, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  %44 = call i32 @inb_p(i32 %43)
  %45 = ashr i32 %44, 3
  %46 = and i32 %45, 23
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load i32*, i32** @nibtab, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @nibtab, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 4
  %57 = or i32 %51, %56
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %7, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 2
  %67 = call i32 @outb_p(i32 20, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 2
  %70 = call i32 @outb_p(i32 28, i32 %69)
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
