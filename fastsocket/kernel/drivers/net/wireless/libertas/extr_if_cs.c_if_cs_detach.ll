; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.if_cs_card* }
%struct.if_cs_card = type { i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @if_cs_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.if_cs_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.if_cs_card*, %struct.if_cs_card** %5, align 8
  store %struct.if_cs_card* %6, %struct.if_cs_card** %3, align 8
  %7 = load i32, i32* @LBS_DEB_CS, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %10 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lbs_stop_card(i32 %11)
  %13 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %14 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lbs_remove_card(i32 %15)
  %17 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %18 = call i32 @if_cs_disable_ints(%struct.if_cs_card* %17)
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = call i32 @if_cs_release(%struct.pcmcia_device* %19)
  %21 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %22 = call i32 @kfree(%struct.if_cs_card* %21)
  %23 = load i32, i32* @LBS_DEB_CS, align 4
  %24 = call i32 @lbs_deb_leave(i32 %23)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_stop_card(i32) #1

declare dso_local i32 @lbs_remove_card(i32) #1

declare dso_local i32 @if_cs_disable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_release(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.if_cs_card*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
