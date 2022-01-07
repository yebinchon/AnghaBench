; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ptrace.c_regs_get_argument_nth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ptrace.c_regs_get_argument_nth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@arg_offs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regs_get_argument_nth(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @arg_offs_table, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = bitcast %struct.pt_regs* %11 to i8*
  %13 = load i32*, i32** @arg_offs_table, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %12, i64 %18
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load i32*, i32** @arg_offs_table, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add i32 1, %28
  %30 = call i64 @regs_get_kernel_stack_nth(%struct.pt_regs* %27, i32 %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %22, %10
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @regs_get_kernel_stack_nth(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
