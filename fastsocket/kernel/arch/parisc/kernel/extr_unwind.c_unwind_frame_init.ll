; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_frame_info = type { i32, i32, i32, i32, %struct.task_struct* }
%struct.task_struct = type { i64 }
%struct.pt_regs = type { i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"(%d) Start unwind from sp=%08lx ip=%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unwind_frame_init(%struct.unwind_frame_info* %0, %struct.task_struct* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.unwind_frame_info*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.unwind_frame_info* %0, %struct.unwind_frame_info** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %8 = call i32 @memset(%struct.unwind_frame_info* %7, i32 0, i32 24)
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %11 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %10, i32 0, i32 4
  store %struct.task_struct* %9, %struct.task_struct** %11, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 30
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %18 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %25 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %32 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 31
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %39 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = icmp ne %struct.task_struct* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  br label %48

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ -1, %47 ]
  %50 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %51 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %4, align 8
  %54 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @memset(%struct.unwind_frame_info*, i32, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
