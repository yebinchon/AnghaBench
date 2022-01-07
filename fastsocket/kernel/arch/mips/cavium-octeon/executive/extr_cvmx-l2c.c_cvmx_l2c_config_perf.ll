; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_config_perf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_config_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_pfctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CVMX_L2C_PFCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_l2c_config_perf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_l2c_pfctl, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @CVMX_L2C_PFCTL, align 4
  %9 = call i32 @cvmx_read_csr(i32 %8)
  %10 = bitcast %union.cvmx_l2c_pfctl* %7 to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %52 [
    i32 0, label %12
    i32 1, label %25
    i32 2, label %38
    i32 3, label %51
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = call i32 (...) @cvmx_octeon_is_pass1()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %12
  br label %65

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 1, i32* %30, align 4
  %31 = call i32 (...) @cvmx_octeon_is_pass1()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %25
  br label %65

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 7
  store i32 1, i32* %43, align 4
  %44 = call i32 (...) @cvmx_octeon_is_pass1()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %38
  br label %65

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %3, %51
  %53 = load i32, i32* %5, align 4
  %54 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 4
  %56 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  store i32 1, i32* %57, align 4
  %58 = call i32 (...) @cvmx_octeon_is_pass1()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %50, %37, %24
  %66 = load i32, i32* @CVMX_L2C_PFCTL, align 4
  %67 = bitcast %union.cvmx_l2c_pfctl* %7 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cvmx_write_csr(i32 %66, i32 %68)
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_octeon_is_pass1(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
