; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-bus.c_saa7164_bus_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-bus.c_saa7164_bus_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, %struct.tmComResBusInfo }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tmComResBusInfo = type { i64, i64, i64, i64, i8*, i32*, i8*, i32*, i32, i32, i32 }

@TYPE_BUS_PCIe = common dso_local global i32 0, align 4
@SAA_DEVICE_MAXREQUESTSIZE = common dso_local global i32 0, align 4
@SAA_DEVICE_BUFFERBLOCKSIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7164_bus_setup(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  %3 = alloca %struct.tmComResBusInfo*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %4 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %4, i32 0, i32 3
  store %struct.tmComResBusInfo* %5, %struct.tmComResBusInfo** %3, align 8
  %6 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %7 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %6, i32 0, i32 10
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load i32, i32* @TYPE_BUS_PCIe, align 4
  %10 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %11 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SAA_DEVICE_MAXREQUESTSIZE, align 4
  %13 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %14 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %16 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %19 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %26 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %25, i32 0, i32 7
  store i32* %24, i32** %26, align 8
  %27 = load i8*, i8** @SAA_DEVICE_BUFFERBLOCKSIZE, align 8
  %28 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %29 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %31 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %34 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %32, %37
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %41 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load i8*, i8** @SAA_DEVICE_BUFFERBLOCKSIZE, align 8
  %43 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %44 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %46 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 8
  %51 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %52 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %54 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 8
  %57 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %58 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %60 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 16
  %63 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %64 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %66 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 24
  %69 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %70 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  ret i32 0
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
