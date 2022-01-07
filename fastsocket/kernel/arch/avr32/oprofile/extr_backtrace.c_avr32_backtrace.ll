; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_backtrace.c_avr32_backtrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_backtrace.c_avr32_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.frame_head = type { %struct.frame_head*, i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avr32_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_head*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.frame_head*
  store %struct.frame_head* %9, %struct.frame_head** %5, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = call i32 @user_mode(%struct.pt_regs* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %24, %14
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.frame_head*, %struct.frame_head** %5, align 8
  %21 = icmp ne %struct.frame_head* %20, null
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load %struct.frame_head*, %struct.frame_head** %5, align 8
  %26 = call %struct.frame_head* @dump_user_backtrace(%struct.frame_head* %25)
  store %struct.frame_head* %26, %struct.frame_head** %5, align 8
  br label %15

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local %struct.frame_head* @dump_user_backtrace(%struct.frame_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
