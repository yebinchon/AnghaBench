; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_get_core_way_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (...) @cvmx_octeon_num_cores()
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 3
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 12
  switch i32 %14, label %47 [
    i32 0, label %15
    i32 4, label %23
    i32 8, label %31
    i32 12, label %39
  ]

15:                                               ; preds = %9
  %16 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %17 = call i32 @cvmx_read_csr(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 255, %18
  %20 = and i32 %17, %19
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %9
  %24 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %25 = call i32 @cvmx_read_csr(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 255, %26
  %28 = and i32 %25, %27
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %9
  %32 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %33 = call i32 @cvmx_read_csr(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 255, %34
  %36 = and i32 %33, %35
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %9
  %40 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %41 = call i32 @cvmx_read_csr(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 255, %42
  %44 = and i32 %41, %43
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %39, %31, %23, %15, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
