; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, i32 (%struct.pcmcia_socket*, i32*)* }

@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CS_EVENT_PM_SUSPEND = common dso_local global i32 0, align 4
@CS_EVENT_PRI_LOW = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_suspend(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SOCKET_SUSPEND, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = load i32, i32* @CS_EVENT_PM_SUSPEND, align 4
  %16 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %17 = call i32 @send_event(%struct.pcmcia_socket* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @dead_socket, align 4
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %24, align 8
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 2
  %29 = call i32 %25(%struct.pcmcia_socket* %26, i32* %28)
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.pcmcia_socket*)**
  %35 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %34, align 8
  %36 = icmp ne i32 (%struct.pcmcia_socket*)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %13
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.pcmcia_socket*)**
  %43 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %42, align 8
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %45 = call i32 %43(%struct.pcmcia_socket* %44)
  br label %46

46:                                               ; preds = %37, %13
  %47 = load i32, i32* @SOCKET_SUSPEND, align 4
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @send_event(%struct.pcmcia_socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
