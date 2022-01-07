; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_mpeg2ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_mpeg2ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }
%struct.saa7164_port = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tmComResPSFormatDescrHeader = type { i64, i64, i64, i64 }

@DBGLVL_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"    bFormatIndex = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"    wPacketLength= 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"    wPackLength=   0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"    bPackDataType= 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"   = port->hwcfg.BARLocation = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"   = VS_FORMAT_MPEGPS (becomes dev->enc[%d])\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7164_api_configure_port_mpeg2ps(%struct.saa7164_dev* %0, %struct.saa7164_port* %1, %struct.tmComResPSFormatDescrHeader* %2) #0 {
  %4 = alloca %struct.saa7164_dev*, align 8
  %5 = alloca %struct.saa7164_port*, align 8
  %6 = alloca %struct.tmComResPSFormatDescrHeader*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %4, align 8
  store %struct.saa7164_port* %1, %struct.saa7164_port** %5, align 8
  store %struct.tmComResPSFormatDescrHeader* %2, %struct.tmComResPSFormatDescrHeader** %6, align 8
  %7 = load i32, i32* @DBGLVL_API, align 4
  %8 = load %struct.tmComResPSFormatDescrHeader*, %struct.tmComResPSFormatDescrHeader** %6, align 8
  %9 = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, %struct.tmComResPSFormatDescrHeader* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dprintk(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @DBGLVL_API, align 4
  %13 = load %struct.tmComResPSFormatDescrHeader*, %struct.tmComResPSFormatDescrHeader** %6, align 8
  %14 = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, %struct.tmComResPSFormatDescrHeader* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dprintk(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @DBGLVL_API, align 4
  %18 = load %struct.tmComResPSFormatDescrHeader*, %struct.tmComResPSFormatDescrHeader** %6, align 8
  %19 = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, %struct.tmComResPSFormatDescrHeader* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dprintk(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @DBGLVL_API, align 4
  %23 = load %struct.tmComResPSFormatDescrHeader*, %struct.tmComResPSFormatDescrHeader** %6, align 8
  %24 = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, %struct.tmComResPSFormatDescrHeader* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dprintk(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %28 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %32 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %31, i32 0, i32 8
  store i64 %30, i64* %32, align 8
  %33 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %34 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 8
  %38 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %39 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %41 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 12
  %45 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %46 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %48 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 16
  %52 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %53 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %55 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 16
  %59 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %60 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = add i64 %58, %64
  %66 = add i64 %65, 4
  %67 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %68 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  %69 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %70 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 16
  %74 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %75 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = add i64 %73, %79
  %81 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %82 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %84 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 16
  %88 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %89 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = add i64 %87, %93
  %95 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %96 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @DBGLVL_API, align 4
  %98 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %99 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dprintk(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @DBGLVL_API, align 4
  %104 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %105 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @dprintk(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %106)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
