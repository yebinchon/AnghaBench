; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.ata_link* }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_DEV_PMP = common dso_local global i32 0, align 4
@SATA_PMP_GSCR_DWORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"EXIT, rc=0\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"PMP revalidation failed (errno=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"EXIT, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @sata_pmp_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_revalidate(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 1
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  store %struct.ata_link* %12, %struct.ata_link** %6, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %7, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %23 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %24 = call i32 @ata_eh_about_to_do(%struct.ata_link* %22, i32* null, i32 %23)
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = call i32 @ata_dev_enabled(%struct.ata_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %77

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @ata_class_enabled(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ATA_DEV_PMP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %77

42:                                               ; preds = %35, %31
  %43 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sata_pmp_read_gscr(%struct.ata_device* %43, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %77

49:                                               ; preds = %42
  %50 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @sata_pmp_same_pmp(%struct.ata_device* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %77

57:                                               ; preds = %49
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @SATA_PMP_GSCR_DWORDS, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32 %60, i32* %61, i32 %65)
  %67 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %68 = call i32 @sata_pmp_configure(%struct.ata_device* %67, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %77

72:                                               ; preds = %57
  %73 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %74 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %75 = call i32 @ata_eh_done(%struct.ata_link* %73, i32* null, i32 %74)
  %76 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

77:                                               ; preds = %71, %54, %48, %39, %28
  %78 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ata_dev_printk(%struct.ata_device* %78, i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %72
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ata_eh_about_to_do(%struct.ata_link*, i32*, i32) #1

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_class_enabled(i32) #1

declare dso_local i32 @sata_pmp_read_gscr(%struct.ata_device*, i32*) #1

declare dso_local i32 @sata_pmp_same_pmp(%struct.ata_device*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sata_pmp_configure(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_eh_done(%struct.ata_link*, i32*, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
