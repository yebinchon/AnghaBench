; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_mgr.c_pcmcia_find_io_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_mgr.c_pcmcia_find_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @pcmcia_find_io_region(i64 %0, i32 %1, i64 %2, %struct.pcmcia_socket* %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pcmcia_socket*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %9, align 8
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  %11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)**
  %15 = load %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)*, %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)** %14, align 8
  %16 = icmp ne %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)**
  %23 = load %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)*, %struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  %28 = call %struct.resource* %23(i64 %24, i32 %25, i64 %26, %struct.pcmcia_socket* %27)
  store %struct.resource* %28, %struct.resource** %5, align 8
  br label %30

29:                                               ; preds = %4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
