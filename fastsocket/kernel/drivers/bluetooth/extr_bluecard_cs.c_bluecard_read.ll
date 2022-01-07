; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_COMMAND_RX_WIN_ONE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i64 0, align 8
@REG_COMMAND_RX_WIN_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32)* @bluecard_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_read(i32 %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @REG_COMMAND_RX_WIN_ONE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @REG_COMMAND, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %12, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = call i8* @inb(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %37, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* @REG_COMMAND_RX_WIN_TWO, align 4
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @REG_COMMAND, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %31, i64 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %40, %41
  %43 = call i8* @inb(i32 %42)
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i8* @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
