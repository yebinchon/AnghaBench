; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rsxx_cardinfo* }
%struct.rsxx_cardinfo = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @rsxx_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.rsxx_cardinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  store %struct.rsxx_cardinfo* %11, %struct.rsxx_cardinfo** %5, align 8
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 9
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %22 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %21, i32 0, i32 0
  store i32 64, i32* %22, align 4
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 1
  store i32 16, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %27 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %30 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @do_div(i32 %25, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %36 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %39 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %41 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %43 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %20
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
