; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8253.h_i8254_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8253.h_i8254_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8254_control_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i32)* @i8254_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8254_load(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ugt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %72

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %6, align 4
  br label %72

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = icmp ugt i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %72

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %35, 6
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, 48
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, 1
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @i8254_control_reg, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = add i64 %44, %48
  %50 = call i32 @outb(i32 %43, i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = add i64 %54, %58
  %60 = call i32 @outb(i32 %53, i64 %59)
  %61 = load i32, i32* %10, align 4
  %62 = lshr i32 %61, 8
  %63 = and i32 %62, 255
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %66, %67
  %69 = zext i32 %68 to i64
  %70 = add i64 %65, %69
  %71 = call i32 @outb(i32 %64, i64 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %34, %33, %23, %19, %15
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
