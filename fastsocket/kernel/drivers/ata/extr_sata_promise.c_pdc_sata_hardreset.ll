; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_sata_hardreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_sata_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PDC_FLAG_GEN_II = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @pdc_sata_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_sata_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PDC_FLAG_GEN_II, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @pdc_not_at_command_packet_phase(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @pdc_hard_reset_port(%struct.TYPE_4__* %23)
  %25 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %26 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @pdc_reset_port(%struct.TYPE_4__* %27)
  %29 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @sata_std_hardreset(%struct.ata_link* %29, i32* %30, i64 %31)
  ret i32 %32
}

declare dso_local i32 @pdc_not_at_command_packet_phase(%struct.TYPE_4__*) #1

declare dso_local i32 @pdc_hard_reset_port(%struct.TYPE_4__*) #1

declare dso_local i32 @pdc_reset_port(%struct.TYPE_4__*) #1

declare dso_local i32 @sata_std_hardreset(%struct.ata_link*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
