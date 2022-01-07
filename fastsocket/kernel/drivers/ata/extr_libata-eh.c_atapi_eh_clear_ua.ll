; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_atapi_eh_clear_ua.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_atapi_eh_clear_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@ATA_EH_UA_TRIES = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TEST_UNIT_READY failed (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to clear UNIT ATTENTION (err_mask=0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"UNIT ATTENTION persists after %d tries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @atapi_eh_clear_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atapi_eh_clear_ua(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %58, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ATA_EH_UA_TRIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = call i32 @atapi_eh_tur(%struct.ata_device* %20, i64* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AC_ERR_DEV, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %30 = load i32, i32* @KERN_WARNING, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ata_dev_printk(%struct.ata_device* %29, i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %66

35:                                               ; preds = %24, %12
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @UNIT_ATTENTION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %35
  store i32 0, i32* %2, align 4
  br label %66

43:                                               ; preds = %38
  %44 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @atapi_eh_request_sense(%struct.ata_device* %44, i64* %45, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %52 = load i32, i32* @KERN_WARNING, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ata_dev_printk(%struct.ata_device* %51, i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %66

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %63 = load i32, i32* @KERN_WARNING, align 4
  %64 = load i32, i32* @ATA_EH_UA_TRIES, align 4
  %65 = call i32 @ata_dev_printk(%struct.ata_device* %62, i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %50, %42, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @atapi_eh_tur(%struct.ata_device*, i64*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

declare dso_local i32 @atapi_eh_request_sense(%struct.ata_device*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
