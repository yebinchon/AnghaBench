; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_got_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_got_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_got_break(%struct.gs_port* %0) #0 {
  %2 = alloca %struct.gs_port*, align 8
  store %struct.gs_port* %0, %struct.gs_port** %2, align 8
  %3 = call i32 (...) @func_enter()
  %4 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %5 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TTY_BREAK, align 4
  %9 = call i32 @tty_insert_flip_char(i32 %7, i32 0, i32 %8)
  %10 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %11 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tty_schedule_flip(i32 %13)
  %15 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %16 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ASYNC_SAK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %24 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @do_SAK(i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @tty_insert_flip_char(i32, i32, i32) #1

declare dso_local i32 @tty_schedule_flip(i32) #1

declare dso_local i32 @do_SAK(i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
