; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pcmcia.c_pcmcia_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pcmcia.c_pcmcia_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.ata_pcmcia_info*, %struct.device }
%struct.ata_pcmcia_info = type { i64 }
%struct.device = type { i32 }
%struct.ata_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @pcmcia_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_remove_one(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.ata_pcmcia_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ata_host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 0
  %8 = load %struct.ata_pcmcia_info*, %struct.ata_pcmcia_info** %7, align 8
  store %struct.ata_pcmcia_info* %8, %struct.ata_pcmcia_info** %3, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.ata_pcmcia_info*, %struct.ata_pcmcia_info** %3, align 8
  %12 = icmp ne %struct.ata_pcmcia_info* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.ata_pcmcia_info*, %struct.ata_pcmcia_info** %3, align 8
  %15 = getelementptr inbounds %struct.ata_pcmcia_info, %struct.ata_pcmcia_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.ata_host* @dev_get_drvdata(%struct.device* %19)
  store %struct.ata_host* %20, %struct.ata_host** %5, align 8
  %21 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %22 = call i32 @ata_host_detach(%struct.ata_host* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.ata_pcmcia_info*, %struct.ata_pcmcia_info** %3, align 8
  %25 = getelementptr inbounds %struct.ata_pcmcia_info, %struct.ata_pcmcia_info* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  store %struct.ata_pcmcia_info* null, %struct.ata_pcmcia_info** %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %30 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %29)
  %31 = load %struct.ata_pcmcia_info*, %struct.ata_pcmcia_info** %3, align 8
  %32 = call i32 @kfree(%struct.ata_pcmcia_info* %31)
  ret void
}

declare dso_local %struct.ata_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.ata_pcmcia_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
