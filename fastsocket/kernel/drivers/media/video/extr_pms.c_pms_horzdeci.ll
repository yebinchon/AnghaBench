; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_horzdeci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_horzdeci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16)* @pms_horzdeci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_horzdeci(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp sle i32 %6, 512
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = srem i32 %10, 5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i16, i16* %3, align 2
  %15 = sext i16 %14 to i32
  %16 = sdiv i32 %15, 5
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i32
  %20 = sdiv i32 %19, 5
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %4, align 2
  br label %22

22:                                               ; preds = %13, %8
  br label %24

23:                                               ; preds = %2
  store i16 512, i16* %3, align 2
  store i16 640, i16* %4, align 2
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i16, i16* %3, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i16, i16* %3, align 2
  %35 = sext i16 %34 to i32
  %36 = ashr i32 %35, 1
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %3, align 2
  %38 = load i16, i16* %4, align 2
  %39 = sext i16 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %4, align 2
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i16, i16* %4, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp sgt i32 %45, 32
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i16, i16* %4, align 2
  %49 = sext i16 %48 to i32
  %50 = ashr i32 %49, 1
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %4, align 2
  %52 = load i16, i16* %3, align 2
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %53, 1
  %55 = ashr i32 %54, 1
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %3, align 2
  br label %43

57:                                               ; preds = %43
  %58 = load i16, i16* %4, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i16, i16* %4, align 2
  %63 = add i16 %62, -1
  store i16 %63, i16* %4, align 2
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i16, i16* %4, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 128, %66
  %68 = trunc i32 %67 to i16
  %69 = call i32 @mvv_write(i32 36, i16 signext %68)
  %70 = load i16, i16* %3, align 2
  %71 = call i32 @mvv_write(i32 37, i16 signext %70)
  ret void
}

declare dso_local i32 @mvv_write(i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
