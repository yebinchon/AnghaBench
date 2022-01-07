; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_bmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_bmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @bmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmask(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @RS1(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @RS2(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @RD(i32 %13)
  %15 = call i32 @maybe_flush_windows(i32 %10, i32 %12, i32 %14, i32 0)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @RS1(i32 %16)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = call i64 @fetch_reg(i32 %17, %struct.pt_regs* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @RS2(i32 %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = call i64 @fetch_reg(i32 %21, %struct.pt_regs* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RD(i32 %29)
  %31 = call i32 @store_reg(%struct.pt_regs* %27, i64 %28, i32 %30)
  %32 = call %struct.TYPE_2__* (...) @current_thread_info()
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = shl i64 %38, 32
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call %struct.TYPE_2__* (...) @current_thread_info()
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  ret void
}

declare dso_local i32 @maybe_flush_windows(i32, i32, i32, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i32 @store_reg(%struct.pt_regs*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
