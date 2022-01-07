; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_set_core_way_partition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @cvmx_l2c_get_num_assoc()
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (...) @cvmx_octeon_num_cores()
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %92

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cvmx_l2c_get_core_way_partition(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %92

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 3
  %36 = mul nsw i32 %35, 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 12
  switch i32 %38, label %91 [
    i32 0, label %39
    i32 4, label %52
    i32 8, label %65
    i32 12, label %78
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %41 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %42 = call i32 @cvmx_read_csr(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 255, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = call i32 @cvmx_write_csr(i32 %40, i32 %50)
  br label %91

52:                                               ; preds = %33
  %53 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %54 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %55 = call i32 @cvmx_read_csr(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 255, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = call i32 @cvmx_write_csr(i32 %53, i32 %63)
  br label %91

65:                                               ; preds = %33
  %66 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %67 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %68 = call i32 @cvmx_read_csr(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 255, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %68, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = call i32 @cvmx_write_csr(i32 %66, i32 %76)
  br label %91

78:                                               ; preds = %33
  %79 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %80 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %81 = call i32 @cvmx_read_csr(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 255, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %81, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i32 @cvmx_write_csr(i32 %79, i32 %89)
  br label %91

91:                                               ; preds = %33, %78, %65, %52, %39
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %32, %22, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @cvmx_l2c_get_num_assoc(...) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i32 @cvmx_l2c_get_core_way_partition(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
