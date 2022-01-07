; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vfp_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.notifier_block = type { i32 }
%struct.thread_info = type { i64, %union.vfp_state }

@THREAD_NOTIFY_SWITCH = common dso_local global i64 0, align 8
@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EN = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@THREAD_NOTIFY_FLUSH = common dso_local global i64 0, align 8
@FPSCR_ROUND_NEAREST = common dso_local global i32 0, align 4
@last_VFP_context = common dso_local global %union.vfp_state** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @vfp_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thread_info*, align 8
  %9 = alloca %union.vfp_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.thread_info*
  store %struct.thread_info* %13, %struct.thread_info** %8, align 8
  %14 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %15 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @THREAD_NOTIFY_SWITCH, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load i32, i32* @FPEXC, align 4
  %25 = call i32 @fmrx(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @FPEXC, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @FPEXC_EN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @fmxr(i32 %26, i32 %30)
  %32 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %35 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %34, i32 0, i32 1
  store %union.vfp_state* %35, %union.vfp_state** %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @THREAD_NOTIFY_FLUSH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %union.vfp_state*, %union.vfp_state** %9, align 8
  %41 = call i32 @memset(%union.vfp_state* %40, i32 0, i32 16)
  %42 = load i32, i32* @FPEXC_EN, align 4
  %43 = load %union.vfp_state*, %union.vfp_state** %9, align 8
  %44 = bitcast %union.vfp_state* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @FPSCR_ROUND_NEAREST, align 4
  %47 = load %union.vfp_state*, %union.vfp_state** %9, align 8
  %48 = bitcast %union.vfp_state* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @FPEXC, align 4
  %51 = load i32, i32* @FPEXC, align 4
  %52 = call i32 @fmrx(i32 %51)
  %53 = load i32, i32* @FPEXC_EN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @fmxr(i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %39, %33
  %58 = load %union.vfp_state**, %union.vfp_state*** @last_VFP_context, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %union.vfp_state*, %union.vfp_state** %58, i64 %59
  %61 = load %union.vfp_state*, %union.vfp_state** %60, align 8
  %62 = load %union.vfp_state*, %union.vfp_state** %9, align 8
  %63 = icmp eq %union.vfp_state* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %union.vfp_state**, %union.vfp_state*** @last_VFP_context, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %union.vfp_state*, %union.vfp_state** %65, i64 %66
  store %union.vfp_state* null, %union.vfp_state** %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @fmrx(i32) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @memset(%union.vfp_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
