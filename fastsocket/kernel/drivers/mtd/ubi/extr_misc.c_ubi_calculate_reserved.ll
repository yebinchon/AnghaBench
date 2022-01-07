; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_misc.c_ubi_calculate_reserved.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_misc.c_ubi_calculate_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }

@CONFIG_MTD_UBI_BEB_RESERVE = common dso_local global i32 0, align 4
@MIN_RESEVED_PEBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_calculate_reserved(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %3 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %4 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 100
  %7 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @CONFIG_MTD_UBI_BEB_RESERVE, align 4
  %10 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MIN_RESEVED_PEBS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MIN_RESEVED_PEBS, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
