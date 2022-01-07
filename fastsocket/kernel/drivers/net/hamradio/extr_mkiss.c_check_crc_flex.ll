; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_check_crc_flex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_check_crc_flex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_flex_table = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_crc_flex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_crc_flex(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 -1, i16* %6, align 2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = shl i32 %17, 8
  %19 = load i16*, i16** @crc_flex_table, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = ashr i32 %21, 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %22, %26
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %19, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = xor i32 %18, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %6, align 2
  br label %11

35:                                               ; preds = %11
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 65535
  %39 = icmp ne i32 %38, 28784
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
