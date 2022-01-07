; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_altstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_altstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @ata_sff_altstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sff_altstatus(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.ata_port*)**
  %9 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %8, align 8
  %10 = icmp ne i32 (%struct.ata_port*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.ata_port*)**
  %17 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %16, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = call i32 %17(%struct.ata_port* %18)
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ioread8(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
