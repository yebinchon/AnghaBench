; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_64.c_fetch_reg_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_64.c_fetch_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32 }
%struct.reg_window = type { i64* }
%struct.reg_window32 = type { i32* }

@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, %struct.pt_regs*)* @fetch_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @fetch_reg_addr(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.reg_window*, align 8
  %7 = alloca %struct.reg_window32*, align 8
  %8 = alloca %struct.reg_window*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %3, align 8
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TSTATE_PRIV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @UREG_FP, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STACK_BIAS, align 8
  %33 = add i64 %31, %32
  %34 = inttoptr i64 %33 to %struct.reg_window*
  store %struct.reg_window* %34, %struct.reg_window** %6, align 8
  %35 = load %struct.reg_window*, %struct.reg_window** %6, align 8
  %36 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub i32 %38, 16
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64* %41, i64** %3, align 8
  br label %79

42:                                               ; preds = %18
  %43 = load i32, i32* @TIF_32BIT, align 4
  %44 = call i64 @test_thread_flag(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @UREG_FP, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.reg_window32*
  store %struct.reg_window32* %53, %struct.reg_window32** %7, align 8
  %54 = load %struct.reg_window32*, %struct.reg_window32** %7, align 8
  %55 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub i32 %57, 16
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = bitcast i32* %60 to i64*
  store i64* %61, i64** %3, align 8
  br label %79

62:                                               ; preds = %42
  %63 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @UREG_FP, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STACK_BIAS, align 8
  %70 = add i64 %68, %69
  %71 = inttoptr i64 %70 to %struct.reg_window*
  store %struct.reg_window* %71, %struct.reg_window** %8, align 8
  %72 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %73 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sub i32 %75, 16
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64* %78, i64** %3, align 8
  br label %79

79:                                               ; preds = %62, %46, %25, %11
  %80 = load i64*, i64** %3, align 8
  ret i64* %80
}

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
