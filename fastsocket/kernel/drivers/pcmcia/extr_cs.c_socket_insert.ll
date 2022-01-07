; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"insert\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@setup_delay = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"pccard: %s card inserted into slot %d\0A\00", align 1
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CardBus\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PCMCIA\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"insert done\0A\00", align 1
@CS_EVENT_CARD_INSERTION = common dso_local global i32 0, align 4
@CS_EVENT_PRI_LOW = common dso_local global i32 0, align 4
@SOCKET_CARDBUS_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_insert(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %6 = call i32 @cs_dbg(%struct.pcmcia_socket* %5, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %8 = call i32 @cs_socket_get(%struct.pcmcia_socket* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = load i32, i32* @setup_delay, align 4
  %16 = call i32 @socket_setup(%struct.pcmcia_socket* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load i32, i32* @SOCKET_PRESENT, align 4
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @KERN_NOTICE, align 4
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 2
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SOCKET_CARDBUS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_printk(i32 %25, i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %41 = call i32 @cs_dbg(%struct.pcmcia_socket* %40, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %43 = load i32, i32* @CS_EVENT_CARD_INSERTION, align 4
  %44 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %45 = call i32 @send_event(%struct.pcmcia_socket* %42, i32 %43, i32 %44)
  br label %49

46:                                               ; preds = %13
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %48 = call i32 @socket_shutdown(%struct.pcmcia_socket* %47)
  br label %49

49:                                               ; preds = %46, %19
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @cs_socket_get(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_setup(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @send_event(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i32 @socket_shutdown(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
