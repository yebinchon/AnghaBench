; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-sram.c_flexcop_sram_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-sram.c_flexcop_sram_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@sram_dest_reg_714 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_sram_ctrl(%struct.flexcop_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca { i64, i32 }, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %13 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %12, i32 0, i32 1
  %14 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %13, align 8
  %15 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %16 = load i32, i32* @sram_dest_reg_714, align 4
  %17 = call { i64, i32 } %14(%struct.flexcop_device* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store { i64, i32 } %17, { i64, i32 }* %10, align 8
  %19 = bitcast { i64, i32 }* %10 to i8*
  %20 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %19, i64 12, i1 false)
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %31 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %30, i32 0, i32 0
  %32 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %31, align 8
  %33 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %34 = load i32, i32* @sram_dest_reg_714, align 4
  %35 = bitcast { i64, i32 }* %11 to i8*
  %36 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %32(%struct.flexcop_device* %33, i32 %34, i64 %38, i32 %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
