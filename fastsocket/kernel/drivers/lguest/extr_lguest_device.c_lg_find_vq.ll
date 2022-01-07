; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_find_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_find_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.lguest_vq_info* }
%struct.lguest_vq_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.virtio_device = type { i32 }
%struct.lguest_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Mapping virtqueue %i addr %lx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@LGUEST_VRING_ALIGN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@lg_notify = common dso_local global i32 0, align 4
@vring_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*)* @lg_find_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @lg_find_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3) #0 {
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.virtqueue*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lguest_device*, align 8
  %11 = alloca %struct.lguest_vq_info*, align 8
  %12 = alloca %struct.virtqueue*, align 8
  %13 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %15 = call %struct.lguest_device* @to_lgdev(%struct.virtio_device* %14)
  store %struct.lguest_device* %15, %struct.lguest_device** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.lguest_device*, %struct.lguest_device** %10, align 8
  %18 = getelementptr inbounds %struct.lguest_device, %struct.lguest_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.virtqueue* @ERR_PTR(i32 %25)
  store %struct.virtqueue* %26, %struct.virtqueue** %5, align 8
  br label %135

27:                                               ; preds = %4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.lguest_vq_info* @kmalloc(i32 24, i32 %28)
  store %struct.lguest_vq_info* %29, %struct.lguest_vq_info** %11, align 8
  %30 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %31 = icmp ne %struct.lguest_vq_info* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.virtqueue* @ERR_PTR(i32 %34)
  store %struct.virtqueue* %35, %struct.virtqueue** %5, align 8
  br label %135

36:                                               ; preds = %27
  %37 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %38 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %37, i32 0, i32 1
  %39 = load %struct.lguest_device*, %struct.lguest_device** %10, align 8
  %40 = getelementptr inbounds %struct.lguest_device, %struct.lguest_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @lg_vq(%struct.TYPE_4__* %41)
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %42, %43
  %45 = call i32 @memcpy(%struct.TYPE_3__* %38, i32 %44, i32 16)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %48 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = shl i64 %50, %51
  %53 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %52)
  %54 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %55 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %61 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LGUEST_VRING_ALIGN, align 4
  %65 = call i32 @vring_size(i32 %63, i32 %64)
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = call i32 @DIV_ROUND_UP(i32 %65, i32 %66)
  %68 = call i32 @lguest_map(i64 %59, i32 %67)
  %69 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %70 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %72 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %36
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %130

78:                                               ; preds = %36
  %79 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %80 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LGUEST_VRING_ALIGN, align 4
  %84 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %85 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %86 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @lg_notify, align 4
  %89 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call %struct.virtqueue* @vring_new_virtqueue(i32 %82, i32 %83, %struct.virtio_device* %84, i32 %87, i32 %88, void (%struct.virtqueue*)* %89, i8* %90)
  store %struct.virtqueue* %91, %struct.virtqueue** %12, align 8
  %92 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %93 = icmp ne %struct.virtqueue* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %78
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %13, align 4
  br label %125

97:                                               ; preds = %78
  %98 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %99 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @lguest_setup_irq(i32 %101)
  %103 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %104 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @vring_interrupt, align 4
  %108 = load i32, i32* @IRQF_SHARED, align 4
  %109 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %110 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %109, i32 0, i32 0
  %111 = call i32 @dev_name(i32* %110)
  %112 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %113 = call i32 @request_irq(i32 %106, i32 %107, i32 %108, i32 %111, %struct.virtqueue* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  br label %122

117:                                              ; preds = %97
  %118 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %119 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %120 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %119, i32 0, i32 0
  store %struct.lguest_vq_info* %118, %struct.lguest_vq_info** %120, align 8
  %121 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  store %struct.virtqueue* %121, %struct.virtqueue** %5, align 8
  br label %135

122:                                              ; preds = %116
  %123 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %124 = call i32 @vring_del_virtqueue(%struct.virtqueue* %123)
  br label %125

125:                                              ; preds = %122, %94
  %126 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %127 = getelementptr inbounds %struct.lguest_vq_info, %struct.lguest_vq_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @lguest_unmap(i32 %128)
  br label %130

130:                                              ; preds = %125, %75
  %131 = load %struct.lguest_vq_info*, %struct.lguest_vq_info** %11, align 8
  %132 = call i32 @kfree(%struct.lguest_vq_info* %131)
  %133 = load i32, i32* %13, align 4
  %134 = call %struct.virtqueue* @ERR_PTR(i32 %133)
  store %struct.virtqueue* %134, %struct.virtqueue** %5, align 8
  br label %135

135:                                              ; preds = %130, %117, %32, %23
  %136 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  ret %struct.virtqueue* %136
}

declare dso_local %struct.lguest_device* @to_lgdev(%struct.virtio_device*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

declare dso_local %struct.lguest_vq_info* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @lg_vq(%struct.TYPE_4__*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @lguest_map(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i32, i32, %struct.virtio_device*, i32, i32, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @lguest_setup_irq(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.virtqueue*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @lguest_unmap(i32) #1

declare dso_local i32 @kfree(%struct.lguest_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
