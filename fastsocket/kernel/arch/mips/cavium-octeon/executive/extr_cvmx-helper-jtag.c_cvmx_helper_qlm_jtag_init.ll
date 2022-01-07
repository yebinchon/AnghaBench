; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-helper-jtag.c_cvmx_helper_qlm_jtag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_qlm_jtgc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@OCTEON_CN52XX = common dso_local global i32 0, align 4
@CVMX_CIU_QLM_JTGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_helper_qlm_jtag_init() #0 {
  %1 = alloca %union.cvmx_ciu_qlm_jtgc, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 25000000
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = ashr i32 %9, 2
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %14, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %11

19:                                               ; preds = %11
  %20 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to i64*
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %2, align 4
  %22 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @OCTEON_CN52XX, align 4
  %27 = call i64 @OCTEON_IS_MODEL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 3, i32* %31, align 4
  br label %35

32:                                               ; preds = %19
  %33 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 15, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %37 = bitcast %union.cvmx_ciu_qlm_jtgc* %1 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @cvmx_write_csr(i32 %36, i64 %38)
  %40 = load i32, i32* @CVMX_CIU_QLM_JTGC, align 4
  %41 = call i32 @cvmx_read_csr(i32 %40)
  ret void
}

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
