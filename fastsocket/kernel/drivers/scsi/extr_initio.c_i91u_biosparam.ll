; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_i91u_biosparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_i91u_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.block_device = type { i32 }
%struct.initio_host = type { %struct.target_control* }
%struct.target_control = type { i32, i32, i32 }

@TCF_DRV_255_63 = common dso_local global i32 0, align 4
@debug_biosparam = common dso_local global i32 0, align 4
@i91u_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)* @i91u_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i91u_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.initio_host*, align 8
  %10 = alloca %struct.target_control*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.initio_host*
  store %struct.initio_host* %16, %struct.initio_host** %9, align 8
  %17 = load %struct.initio_host*, %struct.initio_host** %9, align 8
  %18 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %17, i32 0, i32 0
  %19 = load %struct.target_control*, %struct.target_control** %18, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.target_control, %struct.target_control* %19, i64 %22
  store %struct.target_control* %23, %struct.target_control** %10, align 8
  %24 = load %struct.target_control*, %struct.target_control** %10, align 8
  %25 = getelementptr inbounds %struct.target_control, %struct.target_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %4
  %29 = load %struct.target_control*, %struct.target_control** %10, align 8
  %30 = getelementptr inbounds %struct.target_control, %struct.target_control* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.target_control*, %struct.target_control** %10, align 8
  %35 = getelementptr inbounds %struct.target_control, %struct.target_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.target_control*, %struct.target_control** %10, align 8
  %41 = getelementptr inbounds %struct.target_control, %struct.target_control* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %39, %43
  %45 = load %struct.target_control*, %struct.target_control** %10, align 8
  %46 = getelementptr inbounds %struct.target_control, %struct.target_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %50, i32* %52, align 4
  br label %82

53:                                               ; preds = %4
  %54 = load %struct.target_control*, %struct.target_control** %10, align 8
  %55 = getelementptr inbounds %struct.target_control, %struct.target_control* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TCF_DRV_255_63, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 255, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 63, i32* %64, align 4
  %65 = load i64, i64* %7, align 8
  %66 = udiv i64 %65, 255
  %67 = udiv i64 %66, 63
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  br label %81

71:                                               ; preds = %53
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 64, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 32, i32* %75, align 4
  %76 = load i64, i64* %7, align 8
  %77 = lshr i64 %76, 11
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %60
  br label %82

82:                                               ; preds = %81, %28
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
