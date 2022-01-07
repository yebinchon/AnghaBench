; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_simple_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_simple_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32* }

@simple_config_check.size_table = internal constant [2 x i32] [i32 8, i32 16], align 4
@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i8*)* @simple_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_config_check(%struct.pcmcia_device* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 10000
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* @simple_config_check.size_table, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %42
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %57
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %75 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %89

82:                                               ; preds = %66
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %88 = and i32 %86, %87
  br label %89

89:                                               ; preds = %82, %81
  %90 = phi i32 [ 16, %81 ], [ %88, %82 ]
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %95 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %96 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %95, i32 0, i32 0
  %97 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %94, %struct.TYPE_14__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %104

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %57, %42, %36
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %99
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
