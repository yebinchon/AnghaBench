; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_late_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_late_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i64 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cis mismatch - different card\0A\00", align 1
@CS_EVENT_CARD_INSERTION = common dso_local global i32 0, align 4
@CS_EVENT_PRI_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cis matches cache\0A\00", align 1
@CS_EVENT_PM_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_late_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_late_resume(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SOCKET_PRESENT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SOCKET_SUSPEND, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %18 = call i32 @socket_insert(%struct.pcmcia_socket* %17)
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %26 = call i64 @verify_cis_cache(%struct.pcmcia_socket* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %30 = call i32 @cs_dbg(%struct.pcmcia_socket* %29, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %32 = call i32 @socket_remove_drivers(%struct.pcmcia_socket* %31)
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %34 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %33)
  %35 = call i32 @msleep(i32 200)
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %37 = load i32, i32* @CS_EVENT_CARD_INSERTION, align 4
  %38 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %39 = call i32 @send_event(%struct.pcmcia_socket* %36, i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %42 = call i32 @cs_dbg(%struct.pcmcia_socket* %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %44 = load i32, i32* @CS_EVENT_PM_RESUME, align 4
  %45 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %46 = call i32 @send_event(%struct.pcmcia_socket* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %28
  br label %51

48:                                               ; preds = %19
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %50 = call i32 @socket_shutdown(%struct.pcmcia_socket* %49)
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* @SOCKET_SUSPEND, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @socket_insert(%struct.pcmcia_socket*) #1

declare dso_local i64 @verify_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @socket_remove_drivers(%struct.pcmcia_socket*) #1

declare dso_local i32 @destroy_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @send_event(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i32 @socket_shutdown(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
