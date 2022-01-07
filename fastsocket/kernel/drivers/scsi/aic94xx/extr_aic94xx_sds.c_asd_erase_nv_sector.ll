; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_erase_nv_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_erase_nv_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FLASH_SECTOR_SIZE_MASK = common dso_local global i32 0, align 4
@FAIL_ERASE_FLASH = common dso_local global i32 0, align 4
@FLASH_SECTOR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_erase_nv_sector(%struct.asd_ha_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %11 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FLASH_SECTOR_SIZE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %90, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %18
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %82 [
    i32 129, label %30
    i32 128, label %56
  ]

30:                                               ; preds = %24
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 2730
  %34 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %31, i32 %33, i32 170)
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1365
  %38 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %35, i32 %37, i32 85)
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 2730
  %42 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %39, i32 %41, i32 128)
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 2730
  %46 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %43, i32 %45, i32 170)
  %47 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1365
  %50 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %47, i32 %49, i32 85)
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %51, i32 %54, i32 48)
  br label %83

56:                                               ; preds = %24
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1365
  %60 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %57, i32 %59, i32 170)
  %61 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 682
  %64 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %61, i32 %63, i32 85)
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1365
  %68 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %65, i32 %67, i32 128)
  %69 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1365
  %72 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %69, i32 %71, i32 170)
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 682
  %76 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %73, i32 %75, i32 85)
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %77, i32 %80, i32 48)
  br label %83

82:                                               ; preds = %24
  br label %83

83:                                               ; preds = %82, %56, %30
  %84 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @asd_chk_write_status(%struct.asd_ha_struct* %84, i32 %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @FAIL_ERASE_FLASH, align 4
  store i32 %89, i32* %4, align 4
  br label %97

90:                                               ; preds = %83
  %91 = load i64, i64* @FLASH_SECTOR_SIZE, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  br label %18

96:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i64 @asd_chk_write_status(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
