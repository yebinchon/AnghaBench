; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_opti82c46x_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_opti82c46x_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32 }
%struct.ata_timing = type { i32, i32, i32 }

@__const.opti82c46x_set_piomode.khz = private unnamed_addr constant [4 x i32] [i32 50000, i32 40000, i32 33000, i32 25000], align 16
@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @opti82c46x_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opti82c46x_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_timing, align 4
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %15)
  store %struct.ata_device* %16, %struct.ata_device** %9, align 8
  %17 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.opti82c46x_set_piomode.khz to i8*), i64 16, i1 false)
  %18 = call i32 @opti_syscfg(i32 172)
  %19 = and i32 %18, 192
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %13, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ioread16(i32 %24)
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ioread16(i32 %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iowrite8(i32 3, i32 %34)
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 1000000000, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %41 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ata_timing_compute(%struct.ata_device* %40, i32 %43, %struct.ata_timing* %8, i32 %44, i32 1000)
  %46 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %47 = icmp ne %struct.ata_device* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %2
  %49 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %50 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ata_timing_compute(%struct.ata_device* %49, i32 %52, %struct.ata_timing* %14, i32 %53, i32 1000)
  %55 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %56 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %14, %struct.ata_timing* %8, i32 %55)
  br label %57

57:                                               ; preds = %48, %2
  %58 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @clamp_val(i32 %59, i32 2, i32 17)
  %61 = sub i64 %60, 2
  store i64 %61, i64* %5, align 8
  %62 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @clamp_val(i32 %63, i32 1, i32 16)
  %65 = sub i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @clamp_val(i32 %67, i32 1, i32 4)
  %69 = sub i64 %68, 1
  store i64 %69, i64* %7, align 8
  %70 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ioread8(i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = and i64 %75, 127
  store i64 %76, i64* %12, align 8
  %77 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %78 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 7
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %12, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iowrite8(i32 %85, i32 %89)
  %91 = load i64, i64* %5, align 8
  %92 = shl i64 %91, 4
  %93 = load i64, i64* %6, align 8
  %94 = or i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @iowrite8(i32 %95, i32 %99)
  %101 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %102 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ioread8(i32 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = and i64 %106, 192
  store i64 %107, i64* %12, align 8
  %108 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %109 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %12, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %7, align 8
  %115 = shl i64 %114, 4
  %116 = or i64 %115, 4
  %117 = load i64, i64* %12, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %122 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @iowrite8(i32 %120, i32 %124)
  %126 = load i64, i64* %5, align 8
  %127 = shl i64 %126, 4
  %128 = load i64, i64* %6, align 8
  %129 = or i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %132 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @iowrite8(i32 %130, i32 %134)
  %136 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %137 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @ioread8(i32 %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = and i64 %141, 115
  store i64 %142, i64* %12, align 8
  %143 = load i64, i64* %12, align 8
  %144 = or i64 %143, 132
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %148 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @iowrite8(i32 %146, i32 %150)
  %152 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %153 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @iowrite8(i32 131, i32 %155)
  %157 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %158 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %159 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store %struct.ata_port* %157, %struct.ata_port** %161, align 8
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @opti_syscfg(i32) #1

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i64 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
