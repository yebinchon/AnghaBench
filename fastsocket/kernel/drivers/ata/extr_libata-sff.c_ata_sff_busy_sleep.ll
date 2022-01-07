; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_busy_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_busy_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*)* }

@ATA_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"port is slow to respond, please be patient (Status 0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"port failed to respond (%lu secs, Status 0x%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_busy_sleep(%struct.ata_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %12 = load i32, i32* @ATA_BUSY, align 4
  %13 = call i32 @ata_sff_busy_wait(%struct.ata_port* %11, i32 %12, i32 300)
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @ata_deadline(i64 %15, i64 %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ATA_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21, %18
  %32 = phi i1 [ false, %21 ], [ false, %18 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %35 = call i32 @ata_msleep(%struct.ata_port* %34, i32 50)
  %36 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %37 = load i32, i32* @ATA_BUSY, align 4
  %38 = call i32 @ata_sff_busy_wait(%struct.ata_port* %36, i32 %37, i32 3)
  store i32 %38, i32* %10, align 4
  br label %18

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ATA_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (%struct.ata_port*, i32, i8*, i32, ...) @ata_port_printk(%struct.ata_port* %48, i32 %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %42, %39
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @ata_deadline(i64 %53, i64 %54)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %71, %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ATA_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @time_before(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %59, %56
  %70 = phi i1 [ false, %59 ], [ false, %56 ], [ %68, %64 ]
  br i1 %70, label %71, label %81

71:                                               ; preds = %69
  %72 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %73 = call i32 @ata_msleep(%struct.ata_port* %72, i32 50)
  %74 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %75 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %77, align 8
  %79 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %80 = call i32 %78(%struct.ata_port* %79)
  store i32 %80, i32* %10, align 4
  br label %56

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 255
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %102

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @ATA_BUSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @DIV_ROUND_UP(i64 %95, i32 1000)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (%struct.ata_port*, i32, i8*, i32, ...) @ata_port_printk(%struct.ata_port* %93, i32 %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %92, %84
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ata_sff_busy_wait(%struct.ata_port*, i32, i32) #1

declare dso_local i64 @ata_deadline(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i32, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
