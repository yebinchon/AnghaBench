; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/m32104ut/extr_io.c__outsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/m32104ut/extr_io.c__outsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAN_IOSTART = common dso_local global i32 0, align 4
@LAN_IOEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_outsb(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LAN_IOSTART, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LAN_IOEND, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @PORT2ADDR_NE(i32 %18)
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %24, %17
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %6, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @_ne_outb(i32 %28, i8* %29)
  br label %20

31:                                               ; preds = %20
  br label %45

32:                                               ; preds = %13, %3
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @PORT2ADDR(i32 %33)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %39, %32
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %40, align 1
  %43 = load i8*, i8** %8, align 8
  store volatile i8 %42, i8* %43, align 1
  br label %35

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %31
  ret void
}

declare dso_local i8* @PORT2ADDR_NE(i32) #1

declare dso_local i32 @_ne_outb(i32, i8*) #1

declare dso_local i8* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
