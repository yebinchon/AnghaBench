; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__, %struct.if_cs_card* }
%struct.TYPE_2__ = type { i32 }
%struct.if_cs_card = type { i64 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @if_cs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.if_cs_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.if_cs_card*, %struct.if_cs_card** %5, align 8
  store %struct.if_cs_card* %6, %struct.if_cs_card** %3, align 8
  %7 = load i32, i32* @LBS_DEB_CS, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.if_cs_card* %13)
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %16 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %15)
  %17 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %18 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %23 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ioport_unmap(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* @LBS_DEB_CS, align 4
  %28 = call i32 @lbs_deb_leave(i32 %27)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @free_irq(i32, %struct.if_cs_card*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @ioport_unmap(i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
