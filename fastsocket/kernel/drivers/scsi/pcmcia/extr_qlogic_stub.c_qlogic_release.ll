; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"qlogic_release(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @qlogic_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlogic_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scsi_remove_host(i32 %11)
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free_irq(i32 %16, i32 %19)
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %22 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_host_put(i32 %25)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
