; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"cciss_open %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CTLR_LUNID = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @cciss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cciss_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = call %struct.TYPE_10__* @get_host(%struct.TYPE_11__* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call %struct.TYPE_9__* @get_drv(%struct.TYPE_11__* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.block_device*, %struct.block_device** %4, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  %40 = getelementptr inbounds %struct.block_device, %struct.block_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @MINOR(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.block_device*, %struct.block_device** %4, align 8
  %46 = getelementptr inbounds %struct.block_device, %struct.block_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @MINOR(i32 %47)
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %83

54:                                               ; preds = %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CTLR_LUNID, align 4
  %59 = call i64 @memcmp(i32 %57, i32 %58, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %68 = call i32 @capable(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %33
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %70, %61, %51, %30
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_10__* @get_host(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_9__* @get_drv(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
