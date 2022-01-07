; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCL818_MUX = common dso_local global i64 0, align 8
@PCL818_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pcl818_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_check(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @PCL818_MUX, align 8
  %6 = add i64 %4, %5
  %7 = call i32 @outb(i32 0, i64 %6)
  %8 = call i32 @udelay(i32 1)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PCL818_MUX, align 8
  %11 = add i64 %9, %10
  %12 = call i32 @inb(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PCL818_MUX, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @outb(i32 85, i64 %18)
  %20 = call i32 @udelay(i32 1)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @PCL818_MUX, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  %25 = icmp ne i32 %24, 85
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @PCL818_MUX, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @outb(i32 0, i64 %30)
  %32 = call i32 @udelay(i32 1)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @PCL818_CONTROL, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @outb(i32 24, i64 %35)
  %37 = call i32 @udelay(i32 1)
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @PCL818_CONTROL, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  %42 = icmp ne i32 %41, 24
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %26, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
