; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_setup_output_buffer_if_we_run_high.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_setup_output_buffer_if_we_run_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moveparams = type { i8*, i32, i32* }

@end = common dso_local global i32 0, align 4
@HEAP_SIZE = common dso_local global i64 0, align 8
@high_buffer_start = common dso_local global i32* null, align 8
@ALT_MEM_K = common dso_local global i32 0, align 4
@EXT_MEM_K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Less than 4MB of memory.\0A\00", align 1
@LOW_BUFFER_START = common dso_local global i64 0, align 8
@output_data = common dso_local global i8* null, align 8
@high_loaded = common dso_local global i32 0, align 4
@free_mem_end_ptr = common dso_local global i64 0, align 8
@LOW_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_output_buffer_if_we_run_high(%struct.moveparams* %0) #0 {
  %2 = alloca %struct.moveparams*, align 8
  store %struct.moveparams* %0, %struct.moveparams** %2, align 8
  %3 = load i64, i64* @HEAP_SIZE, align 8
  %4 = add nsw i64 ptrtoint (i32* @end to i64), %3
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** @high_buffer_start, align 8
  %6 = load i32, i32* @ALT_MEM_K, align 4
  %7 = load i32, i32* @EXT_MEM_K, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ALT_MEM_K, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EXT_MEM_K, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp slt i32 %14, 3072
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64, i64* @LOW_BUFFER_START, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @output_data, align 8
  %21 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %22 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  store i32 1, i32* @high_loaded, align 4
  %23 = load i32*, i32** @high_buffer_start, align 8
  %24 = ptrtoint i32* %23 to i64
  store i64 %24, i64* @free_mem_end_ptr, align 8
  %25 = load i64, i64* @LOW_BUFFER_SIZE, align 8
  %26 = add nsw i64 1048576, %25
  %27 = load i32*, i32** @high_buffer_start, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load i64, i64* @LOW_BUFFER_SIZE, align 8
  %32 = add nsw i64 1048576, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** @high_buffer_start, align 8
  %34 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %35 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  br label %39

36:                                               ; preds = %18
  %37 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %38 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32*, i32** @high_buffer_start, align 8
  %41 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %42 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  ret void
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
