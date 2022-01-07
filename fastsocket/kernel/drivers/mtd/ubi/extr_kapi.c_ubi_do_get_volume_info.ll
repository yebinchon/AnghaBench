; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_do_get_volume_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_do_get_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_do_get_volume_info(%struct.ubi_device* %0, %struct.ubi_volume* %1, %struct.ubi_volume_info* %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca %struct.ubi_volume_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  store %struct.ubi_volume_info* %2, %struct.ubi_volume_info** %6, align 8
  %7 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %8 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %11 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %21 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %26 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %31 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %33 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %36 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %38 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %43 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %46 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %51 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %53 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %56 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %61 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %63 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %6, align 8
  %67 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
