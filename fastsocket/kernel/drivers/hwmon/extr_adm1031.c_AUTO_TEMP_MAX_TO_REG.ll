; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_AUTO_TEMP_MAX_TO_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_AUTO_TEMP_MAX_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @AUTO_TEMP_MAX_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AUTO_TEMP_MAX_TO_REG(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @AUTO_TEMP_MIN_FROM_REG(i32 %10)
  %12 = sub nsw i32 %9, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @AUTO_TEMP_MIN_FROM_REG(i32 %14)
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %16, 10
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 16, %18
  %20 = sdiv i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 248
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 10000
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 20000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 40000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 80000
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 3, i32 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = phi i32 [ 2, %33 ], [ %38, %34 ]
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ 1, %29 ], [ %40, %39 ]
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i32 [ 0, %25 ], [ %42, %41 ]
  %45 = or i32 %22, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @AUTO_TEMP_MIN_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
