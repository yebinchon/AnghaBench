; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_qlm_jtgd = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_CIU_QLM_JTGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_qlm_jtag_shift(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_ciu_qlm_jtgd, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to i64*
  store i64 0, i64* %8, align 8
  %9 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  %13 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %19 = call i32 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %28 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @cvmx_write_csr(i32 %27, i64 %29)
  br label %31

31:                                               ; preds = %35, %26
  %32 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %33 = call i64 @cvmx_read_csr(i32 %32)
  %34 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to i64*
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %31
  %36 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %31, label %40

40:                                               ; preds = %35
  %41 = bitcast %union.cvmx_ciu_qlm_jtgd* %7 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 32, %44
  %46 = ashr i32 %43, %45
  ret i32 %46
}

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
