; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i32 0, align 4
@ATA_DEV_SEMB = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"class mismatch %u != %u\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"n_sectors mismatch %llu != %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"new n_sectors matches native, probably late HPA unlock, continuing\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"revalidation failed (errno=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_dev_revalidate(%struct.ata_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = call i32 @ata_dev_enabled(%struct.ata_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %126

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ata_class_enabled(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ATA_DEV_ATA, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_DEV_ATAPI, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATA_DEV_SEMB, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %40, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %120

49:                                               ; preds = %35, %31, %27, %23
  %50 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ata_dev_reread_id(%struct.ata_device* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %120

56:                                               ; preds = %49
  %57 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %58 = call i32 @ata_dev_configure(%struct.ata_device* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %120

62:                                               ; preds = %56
  %63 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %64 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ATA_DEV_ATA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %62
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %73 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %71
  %78 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %79 = load i32, i32* @KERN_WARNING, align 4
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %82 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %78, i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %83)
  %85 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %77
  %91 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %92 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %104 = load i32, i32* @KERN_WARNING, align 4
  %105 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %103, i32 %104, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %108 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %118

109:                                              ; preds = %96, %90, %77
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %115 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %120

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %71, %68, %62
  store i32 0, i32* %4, align 4
  br label %126

120:                                              ; preds = %109, %61, %55, %39
  %121 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %122 = load i32, i32* @KERN_ERR, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %121, i32 %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %120, %119, %20
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_class_enabled(i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_configure(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
