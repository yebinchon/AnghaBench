; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_device = type { %struct.TYPE_2__, i32, %struct.i2o_controller* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2o_controller = type { i64, i64 }
%struct.i2o_block_device = type { i32, %struct.gendisk*, %struct.i2o_device* }
%struct.gendisk = type { i32, i32, %struct.request_queue*, i32* }
%struct.request_queue = type { i32, i32, i32, %struct.i2o_block_device* }

@i2o_block_probe.unit = internal global i32 0, align 4
@I2O_MAX_SECTORS_LIMITED = common dso_local global i16 0, align 2
@I2O_MAX_SECTORS = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [27 x i8] c"skipping used device %03x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to claim device. Installation aborted\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"could not alloc a new I2O block device\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"i2o/hd%c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"max sectors = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"phys segments = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"max hw segments = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to get blocksize of %s\0A\00", align 1
@KERNEL_SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"could not get size of %s\0A\00", align 1
@i2o_block_driver = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"device added (TID: %03x): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2o_block_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca %struct.i2o_block_device*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %3, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.i2o_device* @to_i2o_device(%struct.device* %15)
  store %struct.i2o_device* %16, %struct.i2o_device** %4, align 8
  %17 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %18 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %17, i32 0, i32 2
  %19 = load %struct.i2o_controller*, %struct.i2o_controller** %18, align 8
  store %struct.i2o_controller* %19, %struct.i2o_controller** %5, align 8
  store i32 4, i32* %12, align 4
  %20 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %21 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i16, i16* @I2O_MAX_SECTORS_LIMITED, align 2
  store i16 %25, i16* %14, align 2
  br label %28

26:                                               ; preds = %1
  %27 = load i16, i16* @I2O_MAX_SECTORS, align 2
  store i16 %27, i16* %14, align 2
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %30 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 4095
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %36 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @osm_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %177

42:                                               ; preds = %28
  %43 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %44 = call i64 @i2o_device_claim(%struct.i2o_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @osm_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %175

50:                                               ; preds = %42
  %51 = call %struct.i2o_block_device* (...) @i2o_block_device_alloc()
  store %struct.i2o_block_device* %51, %struct.i2o_block_device** %6, align 8
  %52 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %53 = call i64 @IS_ERR(%struct.i2o_block_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 @osm_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.i2o_block_device* %57)
  store i32 %58, i32* %9, align 4
  br label %172

59:                                               ; preds = %50
  %60 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %61 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %62 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %61, i32 0, i32 2
  store %struct.i2o_device* %60, %struct.i2o_device** %62, align 8
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %65 = call i32 @dev_set_drvdata(%struct.device* %63, %struct.i2o_block_device* %64)
  %66 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %67 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %66, i32 0, i32 1
  %68 = load %struct.gendisk*, %struct.gendisk** %67, align 8
  store %struct.gendisk* %68, %struct.gendisk** %7, align 8
  %69 = load i32, i32* @i2o_block_probe.unit, align 4
  %70 = shl i32 %69, 4
  %71 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %72 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %74 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @i2o_block_probe.unit, align 4
  %77 = add nsw i32 97, %76
  %78 = trunc i32 %77 to i8
  %79 = call i32 @sprintf(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8 signext %78)
  %80 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %81 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %80, i32 0, i32 1
  %82 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %83 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %85 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %84, i32 0, i32 2
  %86 = load %struct.request_queue*, %struct.request_queue** %85, align 8
  store %struct.request_queue* %86, %struct.request_queue** %8, align 8
  %87 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %88 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %89 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %88, i32 0, i32 3
  store %struct.i2o_block_device* %87, %struct.i2o_block_device** %89, align 8
  %90 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %91 = load i16, i16* %14, align 2
  %92 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %90, i16 zeroext %91)
  %93 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %94 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @i2o_sg_tablesize(%struct.i2o_controller* %94, i32 %95)
  %97 = call i32 @blk_queue_max_segments(%struct.request_queue* %93, i32 %96)
  %98 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %99 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @osm_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %103 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @osm_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %107 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @osm_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %111 = call i32 @i2o_parm_field_get(%struct.i2o_device* %110, i32 4, i32 1, i32* %11, i32 4)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %59
  %114 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %115 = call i32 @i2o_parm_field_get(%struct.i2o_device* %114, i32 0, i32 3, i32* %11, i32 4)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %59
  %118 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  %121 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %118, i32 %120)
  br label %127

122:                                              ; preds = %113
  %123 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %124 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @osm_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %129 = call i32 @i2o_parm_field_get(%struct.i2o_device* %128, i32 4, i32 0, i32* %10, i32 8)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %133 = call i32 @i2o_parm_field_get(%struct.i2o_device* %132, i32 0, i32 4, i32* %10, i32 8)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @le64_to_cpu(i32 %137)
  %139 = load i32, i32* @KERNEL_SECTOR_SHIFT, align 4
  %140 = ashr i32 %138, %139
  %141 = call i32 @set_capacity(%struct.gendisk* %136, i32 %140)
  br label %147

142:                                              ; preds = %131
  %143 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %144 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @osm_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %142, %135
  %148 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %149 = call i32 @i2o_parm_field_get(%struct.i2o_device* %148, i32 0, i32 2, i32* %13, i32 2)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %154 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  %156 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %157 = call i32 @i2o_event_register(%struct.i2o_device* %156, i32* @i2o_block_driver, i32 0, i32 -1)
  %158 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %159 = call i32 @add_disk(%struct.gendisk* %158)
  %160 = load i32, i32* @i2o_block_probe.unit, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @i2o_block_probe.unit, align 4
  %162 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %163 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %167 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %166, i32 0, i32 1
  %168 = load %struct.gendisk*, %struct.gendisk** %167, align 8
  %169 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @osm_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %165, i32 %170)
  store i32 0, i32* %2, align 4
  br label %177

172:                                              ; preds = %55
  %173 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %174 = call i32 @i2o_device_claim_release(%struct.i2o_device* %173)
  br label %175

175:                                              ; preds = %172, %46
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %155, %34
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.i2o_device* @to_i2o_device(%struct.device*) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i64 @i2o_device_claim(%struct.i2o_device*) #1

declare dso_local i32 @osm_warn(i8*, ...) #1

declare dso_local %struct.i2o_block_device* @i2o_block_device_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.i2o_block_device*) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_block_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.i2o_block_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i8 signext) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i16 zeroext) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @i2o_sg_tablesize(%struct.i2o_controller*, i32) #1

declare dso_local i32 @i2o_parm_field_get(%struct.i2o_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @i2o_event_register(%struct.i2o_device*, i32*, i32, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @osm_info(i8*, i32, i32) #1

declare dso_local i32 @i2o_device_claim_release(%struct.i2o_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
