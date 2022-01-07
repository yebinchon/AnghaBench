; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_pollfunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_pollfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_board = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@sx_poll = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sx_pollfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_pollfunc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sx_board*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sx_board*
  store %struct.sx_board* %5, %struct.sx_board** %3, align 8
  %6 = call i32 (...) @func_enter()
  %7 = load %struct.sx_board*, %struct.sx_board** %3, align 8
  %8 = call i32 @sx_interrupt(i32 0, %struct.sx_board* %7)
  %9 = load %struct.sx_board*, %struct.sx_board** %3, align 8
  %10 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %9, i32 0, i32 0
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @sx_poll, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @mod_timer(i32* %10, i64 %13)
  %15 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @sx_interrupt(i32, %struct.sx_board*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
