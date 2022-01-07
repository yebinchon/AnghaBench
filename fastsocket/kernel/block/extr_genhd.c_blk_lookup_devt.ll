; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_lookup_devt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_lookup_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_dev_iter = type { i32 }
%struct.device = type { i32 }
%struct.gendisk = type { i32 }
%struct.hd_struct = type { i32 }

@block_class = common dso_local global i32 0, align 4
@disk_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_lookup_devt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.class_dev_iter, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gendisk*, align 8
  %9 = alloca %struct.hd_struct*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 @MKDEV(i32 0, i64 0)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @class_dev_iter_init(%struct.class_dev_iter* %6, i32* @block_class, i32* null, i32* @disk_type)
  br label %12

12:                                               ; preds = %54, %23, %2
  %13 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %6)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %12
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.gendisk* @dev_to_disk(%struct.device* %16)
  store %struct.gendisk* %17, %struct.gendisk** %8, align 8
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call i32 @dev_name(%struct.device* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %12

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %27 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MAJOR(i32 %33)
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @MINOR(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @MKDEV(i32 %34, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %57

43:                                               ; preds = %24
  %44 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.hd_struct* @disk_get_part(%struct.gendisk* %44, i32 %45)
  store %struct.hd_struct* %46, %struct.hd_struct** %9, align 8
  %47 = load %struct.hd_struct*, %struct.hd_struct** %9, align 8
  %48 = icmp ne %struct.hd_struct* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.hd_struct*, %struct.hd_struct** %9, align 8
  %51 = call i32 @part_devt(%struct.hd_struct* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.hd_struct*, %struct.hd_struct** %9, align 8
  %53 = call i32 @disk_put_part(%struct.hd_struct* %52)
  br label %57

54:                                               ; preds = %43
  %55 = load %struct.hd_struct*, %struct.hd_struct** %9, align 8
  %56 = call i32 @disk_put_part(%struct.hd_struct* %55)
  br label %12

57:                                               ; preds = %49, %30, %12
  %58 = call i32 @class_dev_iter_exit(%struct.class_dev_iter* %6)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @class_dev_iter_init(%struct.class_dev_iter*, i32*, i32*, i32*) #1

declare dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter*) #1

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local %struct.hd_struct* @disk_get_part(%struct.gendisk*, i32) #1

declare dso_local i32 @part_devt(%struct.hd_struct*) #1

declare dso_local i32 @disk_put_part(%struct.hd_struct*) #1

declare dso_local i32 @class_dev_iter_exit(%struct.class_dev_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
