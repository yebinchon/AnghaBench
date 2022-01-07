; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_opti82c611a_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_opti82c611a_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32 }
%struct.ata_timing = type { i32, i32, i32 }

@__const.opti82c611a_set_piomode.khz = private unnamed_addr constant [4 x i32] [i32 50000, i32 40000, i32 33000, i32 25000], align 16
@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @opti82c611a_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opti82c611a_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_timing, align 4
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %14)
  store %struct.ata_device* %15, %struct.ata_device** %9, align 8
  %16 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.opti82c611a_set_piomode.khz to i8*), i64 16, i1 false)
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ioread16(i32 %20)
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ioread16(i32 %25)
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iowrite8(i32 3, i32 %30)
  %32 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ioread8(i32 %35)
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 1000000000, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %44 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ata_timing_compute(%struct.ata_device* %42, i32 %45, %struct.ata_timing* %8, i32 %46, i32 1000)
  %48 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %49 = icmp ne %struct.ata_device* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %2
  %51 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %52 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ata_timing_compute(%struct.ata_device* %51, i32 %54, %struct.ata_timing* %13, i32 %55, i32 1000)
  %57 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %58 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %13, %struct.ata_timing* %8, i32 %57)
  br label %59

59:                                               ; preds = %50, %2
  %60 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clamp_val(i32 %61, i32 2, i32 17)
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %5, align 4
  %64 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clamp_val(i32 %65, i32 1, i32 16)
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clamp_val(i32 %69, i32 1, i32 4)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %73 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ioread8(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 127
  store i32 %78, i32* %12, align 4
  %79 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 7
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iowrite8(i32 %85, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %91, 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %96 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @iowrite8(i32 %94, i32 %98)
  %100 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %101 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ioread8(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 192
  store i32 %106, i32* %12, align 4
  %107 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %108 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %7, align 4
  %113 = shl i32 %112, 4
  %114 = or i32 %113, 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %119 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @iowrite8(i32 %117, i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = shl i32 %123, 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %128 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @iowrite8(i32 %126, i32 %130)
  %132 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %133 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ioread8(i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %137, 115
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, 132
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %143 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @iowrite8(i32 %141, i32 %145)
  %147 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %148 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @iowrite8(i32 131, i32 %150)
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
