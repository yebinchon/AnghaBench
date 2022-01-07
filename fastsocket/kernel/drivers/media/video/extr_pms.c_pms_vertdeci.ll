; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_vertdeci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_vertdeci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16)* @pms_vertdeci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_vertdeci(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = srem i32 %6, 5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = zext i16 %10 to i32
  %12 = sdiv i32 %11, 5
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %4, align 2
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = sdiv i32 %15, 5
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  br label %18

18:                                               ; preds = %9, %2
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = srem i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = srem i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = sdiv i32 %33, 3
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %4, align 2
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = sdiv i32 %37, 3
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %3, align 2
  br label %19

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i16, i16* %3, align 2
  %43 = zext i16 %42 to i32
  %44 = srem i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i32
  %56 = sdiv i32 %55, 2
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %3, align 2
  %58 = load i16, i16* %4, align 2
  %59 = zext i16 %58 to i32
  %60 = sdiv i32 %59, 2
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %4, align 2
  br label %41

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i16, i16* %4, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp sgt i32 %65, 32
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i16, i16* %4, align 2
  %69 = zext i16 %68 to i32
  %70 = sdiv i32 %69, 2
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %4, align 2
  %72 = load i16, i16* %3, align 2
  %73 = zext i16 %72 to i32
  %74 = add nsw i32 %73, 1
  %75 = sdiv i32 %74, 2
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %3, align 2
  br label %63

77:                                               ; preds = %63
  %78 = load i16, i16* %4, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i16, i16* %4, align 2
  %83 = add i16 %82, -1
  store i16 %83, i16* %4, align 2
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i16, i16* %4, align 2
  %86 = load i16, i16* %3, align 2
  %87 = call i32 @pms_vert(i16 zeroext %85, i16 zeroext %86)
  ret void
}

declare dso_local i32 @pms_vert(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
