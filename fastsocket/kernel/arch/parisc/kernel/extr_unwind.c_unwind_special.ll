; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_frame_info = type { i32, i32, i32 }
%struct.pt_regs = type { i32*, i32* }

@unwind_special.hi = internal global i64* bitcast (void (i32, %struct.pt_regs*)* @handle_interruption to i64*), align 8
@PT_SZ_ALGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unwinding through handle_interruption()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_frame_info*, i64, i32)* @unwind_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_special(%struct.unwind_frame_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_frame_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  store %struct.unwind_frame_info* %0, %struct.unwind_frame_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64*, i64** @unwind_special.hi, align 8
  %11 = call i64 @get_func_addr(i64* %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %5, align 8
  %15 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32, i32* @PT_SZ_ALGN, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.pt_regs*
  store %struct.pt_regs* %22, %struct.pt_regs** %8, align 8
  %23 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 30
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %5, align 8
  %30 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %5, align 8
  %37 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local void @handle_interruption(i32, %struct.pt_regs*) #1

declare dso_local i64 @get_func_addr(i64*) #1

declare dso_local i32 @dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
