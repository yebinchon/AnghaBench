; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.driver_data* }
%struct.driver_data = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @mtip_block_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.driver_data*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.block_device*, %struct.block_device** %6, align 8
  %12 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.driver_data*, %struct.driver_data** %14, align 8
  store %struct.driver_data* %15, %struct.driver_data** %10, align 8
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %24 = icmp ne %struct.driver_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %22
  %29 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %30 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOTTY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %43 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @ENOTTY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %38
  %44 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @mtip_hw_ioctl(%struct.driver_data* %44, i32 %45, i64 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %40, %35, %25, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mtip_hw_ioctl(%struct.driver_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
