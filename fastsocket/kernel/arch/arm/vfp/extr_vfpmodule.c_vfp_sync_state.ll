; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_sync_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_sync_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }

@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EN = common dso_local global i32 0, align 4
@last_VFP_context = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfp_sync_state(%struct.thread_info* %0) #0 {
  %2 = alloca %struct.thread_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.thread_info* %0, %struct.thread_info** %2, align 8
  %5 = call i32 (...) @get_cpu()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @FPEXC, align 4
  %7 = call i32 @fmrx(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FPEXC_EN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = load i32**, i32*** @last_VFP_context, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %41

21:                                               ; preds = %13
  %22 = load i32, i32* @FPEXC, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FPEXC_EN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @fmxr(i32 %22, i32 %25)
  %27 = load i32**, i32*** @last_VFP_context, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vfp_save_state(i32* %31, i32 %32)
  %34 = load i32, i32* @FPEXC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @fmxr(i32 %34, i32 %35)
  %37 = load i32**, i32*** @last_VFP_context, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %21, %20, %12
  %42 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @fmrx(i32) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @vfp_save_state(i32*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
