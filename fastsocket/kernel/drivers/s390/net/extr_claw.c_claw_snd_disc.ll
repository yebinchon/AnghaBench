; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_snd_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_snd_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.clawctl = type { i32, i32, i32 }
%struct.conncmd = type { i32, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"snd_dsc\00", align 1
@DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.clawctl*)* @claw_snd_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_snd_disc(%struct.net_device* %0, %struct.clawctl* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.clawctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.conncmd*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.clawctl* %1, %struct.clawctl** %4, align 8
  %7 = load i32, i32* @setup, align 4
  %8 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.clawctl*, %struct.clawctl** %4, align 8
  %10 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %9, i32 0, i32 2
  %11 = bitcast i32* %10 to %struct.conncmd*
  store %struct.conncmd* %11, %struct.conncmd** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @DISCONNECT, align 4
  %14 = load %struct.clawctl*, %struct.clawctl** %4, align 8
  %15 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clawctl*, %struct.clawctl** %4, align 8
  %18 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.conncmd*, %struct.conncmd** %6, align 8
  %21 = getelementptr inbounds %struct.conncmd, %struct.conncmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.conncmd*, %struct.conncmd** %6, align 8
  %24 = getelementptr inbounds %struct.conncmd, %struct.conncmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @claw_send_control(%struct.net_device* %12, i32 %13, i32 %16, i32 %19, i32 0, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_send_control(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
