; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_serverworks.c_serverworks_csb_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_serverworks.c_serverworks_csb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@csb_bad_ata100 = common dso_local global i8** null, align 8
@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @serverworks_csb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serverworks_csb_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATA_DEV_ATA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @ata_bmdma_mode_filter(%struct.ata_device* %22, i64 %23)
  store i64 %24, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATA_ID_PROD, align 4
  %30 = trunc i64 %13 to i32
  %31 = call i32 @ata_id_c_string(i32 %28, i8* %15, i32 %29, i32 %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %51, %25
  %33 = load i8**, i8*** @csb_bad_ata100, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcmp(i8* %40, i8* %15)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %45 = shl i32 224, %44
  %46 = xor i32 %45, -1
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %43, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @ata_bmdma_mode_filter(%struct.ata_device* %55, i64 %56)
  store i64 %57, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %21
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ata_bmdma_mode_filter(%struct.ata_device*, i64) #2

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
