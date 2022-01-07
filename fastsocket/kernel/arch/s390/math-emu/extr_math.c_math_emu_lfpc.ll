; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_lfpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_lfpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@FPC_VALID_MASK = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @math_emu_lfpc(i32* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 12
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @calc_addr(%struct.pt_regs* %11, i32 0, i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @mathemu_get_user(i32 %17, i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FPC_VALID_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @SIGILL, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @calc_addr(%struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @mathemu_get_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
