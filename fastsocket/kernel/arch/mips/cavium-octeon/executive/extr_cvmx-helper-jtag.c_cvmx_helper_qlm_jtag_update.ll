; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_qlm_jtgd = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_CIU_QLM_JTGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_helper_qlm_jtag_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_ciu_qlm_jtgd, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %8 = call i32 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %17 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @cvmx_write_csr(i32 %16, i64 %18)
  br label %20

20:                                               ; preds = %24, %15
  %21 = load i32, i32* @CVMX_CIU_QLM_JTGD, align 4
  %22 = call i64 @cvmx_read_csr(i32 %21)
  %23 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to i64*
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = bitcast %union.cvmx_ciu_qlm_jtgd* %3 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %20, label %29

29:                                               ; preds = %24
  ret void
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
