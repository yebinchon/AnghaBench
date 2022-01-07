; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_backtrace.c_arm_backtrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_backtrace.c_arm_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i64 }
%struct.frame_tail = type { i32 }
%struct.stackframe = type { i32, i32, i32, i64 }

@report_trace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_tail*, align 8
  %6 = alloca %struct.stackframe, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.frame_tail*
  %11 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %10, i64 -1
  store %struct.frame_tail* %11, %struct.frame_tail** %5, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = call i32 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 3
  store i64 %18, i64* %19, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @report_trace, align 4
  %33 = call i32 @walk_stackframe(%struct.stackframe* %6, i32 %32, i32* %4)
  br label %53

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %4, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %41 = icmp ne %struct.frame_tail* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %44 = ptrtoint %struct.frame_tail* %43 to i64
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %39, %35
  %49 = phi i1 [ false, %39 ], [ false, %35 ], [ %47, %42 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %52 = call %struct.frame_tail* @user_backtrace(%struct.frame_tail* %51)
  store %struct.frame_tail* %52, %struct.frame_tail** %5, align 8
  br label %35

53:                                               ; preds = %15, %48
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @walk_stackframe(%struct.stackframe*, i32, i32*) #1

declare dso_local %struct.frame_tail* @user_backtrace(%struct.frame_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
