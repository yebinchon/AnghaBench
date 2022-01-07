; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_get_tmds_link_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_get_tmds_link_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.nouveau_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dcb_output* }
%struct.dcb_output = type { i64 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DCB_LOC_ON_CHIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @get_tmds_link_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tmds_link_bandwidth(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_connector*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.dcb_output*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %7)
  store %struct.nouveau_connector* %8, %struct.nouveau_connector** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_drm(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %5, align 8
  %13 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  store %struct.dcb_output* %17, %struct.dcb_output** %6, align 8
  %18 = load %struct.dcb_output*, %struct.dcb_output** %6, align 8
  %19 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DCB_LOC_ON_CHIP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_4__* @nv_device(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 70
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %1
  store i32 165000, i32* %2, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_4__* @nv_device(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 64
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 155000, i32* %2, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* @nv_device(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 24
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 135000, i32* %2, align 4
  br label %51

50:                                               ; preds = %41
  store i32 112000, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %40, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
