; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_config_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_config_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i64, %struct.scsi_device*, %struct.gendisk* }
%struct.scsi_device = type { i32 }
%struct.gendisk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SD_DIF_TYPE3_PROTECTION = common dso_local global i64 0, align 8
@dif_type3_integrity_ip = common dso_local global i32 0, align 4
@dif_type1_integrity_ip = common dso_local global i32 0, align 4
@dif_type3_integrity_crc = common dso_local global i32 0, align 4
@dif_type1_integrity_crc = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enabling DIX %s protection\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DIF application tag size %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_dif_config_host(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 2
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %11, i32 0, i32 3
  %13 = load %struct.gendisk*, %struct.gendisk** %12, align 8
  store %struct.gendisk* %13, %struct.gendisk** %4, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @scsi_host_dif_capable(i32 %19, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @scsi_host_dix_capable(i32 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scsi_host_dix_capable(i32 %32, i64 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29, %1
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %114

40:                                               ; preds = %36
  %41 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %41, i32 0, i32 2
  %43 = load %struct.scsi_device*, %struct.scsi_device** %42, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_host_get_guard(i32 %45)
  %47 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @SD_DIF_TYPE3_PROTECTION, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %56 = call i32 @blk_integrity_register(%struct.gendisk* %55, i32* @dif_type3_integrity_ip)
  br label %60

57:                                               ; preds = %50
  %58 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %59 = call i32 @blk_integrity_register(%struct.gendisk* %58, i32* @dif_type1_integrity_ip)
  br label %60

60:                                               ; preds = %57, %54
  br label %72

61:                                               ; preds = %40
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @SD_DIF_TYPE3_PROTECTION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %67 = call i32 @blk_integrity_register(%struct.gendisk* %66, i32* @dif_type3_integrity_crc)
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %70 = call i32 @blk_integrity_register(%struct.gendisk* %69, i32* @dif_type1_integrity_crc)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* @KERN_NOTICE, align 4
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %75 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %76 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sd_printk(i32 %73, %struct.scsi_disk* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %72
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %88 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @SD_DIF_TYPE3_PROTECTION, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %97 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 8, i32* %99, align 4
  br label %105

100:                                              ; preds = %91
  %101 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %102 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 4, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @KERN_NOTICE, align 4
  %107 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %108 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %109 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sd_printk(i32 %106, %struct.scsi_disk* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %39, %105, %86, %83, %72
  ret void
}

declare dso_local i32 @scsi_host_dif_capable(i32, i64) #1

declare dso_local i32 @scsi_host_dix_capable(i32, i64) #1

declare dso_local i32 @scsi_host_get_guard(i32) #1

declare dso_local i32 @blk_integrity_register(%struct.gendisk*, i32*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
