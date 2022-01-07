; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_close(%struct.tty_port* %0, %struct.tty_struct* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %7 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = call i64 @tty_port_close_start(%struct.tty_port* %7, %struct.tty_struct* %8, %struct.file* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %21

13:                                               ; preds = %3
  %14 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %15 = call i32 @tty_port_shutdown(%struct.tty_port* %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %18 = call i32 @tty_port_close_end(%struct.tty_port* %16, %struct.tty_struct* %17)
  %19 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %20 = call i32 @tty_port_tty_set(%struct.tty_port* %19, i32* null)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @tty_port_shutdown(%struct.tty_port*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
