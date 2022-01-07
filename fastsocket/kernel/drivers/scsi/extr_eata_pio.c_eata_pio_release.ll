; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@reg_IRQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @eata_pio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata_pio_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %4)
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32*, i32** @reg_IRQ, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @free_irq(i64 %21, i32* null)
  br label %31

23:                                               ; preds = %10, %1
  %24 = load i32*, i32** @reg_IRQ, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %33 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @release_region(i64 %50, i64 %53)
  br label %55

55:                                               ; preds = %47, %42, %37
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pci_dev_put(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  ret i32 1
}

declare dso_local %struct.TYPE_3__* @SD(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i64, i32*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
