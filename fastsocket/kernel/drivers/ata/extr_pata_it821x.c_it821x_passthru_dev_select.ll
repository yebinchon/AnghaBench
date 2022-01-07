; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_passthru_dev_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_passthru_dev_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__, %struct.it821x_dev* }
%struct.TYPE_2__ = type { %struct.ata_device* }
%struct.ata_device = type { i64 }
%struct.it821x_dev = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @it821x_passthru_dev_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_passthru_dev_select(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.it821x_dev*, align 8
  %6 = alloca %struct.ata_device*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.it821x_dev*, %struct.it821x_dev** %8, align 8
  store %struct.it821x_dev* %9, %struct.it821x_dev** %5, align 8
  %10 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %11 = icmp ne %struct.it821x_dev* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %15 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ata_device*, %struct.ata_device** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i64 %24
  store %struct.ata_device* %25, %struct.ata_device** %6, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %28 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %29 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @it821x_program(%struct.ata_port* %26, %struct.ata_device* %27, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %39 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %18, %12, %2
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ata_sff_dev_select(%struct.ata_port* %41, i32 %42)
  ret void
}

declare dso_local i32 @it821x_program(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @ata_sff_dev_select(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
