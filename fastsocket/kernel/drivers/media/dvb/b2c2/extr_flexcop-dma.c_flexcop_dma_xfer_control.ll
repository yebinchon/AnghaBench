; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_xfer_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_xfer_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FC_DMA_1 = common dso_local global i32 0, align 4
@dma1_000 = common dso_local global i32 0, align 4
@dma1_00c = common dso_local global i32 0, align 4
@FC_DMA_2 = common dso_local global i32 0, align 4
@dma2_010 = common dso_local global i32 0, align 4
@dma2_01c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"either transfer DMA1 or DMA2 can be started within one flexcop_dma_xfer_control call.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"reg: %03x: %x\0A\00", align 1
@FC_DMA_SUBADDR_0 = common dso_local global i32 0, align 4
@FC_DMA_SUBADDR_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_dma_xfer_control(%struct.flexcop_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flexcop_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FC_DMA_1, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @dma1_000, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @dma1_00c, align 4
  store i32 %27, i32* %13, align 4
  br label %42

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FC_DMA_2, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @dma2_010, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @dma2_01c, align 4
  store i32 %36, i32* %13, align 4
  br label %41

37:                                               ; preds = %28
  %38 = call i32 @err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %121

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %44 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %43, i32 0, i32 1
  %45 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %44, align 8
  %46 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call { i64, i32 } %45(%struct.flexcop_device* %46, i32 %47)
  store { i64, i32 } %48, { i64, i32 }* %15, align 8
  %49 = bitcast { i64, i32 }* %15 to i8*
  %50 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %49, i64 12, i1 false)
  %51 = bitcast %struct.TYPE_10__* %10 to i8*
  %52 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 1
  %55 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %54, align 8
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call { i64, i32 } %55(%struct.flexcop_device* %56, i32 %57)
  store { i64, i32 } %58, { i64, i32 }* %17, align 8
  %59 = bitcast { i64, i32 }* %17 to i8*
  %60 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 8 %59, i64 12, i1 false)
  %61 = bitcast %struct.TYPE_10__* %11 to i8*
  %62 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 12, i1 false)
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @deb_rdump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @deb_rdump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @FC_DMA_SUBADDR_0, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %42
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %42
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @FC_DMA_SUBADDR_1, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %90 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %89, i32 0, i32 0
  %91 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %90, align 8
  %92 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = bitcast { i64, i32 }* %18 to i8*
  %95 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %91(%struct.flexcop_device* %92, i32 %93, i64 %97, i32 %99)
  %101 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %102 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %101, i32 0, i32 0
  %103 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %102, align 8
  %104 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %105 = load i32, i32* %13, align 4
  %106 = bitcast { i64, i32 }* %19 to i8*
  %107 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %103(%struct.flexcop_device* %104, i32 %105, i64 %109, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @deb_rdump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @deb_rdump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %119)
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %88, %37
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @deb_rdump(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
