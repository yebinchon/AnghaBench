; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32, i32, i32, i32 }
%union.hv_x64_msr_hypercall_contents = type { i64 }

@hv_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@HV_X64_MSR_GUEST_OS_ID = common dso_local global i32 0, align 4
@HV_X64_MSR_HYPERCALL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.hv_x64_msr_hypercall_contents, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* null, i8** %4, align 8
  store i32 32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 5), align 4
  %8 = load i32, i32* @NR_CPUS, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(i32 %7, i32 0, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 4), align 8
  %14 = load i32, i32* @NR_CPUS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32 %13, i32 0, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 3), align 4
  %20 = load i32, i32* @NR_CPUS, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32 %19, i32 0, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 2), align 8
  %26 = load i32, i32* @NR_CPUS, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32 %25, i32 0, i32 %29)
  %31 = call i32 (...) @query_hypervisor_info()
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @generate_guest_id(i32 %32, i32 %33, i32 %34)
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 1), align 8
  %36 = load i32, i32* @HV_X64_MSR_GUEST_OS_ID, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 1), align 8
  %38 = call i32 @wrmsrl(i32 %36, i64 %37)
  %39 = load i32, i32* @HV_X64_MSR_HYPERCALL, align 4
  %40 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @rdmsrl(i32 %39, i64 %41)
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %46 = call i8* @__vmalloc(i32 %43, i32 %44, i32 %45)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %0
  br label %70

50:                                               ; preds = %0
  %51 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i32*
  store i32 1, i32* %51, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @vmalloc_to_pfn(i8* %52)
  %54 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i32*
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @HV_X64_MSR_HYPERCALL, align 4
  %56 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @wrmsrl(i32 %55, i64 %57)
  %59 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @HV_X64_MSR_HYPERCALL, align 4
  %61 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @rdmsrl(i32 %60, i64 %62)
  %64 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %50
  br label %70

68:                                               ; preds = %50
  %69 = load i8*, i8** %4, align 8
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %89

70:                                               ; preds = %67, %49
  %71 = load i8*, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @HV_X64_MSR_HYPERCALL, align 4
  %80 = bitcast %union.hv_x64_msr_hypercall_contents* %3 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wrmsrl(i32 %79, i64 %81)
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @vfree(i8* %84)
  br label %86

86:                                               ; preds = %83, %70
  %87 = load i32, i32* @ENOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %86, %68
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @query_hypervisor_info(...) #1

declare dso_local i64 @generate_guest_id(i32, i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @vmalloc_to_pfn(i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
