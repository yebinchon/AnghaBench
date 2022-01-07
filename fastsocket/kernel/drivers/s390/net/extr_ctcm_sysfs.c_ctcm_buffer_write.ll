; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_buffer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.ctcm_priv = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, %struct.net_device* }

@READ = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bfnondev\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@CTCM_BUFSIZE_LIMIT = common dso_local global i32 0, align 4
@LL_HEADER_LENGTH = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@CHANNEL_FLAGS_BUFSIZE_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"buff_err\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctcm_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctcm_buffer_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ctcm_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %12, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %16 = icmp ne %struct.ctcm_priv* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %19 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i64, i64* @READ, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %27 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i64, i64* @READ, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  store %struct.net_device* %33, %struct.net_device** %10, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %25, %17, %4
  %36 = load i32, i32* @SETUP, align 4
  %37 = load i32, i32* @CTC_DBF_ERROR, align 4
  %38 = call i32 @CTCM_DBF_TEXT(i32 %36, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @ENODEV, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %137

41:                                               ; preds = %25
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CTCM_BUFSIZE_LIMIT, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %131

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %51 = add nsw i32 576, %50
  %52 = add nsw i32 %51, 2
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %131

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %58 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %10, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_RUNNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 2
  %73 = icmp slt i32 %66, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %131

75:                                               ; preds = %65, %55
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %78 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i64, i64* @READ, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %86 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %86, align 8
  %88 = load i64, i64* @WRITE, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %87, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %10, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFF_RUNNING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sub nsw i32 %101, 2
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %75
  %106 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %107 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %108 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = load i64, i64* @READ, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %106
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %117 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %118 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %118, align 8
  %120 = load i64, i64* @WRITE, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %119, i64 %120
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %116
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @SETUP, align 4
  %127 = load %struct.net_device*, %struct.net_device** %10, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @CTCM_DBF_DEV(i32 %126, %struct.net_device* %127, i8* %128)
  %130 = load i64, i64* %9, align 8
  store i64 %130, i64* %5, align 8
  br label %137

131:                                              ; preds = %74, %54, %47
  %132 = load i32, i32* @SETUP, align 4
  %133 = load %struct.net_device*, %struct.net_device** %10, align 8
  %134 = call i32 @CTCM_DBF_DEV(i32 %132, %struct.net_device* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i64, i64* @EINVAL, align 8
  %136 = sub i64 0, %135
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %131, %105, %35
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @CTCM_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
