; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c6410/extr_mach-hmt.c_hmt_bl_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c6410/extr_mach-hmt.c_hmt_bl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hmt_bl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmt_bl_notify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2048
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = mul nsw i32 25600, %7
  %9 = add nsw i32 %8, 115622
  %10 = sdiv i32 %9, 231245
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 4
  %14 = add nsw i32 %13, 16384
  %15 = add nsw i32 %14, 58
  %16 = sdiv i32 %15, 116
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %21, 524288
  %23 = sdiv i32 %22, 1048576
  %24 = mul nsw i32 25, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %6
  %26 = call i32 @S3C64XX_GPB(i32 4)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @gpio_set_value(i32 %26, i32 %27)
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @S3C64XX_GPB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
