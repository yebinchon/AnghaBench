; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_frame_info = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"(%d) Continue unwind to sp=%08lx ip=%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind_once(%struct.unwind_frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unwind_frame_info*, align 8
  store %struct.unwind_frame_info* %0, %struct.unwind_frame_info** %3, align 8
  %4 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %5 = call i32 @unwind_frame_regs(%struct.unwind_frame_info* %4)
  %6 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %7 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %12 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %18 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %21 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %23 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %26 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %28 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %30 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %32 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %16
  %36 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %37 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  br label %43

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %41, %35 ], [ -1, %42 ]
  %45 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %46 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %49 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47, i64 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @unwind_frame_regs(%struct.unwind_frame_info*) #1

declare dso_local i32 @dbg(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
