; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_setup.c_octeon_user_io_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_setup.c_octeon_user_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.octeon_cvmemctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.cvmx_iob_fau_timeout = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%union.cvmx_pow_nw_tim = type { i64 }
%struct.TYPE_6__ = type { i32 }

@OCTEON_CN38XX_PASS2 = common dso_local global i32 0, align 4
@CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CVMSEG size: %d cache lines (%d bytes)\0A\00", align 1
@CVMX_IOB_FAU_TIMEOUT = common dso_local global i32 0, align 4
@CVMX_POW_NW_TIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_user_io_init() #0 {
  %1 = alloca %union.octeon_cvmemctl, align 8
  %2 = alloca %union.cvmx_iob_fau_timeout, align 8
  %3 = alloca %union.cvmx_pow_nw_tim, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @read_c0_cvmmemctl()
  %6 = bitcast %union.octeon_cvmemctl* %1 to i32*
  store i32 %5, i32* %6, align 8
  %7 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 21
  store i64 0, i64* %10, align 8
  %11 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 20
  store i64 0, i64* %12, align 8
  %13 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 19
  store i64 0, i64* %14, align 8
  %15 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 18
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @OCTEON_CN38XX_PASS2, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %26

23:                                               ; preds = %0
  %24 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 17
  store i64 0, i64* %28, align 8
  %29 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 16
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 15
  store i64 0, i64* %32, align 8
  %33 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 14
  store i64 0, i64* %34, align 8
  %35 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 13
  store i64 0, i64* %36, align 8
  %37 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 12
  store i64 0, i64* %38, align 8
  %39 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  %41 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  store i64 0, i64* %46, align 8
  %47 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 10, i32* %50, align 8
  %51 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE, align 4
  %58 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = call i64 (...) @smp_processor_id()
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %26
  %63 = load i32, i32* @CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE, align 4
  %64 = load i32, i32* @CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE, align 4
  %65 = mul nsw i32 %64, 128
  %66 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %26
  %68 = bitcast %union.octeon_cvmemctl* %1 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @write_c0_cvmmemctl(i32 %69)
  %71 = call i32 (...) @read_c0_cvmctl()
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, -897
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, 768
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @write_c0_cvmctl(i32 %76)
  %78 = bitcast %union.cvmx_iob_fau_timeout* %2 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %union.cvmx_iob_fau_timeout* %2 to %struct.TYPE_5__*
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 4095, i32* %80, align 8
  %81 = bitcast %union.cvmx_iob_fau_timeout* %2 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @CVMX_IOB_FAU_TIMEOUT, align 4
  %84 = bitcast %union.cvmx_iob_fau_timeout* %2 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i64 %85)
  %87 = bitcast %union.cvmx_pow_nw_tim* %3 to i64*
  store i64 0, i64* %87, align 8
  %88 = bitcast %union.cvmx_pow_nw_tim* %3 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 3, i32* %89, align 8
  %90 = load i32, i32* @CVMX_POW_NW_TIM, align 4
  %91 = bitcast %union.cvmx_pow_nw_tim* %3 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cvmx_write_csr(i32 %90, i64 %92)
  %94 = call i32 @write_octeon_c0_icacheerr(i32 0)
  %95 = call i32 @write_c0_derraddr1(i32 0)
  ret void
}

declare dso_local i32 @read_c0_cvmmemctl(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @write_c0_cvmmemctl(i32) #1

declare dso_local i32 @read_c0_cvmctl(...) #1

declare dso_local i32 @write_c0_cvmctl(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @write_octeon_c0_icacheerr(i32) #1

declare dso_local i32 @write_c0_derraddr1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
