; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_ocm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_ocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_ocm_dir = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no memory for ocm dir\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_read_ocm(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ocm_dir*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = call i64 @asd_hwi_check_ocm_access(%struct.asd_ha_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.asd_ocm_dir* @kmalloc(i32 4, i32 %11)
  store %struct.asd_ocm_dir* %12, %struct.asd_ocm_dir** %5, align 8
  %13 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %5, align 8
  %14 = icmp ne %struct.asd_ocm_dir* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = call i32 @asd_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %21 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %5, align 8
  %22 = call i32 @asd_read_ocm_dir(%struct.asd_ha_struct* %20, %struct.asd_ocm_dir* %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %28 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %5, align 8
  %29 = call i32 @asd_get_bios_chim(%struct.asd_ha_struct* %27, %struct.asd_ocm_dir* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %5, align 8
  %32 = call i32 @kfree(%struct.asd_ocm_dir* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %15, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @asd_hwi_check_ocm_access(%struct.asd_ha_struct*) #1

declare dso_local %struct.asd_ocm_dir* @kmalloc(i32, i32) #1

declare dso_local i32 @asd_printk(i8*) #1

declare dso_local i32 @asd_read_ocm_dir(%struct.asd_ha_struct*, %struct.asd_ocm_dir*, i32) #1

declare dso_local i32 @asd_get_bios_chim(%struct.asd_ha_struct*, %struct.asd_ocm_dir*) #1

declare dso_local i32 @kfree(%struct.asd_ocm_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
