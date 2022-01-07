; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_ptrace.c_putreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_ptrace.c_putreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FLAG_MASK = common dso_local global i64 0, align 8
@TIF_IA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putreg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %49 [
    i32 132, label %10
    i32 130, label %10
    i32 135, label %10
    i32 133, label %10
    i32 128, label %10
    i32 136, label %10
    i32 131, label %23
    i32 129, label %23
    i32 134, label %35
  ]

10:                                               ; preds = %3, %3, %3, %3, %3, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, 3
  %16 = icmp ne i64 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %13, %10
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, 65535
  store i64 %22, i64* %7, align 8
  br label %49

23:                                               ; preds = %3, %3
  %24 = load i64, i64* %7, align 8
  %25 = lshr i64 %24, 48
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 48
  %30 = icmp eq i64 %29, 65535
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %27, %23
  br label %49

35:                                               ; preds = %3
  %36 = load i64, i64* @FLAG_MASK, align 8
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @PT_REGS_EFLAGS(i32* %41)
  %43 = load i64, i64* @FLAG_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %3, %35, %34, %20
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @PT_REGS_SET(i32* %52, i32 %53, i64 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %31, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @PT_REGS_EFLAGS(i32*) #1

declare dso_local i32 @PT_REGS_SET(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
