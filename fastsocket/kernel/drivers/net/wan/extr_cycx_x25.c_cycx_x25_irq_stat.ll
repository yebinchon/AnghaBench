; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_irq_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_irq_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cycx_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cycx_x25_cmd = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"cycx_x25_irq_stat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cycx_device*, %struct.cycx_x25_cmd*)* @cycx_x25_irq_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cycx_x25_irq_stat(%struct.cycx_device* %0, %struct.cycx_x25_cmd* %1) #0 {
  %3 = alloca %struct.cycx_device*, align 8
  %4 = alloca %struct.cycx_x25_cmd*, align 8
  store %struct.cycx_device* %0, %struct.cycx_device** %3, align 8
  store %struct.cycx_x25_cmd* %1, %struct.cycx_x25_cmd** %4, align 8
  %5 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %6 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %5, i32 0, i32 2
  %7 = load %struct.cycx_x25_cmd*, %struct.cycx_x25_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.cycx_x25_cmd, %struct.cycx_x25_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %11 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @cycx_peek(i32* %6, i32 %9, i32* %13, i32 4)
  %15 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %16 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @hex_dump(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i32 4)
  %21 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %22 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @cycx_x25_dump_stats(i32* %24)
  %26 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %27 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %26, i32 0, i32 0
  %28 = call i32 @wake_up_interruptible(i32* %27)
  ret void
}

declare dso_local i32 @cycx_peek(i32*, i32, i32*, i32) #1

declare dso_local i32 @hex_dump(i8*, i8*, i32) #1

declare dso_local i32 @cycx_x25_dump_stats(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
