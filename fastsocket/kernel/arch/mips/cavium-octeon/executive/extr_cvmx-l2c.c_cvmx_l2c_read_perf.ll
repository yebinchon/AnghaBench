; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_read_perf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_read_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_L2C_PFC0 = common dso_local global i32 0, align 4
@CVMX_L2C_PFC1 = common dso_local global i32 0, align 4
@CVMX_L2C_PFC2 = common dso_local global i32 0, align 4
@CVMX_L2C_PFC3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_read_perf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @CVMX_L2C_PFC0, align 4
  %7 = call i32 @cvmx_read_csr(i32 %6)
  store i32 %7, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load i32, i32* @CVMX_L2C_PFC1, align 4
  %10 = call i32 @cvmx_read_csr(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @CVMX_L2C_PFC2, align 4
  %13 = call i32 @cvmx_read_csr(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %1, %14
  %16 = load i32, i32* @CVMX_L2C_PFC3, align 4
  %17 = call i32 @cvmx_read_csr(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %11, %8, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
