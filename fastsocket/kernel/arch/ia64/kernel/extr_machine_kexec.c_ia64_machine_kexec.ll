; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_machine_kexec.c_ia64_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_machine_kexec.c_ia64_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.unw_frame_info = type { i64 }
%struct.kimage = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ia64_os_init_on_kdump = common dso_local global i64 0, align 8
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@_IA64_REG_GP = common dso_local global i32 0, align 4
@SAL_VECTOR_OS_INIT = common dso_local global i32 0, align 4
@SAL_VECTOR_OS_MCA = common dso_local global i32 0, align 4
@_IA64_REG_CR_PMV = common dso_local global i32 0, align 4
@_IA64_REG_CR_CMCV = common dso_local global i32 0, align 4
@_IA64_REG_CR_TPR = common dso_local global i32 0, align 4
@IA64_SPURIOUS_INT_VECTOR = common dso_local global i64 0, align 8
@ia64_boot_param = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @ia64_machine_kexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_machine_kexec(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kimage*, align 8
  %6 = alloca i32 (i32, i32, i32, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.kimage*
  store %struct.kimage* %14, %struct.kimage** %5, align 8
  %15 = call i8* (...) @efi_get_pal_addr()
  store i8* %15, i8** %7, align 8
  %16 = load %struct.kimage*, %struct.kimage** %5, align 8
  %17 = getelementptr inbounds %struct.kimage, %struct.kimage* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @page_address(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @ia64_os_init_on_kdump, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %12, align 8
  %22 = load %struct.kimage*, %struct.kimage** %5, align 8
  %23 = icmp ne %struct.kimage* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.kimage*, %struct.kimage** %5, align 8
  %28 = getelementptr inbounds %struct.kimage, %struct.kimage* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %2
  %33 = call i32 (...) @crash_save_this_cpu()
  %34 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %35 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 16
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ia64_tpa(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @_IA64_REG_GP, align 4
  %46 = call i32 @ia64_getreg(i32 %45)
  %47 = call i32 @ia64_tpa(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @SAL_VECTOR_OS_INIT, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ia64_sal_set_vectors(i32 %48, i32 %49, i32 %50, i32 0, i32 %51, i32 %52, i32 0)
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @SAL_VECTOR_OS_INIT, align 4
  %56 = call i32 @ia64_sal_set_vectors(i32 %55, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %57

57:                                               ; preds = %54, %32
  %58 = load i32, i32* @SAL_VECTOR_OS_MCA, align 4
  %59 = call i32 @ia64_sal_set_vectors(i32 %58, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %60 = call i32 (...) @local_irq_disable()
  %61 = load i32, i32* @_IA64_REG_CR_PMV, align 4
  %62 = call i32 @ia64_setreg(i32 %61, i32 65536)
  %63 = load i32, i32* @_IA64_REG_CR_CMCV, align 4
  %64 = call i32 @ia64_setreg(i32 %63, i32 65536)
  %65 = call i32 @ia64_set_itv(i32 65536)
  %66 = call i32 @ia64_set_lrr0(i32 65536)
  %67 = call i32 @ia64_set_lrr1(i32 65536)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %73, %57
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = call i32 (...) @ia64_eoi()
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %68

76:                                               ; preds = %68
  %77 = load i32, i32* @_IA64_REG_CR_TPR, align 4
  %78 = call i32 @ia64_setreg(i32 %77, i32 0)
  %79 = call i32 (...) @ia64_srlz_d()
  br label %80

80:                                               ; preds = %84, %76
  %81 = call i64 (...) @ia64_get_ivr()
  %82 = load i64, i64* @IA64_SPURIOUS_INT_VECTOR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (...) @ia64_eoi()
  br label %80

86:                                               ; preds = %80
  %87 = call i32 (...) @platform_kernel_launch_event()
  %88 = bitcast i64* %8 to i32 (i32, i32, i32, i32)*
  store i32 (i32, i32, i32, i32)* %88, i32 (i32, i32, i32, i32)** %6, align 8
  %89 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %6, align 8
  %90 = load %struct.kimage*, %struct.kimage** %5, align 8
  %91 = getelementptr inbounds %struct.kimage, %struct.kimage* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kimage*, %struct.kimage** %5, align 8
  %94 = getelementptr inbounds %struct.kimage, %struct.kimage* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ia64_boot_param, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = call i32 @GRANULEROUNDDOWN(i64 %98)
  %100 = call i32 %89(i32 %92, i32 %95, i32 %96, i32 %99)
  %101 = call i32 (...) @BUG()
  ret void
}

declare dso_local i8* @efi_get_pal_addr(...) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crash_save_this_cpu(...) #1

declare dso_local i32 @ia64_tpa(i32) #1

declare dso_local i32 @ia64_getreg(i32) #1

declare dso_local i32 @ia64_sal_set_vectors(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @ia64_setreg(i32, i32) #1

declare dso_local i32 @ia64_set_itv(i32) #1

declare dso_local i32 @ia64_set_lrr0(i32) #1

declare dso_local i32 @ia64_set_lrr1(i32) #1

declare dso_local i32 @ia64_eoi(...) #1

declare dso_local i32 @ia64_srlz_d(...) #1

declare dso_local i64 @ia64_get_ivr(...) #1

declare dso_local i32 @platform_kernel_launch_event(...) #1

declare dso_local i32 @GRANULEROUNDDOWN(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
