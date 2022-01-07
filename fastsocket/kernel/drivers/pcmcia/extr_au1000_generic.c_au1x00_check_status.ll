; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1000_pcmcia_socket = type { i32, i32, %struct.TYPE_2__ }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1000_pcmcia_socket*)* @au1x00_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1x00_check_status(%struct.au1000_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.au1000_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.au1000_pcmcia_socket* %0, %struct.au1000_pcmcia_socket** %2, align 8
  %6 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %70, %1
  %8 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %9 = call i32 @au1x00_pcmcia_skt_state(%struct.au1000_pcmcia_socket* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @status_lock, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  %17 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %16, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %24 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @status_lock, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SS_DETECT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SS_READY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SS_BATDEAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SS_BATWARN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SS_STSCHG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %36, i8* %42, i8* %48, i8* %54, i8* %60)
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %7
  %65 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %66 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %65, i32 0, i32 1
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @pcmcia_parse_events(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %7
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %7, label %73

73:                                               ; preds = %70
  ret void
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @au1x00_pcmcia_skt_state(%struct.au1000_pcmcia_socket*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
