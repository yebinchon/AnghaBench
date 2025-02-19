; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_stfpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_stfpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @math_emu_stfpc(i32* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 12
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @calc_addr(%struct.pt_regs* %9, i32 0, i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @mathemu_put_user(i32 %19, i32* %20)
  ret i32 0
}

declare dso_local i64 @calc_addr(%struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @mathemu_put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
