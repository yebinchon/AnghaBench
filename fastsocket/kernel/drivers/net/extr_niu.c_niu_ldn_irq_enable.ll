; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ldn_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ldn_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@LDN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LD_IM0_MASK = common dso_local global i64 0, align 8
@LD_IM1_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i32)* @niu_ldn_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_ldn_irq_enable(%struct.niu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LDN_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @LD_IM0(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* @LD_IM0_MASK, align 8
  store i64 %26, i64* %9, align 8
  br label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 64
  %30 = call i64 @LD_IM1(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* @LD_IM1_MASK, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @nr64(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %10, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @nw64(i64 %47, i64 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @LD_IM0(i32) #1

declare dso_local i64 @LD_IM1(i32) #1

declare dso_local i64 @nr64(i64) #1

declare dso_local i32 @nw64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
