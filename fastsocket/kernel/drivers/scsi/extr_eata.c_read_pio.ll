; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_read_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_read_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLOOP = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i64 0, align 8
@DRQ_ASSERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*)* @read_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pio(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MAXLOOP, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %9, align 8
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32*, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ule i32* %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @REG_STATUS, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @inb(i64 %20)
  %22 = load i32, i32* @DRQ_ASSERTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = call i32 @udelay(i64 1)
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %43

32:                                               ; preds = %26
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* @MAXLOOP, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @inw(i64 %35)
  %37 = call i32 @REG2H(i32 %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  br label %12

42:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @REG2H(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
