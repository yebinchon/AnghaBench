; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_need_more_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_need_more_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_READY = common dso_local global i32 0, align 4
@STATUS_DIR = common dso_local global i32 0, align 4
@STATUS_DMA = common dso_local global i32 0, align 4
@MORE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @need_more_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_more_output() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @wait_til_ready()
  store i32 %3, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %20

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @STATUS_READY, align 4
  %9 = load i32, i32* @STATUS_DIR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STATUS_DMA, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %7, %12
  %14 = load i32, i32* @STATUS_READY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @MORE_OUTPUT, align 4
  store i32 %17, i32* %1, align 4
  br label %20

18:                                               ; preds = %6
  %19 = call i32 (...) @result()
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %16, %5
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @wait_til_ready(...) #1

declare dso_local i32 @result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
