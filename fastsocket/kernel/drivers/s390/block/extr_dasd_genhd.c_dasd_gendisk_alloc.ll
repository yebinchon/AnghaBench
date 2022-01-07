; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_genhd.c_dasd_gendisk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_genhd.c_dasd_gendisk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.gendisk*, i32, %struct.dasd_device* }
%struct.gendisk = type { i32, i32, i64, i32*, i32*, i32 }
%struct.dasd_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_PER_MAJOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DASD_PARTN_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DASD_MAJOR = common dso_local global i32 0, align 4
@dasd_device_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dasd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_gendisk_alloc(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 2
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DASD_PER_MAJOR, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %165

18:                                               ; preds = %1
  %19 = load i32, i32* @DASD_PARTN_BITS, align 4
  %20 = shl i32 1, %19
  %21 = call %struct.gendisk* @alloc_disk(i32 %20)
  store %struct.gendisk* %21, %struct.gendisk** %4, align 8
  %22 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %23 = icmp ne %struct.gendisk* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %165

27:                                               ; preds = %18
  %28 = load i32, i32* @DASD_MAJOR, align 4
  %29 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %30 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DASD_PARTN_BITS, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 4
  store i32* @dasd_device_operations, i32** %39, align 8
  %40 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %47 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i64, i8*, ...) @sprintf(i64 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %6, align 4
  %50 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %51 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 25
  br i1 %53, label %54, label %115

54:                                               ; preds = %27
  %55 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 701
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 18277
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %66 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %72 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 18278
  %75 = sdiv i32 %74, 17576
  %76 = srem i32 %75, 26
  %77 = add nsw i32 97, %76
  %78 = call i32 (i64, i8*, ...) @sprintf(i64 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %64, %59
  %82 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %83 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 702
  %92 = sdiv i32 %91, 676
  %93 = srem i32 %92, 26
  %94 = add nsw i32 97, %93
  %95 = call i32 (i64, i8*, ...) @sprintf(i64 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %81, %54
  %99 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %100 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %106 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 26
  %109 = sdiv i32 %108, 26
  %110 = srem i32 %109, 26
  %111 = add nsw i32 97, %110
  %112 = call i32 (i64, i8*, ...) @sprintf(i64 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %98, %27
  %116 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %117 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %123 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %124, 26
  %126 = add nsw i32 97, %125
  %127 = call i32 (i64, i8*, ...) @sprintf(i64 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %131 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %138 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %139 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %138, i32 0, i32 2
  %140 = call i64 @test_bit(i32 %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136, %115
  %143 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %144 = call i32 @set_disk_ro(%struct.gendisk* %143, i32 1)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %147 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %148 = call i32 @dasd_add_link_to_gendisk(%struct.gendisk* %146, %struct.dasd_device* %147)
  %149 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %150 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %153 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %155 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %156 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %155, i32 0, i32 0
  store %struct.gendisk* %154, %struct.gendisk** %156, align 8
  %157 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %158 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %157, i32 0, i32 0
  %159 = load %struct.gendisk*, %struct.gendisk** %158, align 8
  %160 = call i32 @set_capacity(%struct.gendisk* %159, i32 0)
  %161 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %162 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %161, i32 0, i32 0
  %163 = load %struct.gendisk*, %struct.gendisk** %162, align 8
  %164 = call i32 @add_disk(%struct.gendisk* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %145, %24, %15
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @sprintf(i64, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_disk_ro(%struct.gendisk*, i32) #1

declare dso_local i32 @dasd_add_link_to_gendisk(%struct.gendisk*, %struct.dasd_device*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
