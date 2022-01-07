; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_receive_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_receive_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a2232_port*, i32, i32)* @a2232_receive_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2232_receive_char(%struct.a2232_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.a2232_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  store %struct.a2232_port* %0, %struct.a2232_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.a2232_port*, %struct.a2232_port** %4, align 8
  %9 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %7, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @tty_insert_flip_char(%struct.tty_struct* %13, i32 %14, i32 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %18 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %17)
  ret void
}

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
