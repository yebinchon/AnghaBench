; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_get_socket_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_get_socket_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@isa_probe = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ISA IRQ mask 0x%04x, PCI irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*, i32)* @yenta_get_socket_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_get_socket_capabilities(%struct.yenta_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.yenta_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %6 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %9 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load i64, i64* @isa_probe, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @yenta_probe_irq(%struct.yenta_socket* %14, i32 %15)
  %17 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %18 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %22 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %27 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %31 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %35 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_printk(i32 %25, i32* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36)
  ret void
}

declare dso_local i64 @yenta_probe_irq(%struct.yenta_socket*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
