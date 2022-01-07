; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_handle_link_fail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_handle_link_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i64, i32, %struct.TYPE_4__, i32, %struct.ata_port* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ata_port = type { i32 }

@ATA_LFLAG_DISABLED = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to recover link after %d tries, disabling\0A\00", align 1
@ATA_EH_PMP_LINK_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*)* @sata_pmp_handle_link_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_handle_link_fail(%struct.ata_link* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 4
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %21 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %64

28:                                               ; preds = %18, %2
  %29 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %30 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATA_LFLAG_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %37 = load i32, i32* @KERN_WARNING, align 4
  %38 = load i32, i32* @ATA_EH_PMP_LINK_TRIES, align 4
  %39 = call i32 @ata_link_printk(%struct.ata_link* %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_lock_irqsave(i32 %42, i64 %43)
  %45 = load i32, i32* @ATA_LFLAG_DISABLED, align 4
  %46 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %47 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %51 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %35, %28
  %56 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %57 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ata_dev_disable(i32 %58)
  %60 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %61 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %55, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_dev_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
