; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_find_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }
%struct.lguest_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**)* @lg_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtqueue**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.lguest_device*, align 8
  %13 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %15 = call %struct.lguest_device* @to_lgdev(%struct.virtio_device* %14)
  store %struct.lguest_device* %15, %struct.lguest_device** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.lguest_device*, %struct.lguest_device** %12, align 8
  %18 = getelementptr inbounds %struct.lguest_device, %struct.lguest_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %16, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %71

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32**, i32*** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i8**, i8*** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.virtqueue* @lg_find_vq(%struct.virtio_device* %32, i32 %33, i32* %38, i8* %43)
  %45 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %45, i64 %47
  store %struct.virtqueue* %44, %struct.virtqueue** %48, align 8
  %49 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %49, i64 %51
  %53 = load %struct.virtqueue*, %struct.virtqueue** %52, align 8
  %54 = call i64 @IS_ERR(%struct.virtqueue* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %31
  br label %62

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %27

61:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %71

62:                                               ; preds = %56
  %63 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %64 = call i32 @lg_del_vqs(%struct.virtio_device* %63)
  %65 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %65, i64 %67
  %69 = load %struct.virtqueue*, %struct.virtqueue** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.virtqueue* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %62, %61, %23
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.lguest_device* @to_lgdev(%struct.virtio_device*) #1

declare dso_local %struct.virtqueue* @lg_find_vq(%struct.virtio_device*, i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.virtqueue*) #1

declare dso_local i32 @lg_del_vqs(%struct.virtio_device*) #1

declare dso_local i32 @PTR_ERR(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
