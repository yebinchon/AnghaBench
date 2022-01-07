; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_suspend_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_suspend_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [19 x i8] c"suspending socket\0A\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_suspend_card(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = call i32 @cs_dbg(%struct.pcmcia_socket* %4, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  br label %9

9:                                                ; preds = %1
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SOCKET_PRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %9
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SOCKET_CARDBUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %19
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.pcmcia_socket*)**
  %40 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %39, align 8
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %42 = call i32 %40(%struct.pcmcia_socket* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %49 = call i32 @socket_suspend(%struct.pcmcia_socket* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45, %26, %16
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %52 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @socket_suspend(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
