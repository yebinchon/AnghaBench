; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_same_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_same_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32* }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_SERNO_LEN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"class mismatch %d != %d\0A\00", align 1
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_SERNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"model number mismatch '%s' != '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"serial number mismatch '%s' != '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32, i32*)* @ata_dev_same_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_same_device(%struct.ata_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = mul nuw i64 2, %18
  %21 = alloca i8, i64 %20, align 16
  store i64 %18, i64* %10, align 8
  %22 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 2, %24
  %26 = alloca i8, i64 %25, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

40:                                               ; preds = %3
  %41 = load i32*, i32** %8, align 8
  %42 = mul nsw i64 0, %18
  %43 = getelementptr inbounds i8, i8* %21, i64 %42
  %44 = load i32, i32* @ATA_ID_PROD, align 4
  %45 = mul nsw i64 0, %18
  %46 = getelementptr inbounds i8, i8* %21, i64 %45
  %47 = trunc i64 %18 to i32
  %48 = call i32 @ata_id_c_string(i32* %41, i8* %43, i32 %44, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = mul nsw i64 1, %18
  %51 = getelementptr inbounds i8, i8* %21, i64 %50
  %52 = load i32, i32* @ATA_ID_PROD, align 4
  %53 = mul nsw i64 1, %18
  %54 = getelementptr inbounds i8, i8* %21, i64 %53
  %55 = trunc i64 %18 to i32
  %56 = call i32 @ata_id_c_string(i32* %49, i8* %51, i32 %52, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = mul nsw i64 0, %24
  %59 = getelementptr inbounds i8, i8* %26, i64 %58
  %60 = load i32, i32* @ATA_ID_SERNO, align 4
  %61 = mul nsw i64 0, %24
  %62 = getelementptr inbounds i8, i8* %26, i64 %61
  %63 = trunc i64 %24 to i32
  %64 = call i32 @ata_id_c_string(i32* %57, i8* %59, i32 %60, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = mul nsw i64 1, %24
  %67 = getelementptr inbounds i8, i8* %26, i64 %66
  %68 = load i32, i32* @ATA_ID_SERNO, align 4
  %69 = mul nsw i64 1, %24
  %70 = getelementptr inbounds i8, i8* %26, i64 %69
  %71 = trunc i64 %24 to i32
  %72 = call i32 @ata_id_c_string(i32* %65, i8* %67, i32 %68, i32 %71)
  %73 = mul nsw i64 0, %18
  %74 = getelementptr inbounds i8, i8* %21, i64 %73
  %75 = mul nsw i64 1, %18
  %76 = getelementptr inbounds i8, i8* %21, i64 %75
  %77 = call i64 @strcmp(i8* %74, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %40
  %80 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = mul nsw i64 0, %18
  %83 = getelementptr inbounds i8, i8* %21, i64 %82
  %84 = mul nsw i64 1, %18
  %85 = getelementptr inbounds i8, i8* %21, i64 %84
  %86 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %80, i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %85)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

87:                                               ; preds = %40
  %88 = mul nsw i64 0, %24
  %89 = getelementptr inbounds i8, i8* %26, i64 %88
  %90 = mul nsw i64 1, %24
  %91 = getelementptr inbounds i8, i8* %26, i64 %90
  %92 = call i64 @strcmp(i8* %89, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %96 = load i32, i32* @KERN_INFO, align 4
  %97 = mul nsw i64 0, %24
  %98 = getelementptr inbounds i8, i8* %26, i64 %97
  %99 = mul nsw i64 1, %24
  %100 = getelementptr inbounds i8, i8* %26, i64 %99
  %101 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %95, i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %100)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

102:                                              ; preds = %87
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %94, %79, %32
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #2

declare dso_local i32 @ata_id_c_string(i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
