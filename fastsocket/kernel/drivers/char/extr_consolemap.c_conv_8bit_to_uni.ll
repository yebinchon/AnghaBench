; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_conv_8bit_to_uni.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_conv_8bit_to_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@translations = common dso_local global i16** null, align 8
@USER_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @conv_8bit_to_uni(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  store i8 %0, i8* %2, align 1
  %4 = load i16**, i16*** @translations, align 8
  %5 = load i64, i64* @USER_MAP, align 8
  %6 = getelementptr inbounds i16*, i16** %4, i64 %5
  %7 = load i16*, i16** %6, align 8
  %8 = load i8, i8* %2, align 1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %7, i64 %9
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %3, align 2
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 61440, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  br label %24

21:                                               ; preds = %1
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = trunc i32 %25 to i8
  ret i8 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
