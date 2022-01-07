; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_is_prefetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_is_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@PF_INSTR = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64, i64)* @is_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_prefetch(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PF_INSTR, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* @current, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = call i64 @convert_ip_to_linear(i32 %18, %struct.pt_regs* %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 15
  store i8* %23, i8** %8, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = call i64 @user_mode(%struct.pt_regs* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* @TASK_SIZE, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = icmp uge i8* %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %56

33:                                               ; preds = %27, %17
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %11, align 1
  %41 = call i64 @probe_kernel_address(i8* %39, i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %54

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %11, align 1
  %50 = call i32 @check_prefetch_opcode(%struct.pt_regs* %47, i8* %48, i8 zeroext %49, i32* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  br label %34

54:                                               ; preds = %52, %43, %34
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %32, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @convert_ip_to_linear(i32, %struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @probe_kernel_address(i8*, i8 zeroext) #1

declare dso_local i32 @check_prefetch_opcode(%struct.pt_regs*, i8*, i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
