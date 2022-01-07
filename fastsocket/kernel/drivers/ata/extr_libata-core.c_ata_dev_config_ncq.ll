; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_config_ncq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_config_ncq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_HORKAGE_NONCQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"NCQ (not used)\00", align 1
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i64 0, align 8
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_HORKAGE_BROKEN_FPDMA_AA = common dso_local global i32 0, align 4
@ATA_FLAG_FPDMA_AA = common dso_local global i32 0, align 4
@SETFEATURES_SATA_ENABLE = common dso_local global i32 0, align 4
@SATA_FPDMA_AA = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to enable AA(error_mask=0x%x)\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c", AA\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"NCQ (depth %d)%s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"NCQ (depth %d/%d)%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i64)* @ata_dev_config_ncq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_config_ncq(%struct.ata_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ata_id_queue_depth(i32 %20)
  store i32 %21, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ata_id_has_ncq(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  store i32 0, i32* %4, align 4
  br label %126

30:                                               ; preds = %3
  %31 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATA_HORKAGE_NONCQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %126

41:                                               ; preds = %30
  %42 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @ATA_MAX_QUEUE, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @min(i32 %53, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %58 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %48, %41
  %63 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %64 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ATA_HORKAGE_BROKEN_FPDMA_AA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %108, label %69

69:                                               ; preds = %62
  %70 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ATA_FLAG_FPDMA_AA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %69
  %77 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %78 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ata_id_has_fpdma_aa(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %76
  %83 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %84 = load i32, i32* @SETFEATURES_SATA_ENABLE, align 4
  %85 = load i32, i32* @SATA_FPDMA_AA, align 4
  %86 = call i32 @ata_dev_set_feature(%struct.ata_device* %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @ata_dev_printk(%struct.ata_device* %90, i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @AC_ERR_DEV, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i32, i32* @ATA_HORKAGE_BROKEN_FPDMA_AA, align 4
  %99 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %126

105:                                              ; preds = %89
  br label %107

106:                                              ; preds = %82
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %76, %69, %62
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %113, i64 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %115, i8* %116)
  br label %125

118:                                              ; preds = %108
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %119, i64 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %118, %112
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %97, %37, %27
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @ata_id_queue_depth(i32) #1

declare dso_local i32 @ata_id_has_ncq(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @ata_id_has_fpdma_aa(i32) #1

declare dso_local i32 @ata_dev_set_feature(%struct.ata_device*, i32, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
