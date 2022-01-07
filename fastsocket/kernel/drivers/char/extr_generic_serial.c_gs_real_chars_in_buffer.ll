; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_real_chars_in_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_real_chars_in_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gs_port*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @gs_real_chars_in_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_real_chars_in_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.gs_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = call i32 (...) @func_enter()
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  store %struct.gs_port* %8, %struct.gs_port** %4, align 8
  %9 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %10 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %16 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %18, align 8
  %20 = icmp ne i32 (%struct.gs_port*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

22:                                               ; preds = %14
  %23 = call i32 (...) @func_exit()
  %24 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %25 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %28 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %30, align 8
  %32 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %33 = call i32 %31(%struct.gs_port* %32)
  %34 = add nsw i32 %26, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %21, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
