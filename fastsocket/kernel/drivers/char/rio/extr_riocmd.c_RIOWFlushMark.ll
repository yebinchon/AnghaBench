; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOWFlushMark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOWFlushMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CmdBlk = type { i32 }
%struct.Port = type { i32, i32, i32 }

@MAGIC_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOWFlushMark(i64 %0, %struct.CmdBlk* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.CmdBlk*, align 8
  %5 = alloca %struct.Port*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.CmdBlk* %1, %struct.CmdBlk** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.Port*
  store %struct.Port* %8, %struct.Port** %5, align 8
  %9 = load %struct.Port*, %struct.Port** %5, align 8
  %10 = getelementptr inbounds %struct.Port, %struct.Port* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @rio_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.Port*, %struct.Port** %5, align 8
  %14 = getelementptr inbounds %struct.Port, %struct.Port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @MAGIC_FLUSH, align 4
  %18 = load %struct.Port*, %struct.Port** %5, align 8
  %19 = getelementptr inbounds %struct.Port, %struct.Port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.Port*, %struct.Port** %5, align 8
  %23 = getelementptr inbounds %struct.Port, %struct.Port* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @rio_spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.CmdBlk*, %struct.CmdBlk** %4, align 8
  %28 = call i32 @RIOUnUse(i64 %26, %struct.CmdBlk* %27)
  ret i32 %28
}

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RIOUnUse(i64, %struct.CmdBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
