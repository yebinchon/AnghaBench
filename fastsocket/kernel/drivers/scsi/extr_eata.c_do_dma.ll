; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_do_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_do_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLOOP = common dso_local global i32 0, align 4
@REG_LOW = common dso_local global i64 0, align 8
@REG_LM = common dso_local global i64 0, align 8
@REG_MID = common dso_local global i64 0, align 8
@REG_MSB = common dso_local global i64 0, align 8
@REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8)* @do_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dma(i64 %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @MAXLOOP, align 4
  %15 = mul nsw i32 %14, 100
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MAXLOOP, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = call i64 @wait_on_busy(i64 %10, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %64

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @H2DEV(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = bitcast i64* %9 to i8*
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @REG_LOW, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @outb(i8 zeroext %32, i64 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @REG_LM, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @outb(i8 zeroext %39, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @REG_MID, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @outb(i8 zeroext %46, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @REG_MSB, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @outb(i8 zeroext %53, i64 %56)
  br label %58

58:                                               ; preds = %26, %23
  %59 = load i8, i8* %7, align 1
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @REG_CMD, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @outb(i8 zeroext %59, i64 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i64 @H2DEV(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
