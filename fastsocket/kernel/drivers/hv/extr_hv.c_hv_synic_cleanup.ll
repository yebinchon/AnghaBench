; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_synic_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_synic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64*, i32 }
%union.hv_synic_sint = type { i32 }
%union.hv_synic_simp = type { i64 }
%union.hv_synic_siefp = type { i64 }

@hv_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HV_X64_MSR_SINT0 = common dso_local global i64 0, align 8
@VMBUS_MESSAGE_SINT = common dso_local global i64 0, align 8
@HV_X64_MSR_SIMP = common dso_local global i64 0, align 8
@HV_X64_MSR_SIEFP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_synic_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.hv_synic_sint, align 4
  %4 = alloca %union.hv_synic_simp, align 8
  %5 = alloca %union.hv_synic_siefp, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  %12 = load i64, i64* @HV_X64_MSR_SINT0, align 8
  %13 = load i64, i64* @VMBUS_MESSAGE_SINT, align 8
  %14 = add nsw i64 %12, %13
  %15 = bitcast %union.hv_synic_sint* %3 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rdmsrl(i64 %14, i32 %16)
  %18 = bitcast %union.hv_synic_sint* %3 to i32*
  store i32 1, i32* %18, align 4
  %19 = load i64, i64* @HV_X64_MSR_SINT0, align 8
  %20 = load i64, i64* @VMBUS_MESSAGE_SINT, align 8
  %21 = add nsw i64 %19, %20
  %22 = bitcast %union.hv_synic_sint* %3 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wrmsrl(i64 %21, i32 %23)
  %25 = load i64, i64* @HV_X64_MSR_SIMP, align 8
  %26 = bitcast %union.hv_synic_simp* %4 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rdmsrl(i64 %25, i32 %27)
  %29 = bitcast %union.hv_synic_simp* %4 to i64*
  store i64 0, i64* %29, align 8
  %30 = bitcast %union.hv_synic_simp* %4 to i64*
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @HV_X64_MSR_SIMP, align 8
  %32 = bitcast %union.hv_synic_simp* %4 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wrmsrl(i64 %31, i32 %33)
  %35 = load i64, i64* @HV_X64_MSR_SIEFP, align 8
  %36 = bitcast %union.hv_synic_siefp* %5 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rdmsrl(i64 %35, i32 %37)
  %39 = bitcast %union.hv_synic_siefp* %5 to i64*
  store i64 0, i64* %39, align 8
  %40 = bitcast %union.hv_synic_siefp* %5 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* @HV_X64_MSR_SIEFP, align 8
  %42 = bitcast %union.hv_synic_siefp* %5 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wrmsrl(i64 %41, i32 %43)
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 1), align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @free_page(i64 %49)
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hv_context, i32 0, i32 0), align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @free_page(i64 %55)
  br label %57

57:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
