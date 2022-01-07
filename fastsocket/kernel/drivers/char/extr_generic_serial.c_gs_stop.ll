; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.gs_port*)* }
%struct.TYPE_3__ = type { i32 }

@GS_TX_INTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_stop(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.gs_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = call i32 (...) @func_enter()
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  store %struct.gs_port* %7, %struct.gs_port** %3, align 8
  %8 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %9 = icmp ne %struct.gs_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %13 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %18 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %23 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GS_TX_INTEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load i32, i32* @GS_TX_INTEN, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %33 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %38 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %40, align 8
  %42 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %43 = call i32 %41(%struct.gs_port* %42)
  br label %44

44:                                               ; preds = %29, %21, %16, %11
  %45 = call i32 (...) @func_exit()
  br label %46

46:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
