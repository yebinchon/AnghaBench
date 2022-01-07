; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_interrupt_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_interrupt_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @yenta_interrupt_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_interrupt_wrapper(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.yenta_socket*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.yenta_socket*
  store %struct.yenta_socket* %5, %struct.yenta_socket** %3, align 8
  %6 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %7 = bitcast %struct.yenta_socket* %6 to i8*
  %8 = call i32 @yenta_interrupt(i32 0, i8* %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = add nsw i64 %9, %10
  %12 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %13 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %16 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %15, i32 0, i32 0
  %17 = call i32 @add_timer(%struct.TYPE_2__* %16)
  ret void
}

declare dso_local i32 @yenta_interrupt(i32, i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
