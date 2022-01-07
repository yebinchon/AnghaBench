; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_write_ctl_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_write_ctl_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32 }

@HV_EOK = common dso_local global i64 0, align 8
@N2RNG_ACCUM_CYCLES_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.n2rng*, i32, i64, i64, i64, i64*)* @n2rng_write_ctl_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @n2rng_write_ctl_one(%struct.n2rng* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.n2rng*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.n2rng* %0, %struct.n2rng** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load %struct.n2rng*, %struct.n2rng** %7, align 8
  %15 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64*, i64** %12, align 8
  %23 = call i64 @sun4v_rng_ctl_write_v1(i64 %19, i64 %20, i64 %21, i64* %22)
  store i64 %23, i64* %13, align 8
  br label %40

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @sun4v_rng_ctl_write_v2(i64 %25, i64 %26, i64 %27, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @HV_EOK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.n2rng*, %struct.n2rng** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @n2rng_control_settle_v2(%struct.n2rng* %34, i32 %35)
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i64, i64* @N2RNG_ACCUM_CYCLES_DEFAULT, align 8
  %39 = load i64*, i64** %12, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %18
  %41 = load i64, i64* %13, align 8
  ret i64 %41
}

declare dso_local i64 @sun4v_rng_ctl_write_v1(i64, i64, i64, i64*) #1

declare dso_local i64 @sun4v_rng_ctl_write_v2(i64, i64, i64, i32) #1

declare dso_local i64 @n2rng_control_settle_v2(%struct.n2rng*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
