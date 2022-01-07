; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_4__, i32, %struct.block_device*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, %struct.block2mtd_dev*, i32, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error: cannot open device %s\00", align 1
@MTD_BLOCK_MAJOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"attempting to use an MTD device as a block device\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"block2mtd: %s\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@block2mtd_erase = common dso_local global i32 0, align 4
@block2mtd_write = common dso_local global i32 0, align 4
@default_mtd_writev = common dso_local global i32 0, align 4
@block2mtd_sync = common dso_local global i32 0, align 4
@block2mtd_read = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@blkmtd_device_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"mtd%d: [%s] erase_size = %dKiB [%d]\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"block2mtd: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block2mtd_dev* (i8*, i32)* @add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block2mtd_dev* @add_device(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.block2mtd_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.block2mtd_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %3, align 8
  br label %171

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.block2mtd_dev* @kzalloc(i32 96, i32 %14)
  store %struct.block2mtd_dev* %15, %struct.block2mtd_dev** %7, align 8
  %16 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %17 = icmp ne %struct.block2mtd_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %3, align 8
  br label %171

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @FMODE_READ, align 4
  %22 = load i32, i32* @FMODE_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.block_device* @open_bdev_exclusive(i8* %20, i32 %23, i32* null)
  store %struct.block_device* %24, %struct.block_device** %6, align 8
  %25 = load %struct.block_device*, %struct.block_device** %6, align 8
  %26 = call i64 @IS_ERR(%struct.block_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @name_to_dev_t(i8* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @FMODE_WRITE, align 4
  %36 = load i32, i32* @FMODE_READ, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.block_device* @open_by_devnum(i64 %34, i32 %37)
  store %struct.block_device* %38, %struct.block_device** %6, align 8
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.block_device*, %struct.block_device** %6, align 8
  %42 = call i64 @IS_ERR(%struct.block_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %168

47:                                               ; preds = %40
  %48 = load %struct.block_device*, %struct.block_device** %6, align 8
  %49 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %50 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %49, i32 0, i32 2
  store %struct.block_device* %48, %struct.block_device** %50, align 8
  %51 = load %struct.block_device*, %struct.block_device** %6, align 8
  %52 = getelementptr inbounds %struct.block_device, %struct.block_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @MAJOR(i32 %53)
  %55 = load i64, i64* @MTD_BLOCK_MAJOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %168

59:                                               ; preds = %47
  %60 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %61 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %60, i32 0, i32 3
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = add i64 12, %65
  %67 = add i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kmalloc(i32 %68, i32 %69)
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %59
  br label %168

74:                                               ; preds = %59
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %80 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %83 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %82, i32 0, i32 2
  %84 = load %struct.block_device*, %struct.block_device** %83, align 8
  %85 = getelementptr inbounds %struct.block_device, %struct.block_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PAGE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %92 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %96 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %99 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* @MTD_RAM, align 4
  %102 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %103 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 13
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @MTD_CAP_RAM, align 4
  %106 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %107 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 12
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @block2mtd_erase, align 4
  %110 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %111 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 11
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @block2mtd_write, align 4
  %114 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %115 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 10
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @default_mtd_writev, align 4
  %118 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %119 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 9
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @block2mtd_sync, align 4
  %122 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %123 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 8
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @block2mtd_read, align 4
  %126 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %127 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  store i32 %125, i32* %128, align 8
  %129 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %130 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %131 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 6
  store %struct.block2mtd_dev* %129, %struct.block2mtd_dev** %132, align 8
  %133 = load i32, i32* @THIS_MODULE, align 4
  %134 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %135 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  store i32 %133, i32* %136, align 8
  %137 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %138 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %137, i32 0, i32 0
  %139 = call i64 @add_mtd_device(%struct.TYPE_4__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %74
  br label %168

142:                                              ; preds = %74
  %143 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %144 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %143, i32 0, i32 1
  %145 = call i32 @list_add(i32* %144, i32* @blkmtd_device_list)
  %146 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %147 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %151 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %158 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 10
  %162 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %163 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %149, i8* %156, i32 %161, i32 %165)
  %167 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  store %struct.block2mtd_dev* %167, %struct.block2mtd_dev** %3, align 8
  br label %171

168:                                              ; preds = %141, %73, %57, %44
  %169 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %170 = call i32 @block2mtd_free_device(%struct.block2mtd_dev* %169)
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %3, align 8
  br label %171

171:                                              ; preds = %168, %142, %18, %12
  %172 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %3, align 8
  ret %struct.block2mtd_dev* %172
}

declare dso_local %struct.block2mtd_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.block_device* @open_bdev_exclusive(i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i64 @name_to_dev_t(i8*) #1

declare dso_local %struct.block_device* @open_by_devnum(i64, i32) #1

declare dso_local i32 @ERROR(i8*, ...) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @add_mtd_device(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INFO(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @block2mtd_free_device(%struct.block2mtd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
