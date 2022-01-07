; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_reset_block_300.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_reset_block_300.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)* }

@ctrl_208 = common dso_local global i32 0, align 4
@sw_reset_210 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"208: %08x, 210: %08x\0A\00", align 1
@ibi_zero = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_reset_block_300(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca { i64, i32 }, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 1
  %12 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %11, align 8
  %13 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %14 = load i32, i32* @ctrl_208, align 4
  %15 = call { i64, i32 } %12(%struct.flexcop_device* %13, i32 %14)
  store { i64, i32 } %15, { i64, i32 }* %4, align 8
  %16 = bitcast { i64, i32 }* %4 to i8*
  %17 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %16, i64 12, i1 false)
  %18 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %19 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %18, i32 0, i32 1
  %20 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %19, align 8
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %22 = load i32, i32* @sw_reset_210, align 4
  %23 = call { i64, i32 } %20(%struct.flexcop_device* %21, i32 %22)
  store { i64, i32 } %23, { i64, i32 }* %6, align 8
  %24 = bitcast { i64, i32 }* %6 to i8*
  %25 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 8 %24, i64 12, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @deb_rdump(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %32 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %31, i32 0, i32 0
  %33 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %32, align 8
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %35 = load i32, i32* @ctrl_208, align 4
  %36 = bitcast { i64, i32 }* %7 to i8*
  %37 = bitcast %struct.TYPE_10__* @ibi_zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %33(%struct.flexcop_device* %34, i32 %35, i64 %39, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 178, i32* %46, align 4
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %48 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %47, i32 0, i32 0
  %49 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %48, align 8
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %51 = load i32, i32* @sw_reset_210, align 4
  %52 = bitcast { i64, i32 }* %8 to i8*
  %53 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %49(%struct.flexcop_device* %50, i32 %51, i64 %55, i32 %57)
  %59 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %60 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %59, i32 0, i32 0
  %61 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %60, align 8
  %62 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %63 = load i32, i32* @ctrl_208, align 4
  %64 = bitcast { i64, i32 }* %9 to i8*
  %65 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 4
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %61(%struct.flexcop_device* %62, i32 %63, i64 %67, i32 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @deb_rdump(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
