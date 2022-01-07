; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setfreq_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setfreq_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i64)* @typhoon_setfreq_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_setfreq_generic(%struct.typhoon* %0, i64 %1) #0 {
  %3 = alloca %struct.typhoon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.typhoon* %0, %struct.typhoon** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %8 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* %4, align 8
  %11 = udiv i64 %10, 160
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %14, 2500
  %16 = udiv i64 %15, 5000
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %19, 5000
  %21 = udiv i64 %20, 10000
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 10, %22
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %23, %24
  %26 = add i64 %25, 10433
  %27 = udiv i64 %26, 20866
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = mul i64 4, %30
  %32 = sub i64 %31, 11505
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 8
  %37 = and i64 %36, 1
  %38 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %39 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  %42 = call i32 @outb_p(i64 %37, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = lshr i64 %43, 9
  %45 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %46 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 6
  %49 = call i32 @outb_p(i64 %44, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, 255
  %52 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %53 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 8
  %56 = call i32 @outb_p(i64 %51, i64 %55)
  %57 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %58 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb_p(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
