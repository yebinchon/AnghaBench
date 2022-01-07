; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_via-rng.c_via_rng_data_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_via-rng.c_via_rng_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }

@VIA_RNG_CHUNK_1 = common dso_local global i32 0, align 4
@VIA_XSTORE_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @via_rng_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_rng_data_present(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %9 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 0
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 20
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @VIA_RNG_CHUNK_1, align 4
  %17 = call i32 @xstore(i32* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @VIA_XSTORE_CNT_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %13
  br label %32

27:                                               ; preds = %23
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %10

32:                                               ; preds = %26, %10
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  ret i32 %36
}

declare dso_local i32 @xstore(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
