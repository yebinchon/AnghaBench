; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_smbus_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_smbus_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9968cf_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9968cf_device*, i32)* @w9968cf_smbus_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9968cf_smbus_write_byte(%struct.w9968cf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.w9968cf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w9968cf_device* %0, %struct.w9968cf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 0
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = or i32 16, %20
  %22 = call i64 @w9968cf_write_sb(%struct.w9968cf_device* %19, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = or i32 17, %28
  %30 = call i64 @w9968cf_write_sb(%struct.w9968cf_device* %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = or i32 16, %36
  %38 = call i64 @w9968cf_write_sb(%struct.w9968cf_device* %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %11
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @w9968cf_write_sb(%struct.w9968cf_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
