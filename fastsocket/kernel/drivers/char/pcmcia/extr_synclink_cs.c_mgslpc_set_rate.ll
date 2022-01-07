; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGR = common dso_local global i64 0, align 8
@CCR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i32)* @mgslpc_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgslpc_set_rate(i32* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 3686400, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %8, align 4
  %20 = lshr i32 %19, 1
  store i32 %20, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %32, %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp ugt i32 %22, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %25, 16
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = lshr i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %21

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i64
  %41 = load i64, i64* @BGR, align 8
  %42 = add nsw i64 %40, %41
  %43 = trunc i64 %42 to i8
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 6
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %45, %46
  %48 = trunc i32 %47 to i8
  %49 = call i32 @write_reg(i32* %38, i8 zeroext %43, i8 zeroext %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i64
  %53 = load i64, i64* @CCR2, align 8
  %54 = add nsw i64 %52, %53
  %55 = trunc i64 %54 to i8
  %56 = call i32 @read_reg(i32* %50, i8 zeroext %55)
  %57 = and i32 %56, 63
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 4
  %61 = and i32 %60, 192
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %9, align 1
  %66 = load i32*, i32** %4, align 8
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i64
  %69 = load i64, i64* @CCR2, align 8
  %70 = add nsw i64 %68, %69
  %71 = trunc i64 %70 to i8
  %72 = load i8, i8* %9, align 1
  %73 = call i32 @write_reg(i32* %66, i8 zeroext %71, i8 zeroext %72)
  br label %74

74:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32 @write_reg(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @read_reg(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
