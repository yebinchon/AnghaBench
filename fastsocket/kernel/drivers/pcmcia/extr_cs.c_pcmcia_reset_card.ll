; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_reset_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_reset_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

@.str = private unnamed_addr constant [18 x i8] c"resetting socket\0A\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CS_EVENT_RESET_REQUEST = common dso_local global i32 0, align 4
@CS_EVENT_PRI_LOW = common dso_local global i32 0, align 4
@CS_EVENT_RESET_PHYSICAL = common dso_local global i32 0, align 4
@CS_EVENT_CARD_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_reset_card(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = call i32 @cs_dbg(%struct.pcmcia_socket* %4, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
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
  br label %89

19:                                               ; preds = %9
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SOCKET_SUSPEND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SOCKET_CARDBUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %29
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %41 = load i32, i32* @CS_EVENT_RESET_REQUEST, align 4
  %42 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %43 = call i32 @send_event(%struct.pcmcia_socket* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %39
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %48 = load i32, i32* @CS_EVENT_RESET_PHYSICAL, align 4
  %49 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %50 = call i32 @send_event(%struct.pcmcia_socket* %47, i32 %48, i32 %49)
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %52 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %57 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = bitcast {}** %59 to i32 (%struct.pcmcia_socket*)**
  %61 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %60, align 8
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %63 = call i32 %61(%struct.pcmcia_socket* %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %66 = call i64 @socket_reset(%struct.pcmcia_socket* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %70 = load i32, i32* @CS_EVENT_CARD_RESET, align 4
  %71 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %72 = call i32 @send_event(%struct.pcmcia_socket* %69, i32 %70, i32 %71)
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %79 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i32 (%struct.pcmcia_socket*)**
  %83 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %82, align 8
  %84 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %85 = call i32 %83(%struct.pcmcia_socket* %84)
  br label %86

86:                                               ; preds = %77, %68
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %87, %39
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %36, %26, %16
  %90 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %91 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_event(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i64 @socket_reset(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
