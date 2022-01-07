; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_handle_unaligned_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_handle_unaligned_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_unaligned_access(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = lshr i64 %8, 16
  %10 = trunc i64 %9 to i16
  store i16 %10, i16* %6, align 2
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 28672
  %14 = icmp ne i32 %13, 8192
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %43

28:                                               ; preds = %21, %16
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = call i32 @emu_ld(i64 %34, %struct.pt_regs* %35)
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %40 = call i32 @emu_st(i64 %38, %struct.pt_regs* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %27, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @emu_ld(i64, %struct.pt_regs*) #1

declare dso_local i32 @emu_st(i64, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
