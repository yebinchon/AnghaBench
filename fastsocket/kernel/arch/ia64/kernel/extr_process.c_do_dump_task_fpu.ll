; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_do_dump_task_fpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_do_dump_task_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.unw_frame_info = type { i32 }

@IA64_THREAD_FPH_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_dump_task_fpu(%struct.task_struct* %0, %struct.unw_frame_info* %1, i8* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.unw_frame_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.unw_frame_info* %1, %struct.unw_frame_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load %struct.unw_frame_info*, %struct.unw_frame_info** %5, align 8
  %14 = call i64 @unw_unwind_to_user(%struct.unw_frame_info* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %50

17:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.unw_frame_info*, %struct.unw_frame_info** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @unw_get_fr(%struct.unw_frame_info* %22, i32 %23, i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @ia64_flush_fph(%struct.task_struct* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IA64_THREAD_FPH_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 32
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32* %44, i32 %48, i32 1536)
  br label %50

50:                                               ; preds = %16, %42, %32
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @unw_unwind_to_user(%struct.unw_frame_info*) #1

declare dso_local i32 @unw_get_fr(%struct.unw_frame_info*, i32, i32*) #1

declare dso_local i32 @ia64_flush_fph(%struct.task_struct*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
