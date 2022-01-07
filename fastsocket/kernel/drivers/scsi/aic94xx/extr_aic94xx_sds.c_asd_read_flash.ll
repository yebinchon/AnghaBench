; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_flash_dir = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't find flash directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unsupported flash dir version:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"couldn't process manuf sector settings\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't process CTRL-A user settings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_read_flash(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_flash_dir*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = call i32 @asd_flash_getid(%struct.asd_ha_struct* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.asd_flash_dir* @kmalloc(i32 4, i32 %13)
  store %struct.asd_flash_dir* %14, %struct.asd_flash_dir** %5, align 8
  %15 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %16 = icmp ne %struct.asd_flash_dir* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %24 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %25 = call i32 @asd_find_flash_dir(%struct.asd_ha_struct* %23, %struct.asd_flash_dir* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %31 = getelementptr inbounds %struct.asd_flash_dir, %struct.asd_flash_dir* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %37 = getelementptr inbounds %struct.asd_flash_dir, %struct.asd_flash_dir* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i32 @asd_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %58

41:                                               ; preds = %29
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %43 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %44 = call i32 @asd_process_ms(%struct.asd_ha_struct* %42, %struct.asd_flash_dir* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %51 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %52 = call i32 @asd_process_ctrl_a_user(%struct.asd_ha_struct* %50, %struct.asd_flash_dir* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %55, %47, %35, %27
  %59 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %5, align 8
  %60 = call i32 @kfree(%struct.asd_flash_dir* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %17, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @asd_flash_getid(%struct.asd_ha_struct*) #1

declare dso_local %struct.asd_flash_dir* @kmalloc(i32, i32) #1

declare dso_local i32 @asd_find_flash_dir(%struct.asd_ha_struct*, %struct.asd_flash_dir*) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @asd_process_ms(%struct.asd_ha_struct*, %struct.asd_flash_dir*) #1

declare dso_local i32 @asd_process_ctrl_a_user(%struct.asd_ha_struct*, %struct.asd_flash_dir*) #1

declare dso_local i32 @kfree(%struct.asd_flash_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
