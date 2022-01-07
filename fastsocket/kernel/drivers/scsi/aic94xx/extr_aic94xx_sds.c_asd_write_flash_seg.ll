; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_write_flash_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_write_flash_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"couldn't find the type of flash. err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Erase failed at offset:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"couldn't reset flash. err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"aicx: Write failed at offset:0x%x\0A\00", align 1
@FAIL_WRITE_FLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_write_flash_seg(%struct.asd_ha_struct* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %16 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  store i32* null, i32** %10, align 8
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %21 = call i32 @asd_check_flash_type(%struct.asd_ha_struct* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %142

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @asd_erase_nv_sector(%struct.asd_ha_struct* %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %142

40:                                               ; preds = %28
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %42 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %142

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %129, %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %52
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %58 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %112 [
    i32 129, label %62
    i32 128, label %87
  ]

62:                                               ; preds = %56
  %63 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 2730
  %66 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %63, i32 %65, i32 170)
  %67 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1365
  %70 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %67, i32 %69, i32 85)
  %71 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 2730
  %74 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %71, i32 %73, i32 160)
  %75 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %75, i32 %80, i32 %85)
  br label %113

87:                                               ; preds = %56
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1365
  %91 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %88, i32 %90, i32 170)
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 682
  %95 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %92, i32 %94, i32 85)
  %96 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1365
  %99 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %96, i32 %98, i32 160)
  %100 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %100, i32 %105, i32 %110)
  br label %113

112:                                              ; preds = %56
  br label %113

113:                                              ; preds = %112, %87, %62
  %114 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i64 @asd_chk_write_status(%struct.asd_ha_struct* %114, i32 %117, i32 0)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @FAIL_WRITE_FLASH, align 4
  store i32 %127, i32* %5, align 4
  br label %142

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %52

132:                                              ; preds = %52
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %134 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %142

141:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %137, %120, %45, %36, %24
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @asd_check_flash_type(%struct.asd_ha_struct*) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @asd_erase_nv_sector(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_reset_flash(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i64 @asd_chk_write_status(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
