; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_kernel_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_kernel_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@psw_kernel_bits = common dso_local global i32 0, align 4
@PSW_MASK_IO = common dso_local global i32 0, align 4
@PSW_MASK_EXT = common dso_local global i32 0, align 4
@kernel_thread_starter = common dso_local global i64 0, align 8
@PSW_ADDR_AMODE = common dso_local global i64 0, align 8
@do_exit = common dso_local global i64 0, align 8
@CLONE_VM = common dso_local global i64 0, align 8
@CLONE_UNTRACED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_thread(i32 (i8*)* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs, align 8
  store i32 (i8*)* %0, i32 (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 @memset(%struct.pt_regs* %7, i32 0, i32 32)
  %9 = load i32, i32* @psw_kernel_bits, align 4
  %10 = load i32, i32* @PSW_MASK_IO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PSW_MASK_EXT, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* @kernel_thread_starter, align 8
  %17 = load i64, i64* @PSW_ADDR_AMODE, align 8
  %18 = or i64 %16, %17
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %22 = ptrtoint i32 (i8*)* %21 to i64
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 9
  store i64 %22, i64* %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 10
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* @do_exit, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 11
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 1
  store i32 -1, i32* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @CLONE_VM, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @CLONE_UNTRACED, align 8
  %40 = or i64 %38, %39
  %41 = call i32 @do_fork(i64 %40, i32 0, %struct.pt_regs* %7, i32 0, i32* null, i32* null)
  ret i32 %41
}

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @do_fork(i64, i32, %struct.pt_regs*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
