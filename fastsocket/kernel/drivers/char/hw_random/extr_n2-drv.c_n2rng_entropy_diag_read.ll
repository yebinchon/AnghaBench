; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_entropy_diag_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_entropy_diag_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i64, i32*, i32, i32*, i64, i32*, i32)* @n2rng_entropy_diag_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_entropy_diag_read(%struct.n2rng* %0, i64 %1, i32* %2, i32 %3, i32* %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.n2rng*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32*, i32** %16, align 8
  %23 = call i64 @__pa(i32* %22)
  store i64 %23, i64* %18, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i64 @__pa(i32* %24)
  store i64 %25, i64* %19, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i64 @__pa(i32* %26)
  store i64 %27, i64* %20, align 8
  %28 = load %struct.n2rng*, %struct.n2rng** %10, align 8
  %29 = load i64, i64* %19, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @n2rng_generic_write_control(%struct.n2rng* %28, i64 %29, i64 %30, i32 %31)
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* %21, align 4
  store i32 %36, i32* %9, align 4
  br label %49

37:                                               ; preds = %8
  %38 = load %struct.n2rng*, %struct.n2rng** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %20, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @n2rng_generic_read_diag_data(%struct.n2rng* %38, i64 %39, i64 %40, i64 %41)
  store i32 %42, i32* %21, align 4
  %43 = load %struct.n2rng*, %struct.n2rng** %10, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @n2rng_generic_write_control(%struct.n2rng* %43, i64 %44, i64 %45, i32 %46)
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %37, %35
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @n2rng_generic_write_control(%struct.n2rng*, i64, i64, i32) #1

declare dso_local i32 @n2rng_generic_read_diag_data(%struct.n2rng*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
