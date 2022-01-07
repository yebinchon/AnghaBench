; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"entering PCMCIA monitoring thread\0A\00", align 1
@status_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"events: %s%s%s%s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SS_DETECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"DETECT \00", align 1
@SS_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"READY \00", align 1
@SS_BATDEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"BATDEAD \00", align 1
@SS_BATWARN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"BATWARN \00", align 1
@SS_STSCHG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"STSCHG \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*)* @soc_common_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_common_check_status(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %7 = call i32 (%struct.soc_pcmcia_socket*, i32, i8*, ...) @debug(%struct.soc_pcmcia_socket* %6, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %72, %1
  %9 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %10 = call i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @status_lock, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %13, %16
  %18 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %19 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %17, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @status_lock, i64 %26)
  %28 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SS_DETECT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SS_READY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SS_BATDEAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SS_BATWARN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SS_STSCHG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i32 (%struct.soc_pcmcia_socket*, i32, i8*, ...) @debug(%struct.soc_pcmcia_socket* %28, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %38, i8* %44, i8* %50, i8* %56, i8* %62)
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %8
  %67 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %68 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %67, i32 0, i32 1
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pcmcia_parse_events(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %8
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %8, label %75

75:                                               ; preds = %72
  ret void
}

declare dso_local i32 @debug(%struct.soc_pcmcia_socket*, i32, i8*, ...) #1

declare dso_local i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
