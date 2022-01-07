; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_dev_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_dev_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.ata_port*, i32)* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ata_dev_select: ENTER, device %u, wait %u\0A\00", align 1
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dev_select(%struct.ata_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %10 = call i64 @ata_msg_probe(%struct.ata_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ata_port_printk(%struct.ata_port* %13, i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %23 = call i32 @ata_wait_idle(%struct.ata_port* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %28, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %29(%struct.ata_port* %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %52 = call i32 @ata_msleep(%struct.ata_port* %51, i32 150)
  br label %53

53:                                               ; preds = %50, %38, %35
  %54 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %55 = call i32 @ata_wait_idle(%struct.ata_port* %54)
  br label %56

56:                                               ; preds = %53, %24
  ret void
}

declare dso_local i64 @ata_msg_probe(%struct.ata_port*) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i32, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
