; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_hw_way_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_hw_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_set_hw_way_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 255, i32* %4, align 4
  %5 = load i32, i32* @OCTEON_CN58XX, align 4
  %6 = call i64 @OCTEON_IS_MODEL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @OCTEON_CN38XX, align 4
  %10 = call i64 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = call i64 (...) @l2_size_half()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 15, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %22

17:                                               ; preds = %8
  %18 = call i64 (...) @l2_size_half()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 3, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @cvmx_l2c_get_hw_way_partition()
  %33 = or i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %47

39:                                               ; preds = %30
  %40 = load i32, i32* @CVMX_L2C_SPAR4, align 4
  %41 = load i32, i32* @CVMX_L2C_SPAR4, align 4
  %42 = call i32 @cvmx_read_csr(i32 %41)
  %43 = and i32 %42, -256
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cvmx_write_csr(i32 %40, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %38, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i64 @l2_size_half(...) #1

declare dso_local i32 @cvmx_l2c_get_hw_way_partition(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
