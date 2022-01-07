; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i64, i32, i32 }
%struct.ib_uverbs_device = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.ib_device*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@map_lock = common dso_local global i32 0, align 4
@dev_map = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i32 0, align 4
@overflow_maj = common dso_local global i64 0, align 8
@overflow_map = common dso_local global i32 0, align 4
@IB_UVERBS_BASE_DEV = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@uverbs_mmap_fops = common dso_local global i32 0, align 4
@uverbs_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uverbs%d\00", align 1
@uverbs_class = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@dev_attr_abi_version = common dso_local global i32 0, align 4
@uverbs_client = common dso_local global i32 0, align 4
@ib_uverbs_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_uverbs_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_uverbs_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %182

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_uverbs_device* @kzalloc(i32 64, i32 %12)
  store %struct.ib_uverbs_device* %13, %struct.ib_uverbs_device** %5, align 8
  %14 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %15 = icmp ne %struct.ib_uverbs_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %182

17:                                               ; preds = %11
  %18 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %18, i32 0, i32 2
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %22 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %21, i32 0, i32 1
  %23 = call i32 @init_completion(i32* %22)
  %24 = load i32, i32* @RB_ROOT, align 4
  %25 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %28 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %27, i32 0, i32 7
  %29 = call i32 @mutex_init(i32* %28)
  %30 = call i32 @spin_lock(i32* @map_lock)
  %31 = load i32, i32* @dev_map, align 4
  %32 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %33 = call i32 @find_first_zero_bit(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %17
  %38 = call i32 @spin_unlock(i32* @map_lock)
  %39 = call i32 (...) @find_overflow_devnum()
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %172

43:                                               ; preds = %37
  %44 = call i32 @spin_lock(i32* @map_lock)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %49 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @overflow_maj, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @overflow_map, align 4
  %56 = call i32 @set_bit(i32 %54, i32 %55)
  br label %68

57:                                               ; preds = %17
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %60 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @IB_UVERBS_BASE_DEV, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %4, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @dev_map, align 4
  %67 = call i32 @set_bit(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %43
  %69 = call i32 @spin_unlock(i32* @map_lock)
  %70 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %71 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %72 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %71, i32 0, i32 6
  store %struct.ib_device* %70, %struct.ib_device** %72, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %74 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %77 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %79 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %78, i32 0, i32 3
  %80 = call i32 @cdev_init(%struct.TYPE_4__* %79, i32* null)
  %81 = load i32, i32* @THIS_MODULE, align 4
  %82 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %86 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32* @uverbs_mmap_fops, i32* @uverbs_fops
  %91 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %92 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32* %90, i32** %93, align 8
  %94 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %95 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %98 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @kobject_set_name(i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %102 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %101, i32 0, i32 3
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @cdev_add(%struct.TYPE_4__* %102, i64 %103, i32 1)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %68
  br label %154

107:                                              ; preds = %68
  %108 = load i32, i32* @uverbs_class, align 4
  %109 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %110 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %113 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %117 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %118 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @device_create(i32 %108, i32 %111, i32 %115, %struct.ib_uverbs_device* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %122 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %124 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %107
  br label %154

129:                                              ; preds = %107
  %130 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %131 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @device_create_file(i32 %132, i32* @dev_attr_ibdev)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %147

136:                                              ; preds = %129
  %137 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %138 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @device_create_file(i32 %139, i32* @dev_attr_abi_version)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %147

143:                                              ; preds = %136
  %144 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %145 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %146 = call i32 @ib_set_client_data(%struct.ib_device* %144, i32* @uverbs_client, %struct.ib_uverbs_device* %145)
  br label %182

147:                                              ; preds = %142, %135
  %148 = load i32, i32* @uverbs_class, align 4
  %149 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %150 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @device_destroy(i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %147, %128, %106
  %155 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %156 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %155, i32 0, i32 3
  %157 = call i32 @cdev_del(%struct.TYPE_4__* %156)
  %158 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %159 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @dev_map, align 4
  %166 = call i32 @clear_bit(i32 %164, i32 %165)
  br label %171

167:                                              ; preds = %154
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @overflow_map, align 4
  %170 = call i32 @clear_bit(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %163
  br label %172

172:                                              ; preds = %171, %42
  %173 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %174 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %173, i32 0, i32 2
  %175 = load i32, i32* @ib_uverbs_release_dev, align 4
  %176 = call i32 @kref_put(i32* %174, i32 %175)
  %177 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %178 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %177, i32 0, i32 1
  %179 = call i32 @wait_for_completion(i32* %178)
  %180 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %181 = call i32 @kfree(%struct.ib_uverbs_device* %180)
  br label %182

182:                                              ; preds = %172, %143, %16, %10
  ret void
}

declare dso_local %struct.ib_uverbs_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_overflow_devnum(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i64 @cdev_add(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @device_create(i32, i32, i32, %struct.ib_uverbs_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @device_create_file(i32, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_uverbs_device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
