; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl724.c_subdev_8255mapped_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl724.c_subdev_8255mapped_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_8255 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @subdev_8255mapped_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_8255mapped_cb(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* @SIZE_8255, align 8
  %12 = load i64, i64* %9, align 8
  %13 = lshr i64 %12, 12
  %14 = mul i64 %11, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %9, align 8
  %17 = and i64 %16, 4095
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @outb(i32 %23, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  %29 = call i32 @outb(i32 %26, i64 %28)
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @outb(i32 %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  %38 = call i32 @inb(i64 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
