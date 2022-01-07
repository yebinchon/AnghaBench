; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_hpa_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_hpa_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_EHI_PRINTINFO = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_HORKAGE_BROKEN_HPA = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ata_ignore_hpa = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"HPA support seems broken, skipping HPA handling\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"HPA detected: current %llu, native %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"native sectors (%llu) is smaller than sectors (%llu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"device aborted resize (%llu -> %llu), skipping HPA handling\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"failed to re-read IDENTIFY data after HPA resizing\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"HPA unlocked: %llu -> %llu, native %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_hpa_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_hpa_resize(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ata_eh_context* %13, %struct.ata_eh_context** %4, align 8
  %14 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %15 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATA_EHI_PRINTINFO, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ata_id_n_sectors(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATA_DEV_ATA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %48, label %29

29:                                               ; preds = %1
  %30 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ata_id_has_lba(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ata_id_hpa_enabled(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %35, %29, %1
  store i32 0, i32* %2, align 4
  br label %169

49:                                               ; preds = %41
  %50 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %51 = call i32 @ata_read_native_max_address(%struct.ata_device* %50, i64* %7)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ata_ignore_hpa, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %64 = load i32, i32* @KERN_WARNING, align 4
  %65 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %63, i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %67 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @EACCES, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %169

79:                                               ; preds = %49
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %82 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ata_ignore_hpa, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %89
  store i32 0, i32* %2, align 4
  br label %169

97:                                               ; preds = %92
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %103 = load i32, i32* @KERN_INFO, align 4
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %102, i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %105)
  br label %118

107:                                              ; preds = %97
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %113 = load i32, i32* @KERN_WARNING, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %112, i32 %113, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %111, %107
  br label %118

118:                                              ; preds = %117, %101
  store i32 0, i32* %2, align 4
  br label %169

119:                                              ; preds = %86
  %120 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @ata_set_max_sectors(%struct.ata_device* %120, i64 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @EACCES, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %129 = load i32, i32* @KERN_WARNING, align 4
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %128, i32 %129, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %130, i64 %131)
  %133 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %134 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %135 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  store i32 0, i32* %2, align 4
  br label %169

138:                                              ; preds = %119
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %169

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %146 = call i32 @ata_dev_reread_id(%struct.ata_device* %145, i32 0)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %151 = load i32, i32* @KERN_ERR, align 4
  %152 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %150, i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %169

154:                                              ; preds = %144
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %159 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @ata_id_n_sectors(i32 %160)
  store i64 %161, i64* %9, align 8
  %162 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %163 = load i32, i32* @KERN_INFO, align 4
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %162, i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %164, i64 %165, i64 %166)
  br label %168

168:                                              ; preds = %157, %154
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %149, %141, %127, %118, %96, %77, %48
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i64 @ata_id_n_sectors(i32) #1

declare dso_local i32 @ata_id_has_lba(i32) #1

declare dso_local i32 @ata_id_hpa_enabled(i32) #1

declare dso_local i32 @ata_read_native_max_address(%struct.ata_device*, i64*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

declare dso_local i32 @ata_set_max_sectors(%struct.ata_device*, i64) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
