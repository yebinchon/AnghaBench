; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_dvb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"DVB transfer mode is ISO.\0A\00", align 1
@INDEX_TS1 = common dso_local global i32 0, align 4
@CX231XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@CX231XX_DVB_MAX_PACKETS = common dso_local global i32 0, align 4
@CX231XX_DVB_NUM_BUFS = common dso_local global i32 0, align 4
@dvb_isoc_copy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DVB transfer mode is BULK.\0A\00", align 1
@dvb_bulk_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx_dvb*)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.cx231xx_dvb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx_dvb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx_dvb* %0, %struct.cx231xx_dvb** %3, align 8
  %6 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %3, align 8
  %7 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  store %struct.cx231xx* %9, %struct.cx231xx** %5, align 8
  %10 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = call i32 @cx231xx_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %20 = call i32 @cx231xx_enable_i2c_port_3(%struct.cx231xx* %19, i32 0)
  %21 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %22 = load i32, i32* @INDEX_TS1, align 4
  %23 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %21, i32 %22, i32 4)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = call i32 @cx231xx_enable_i2c_port_3(%struct.cx231xx* %24, i32 1)
  %26 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %30 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %31 = call i32 @cx231xx_set_mode(%struct.cx231xx* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %72

36:                                               ; preds = %14
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %40 = load i32, i32* @CX231XX_DVB_MAX_PACKETS, align 4
  %41 = load i32, i32* @CX231XX_DVB_NUM_BUFS, align 4
  %42 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @dvb_isoc_copy, align 4
  %47 = call i32 @cx231xx_init_isoc(%struct.cx231xx* %39, i32 %40, i32 %41, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %1
  %49 = call i32 @cx231xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %51 = load i32, i32* @INDEX_TS1, align 4
  %52 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %50, i32 %51, i32 0)
  %53 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %54 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %55 = call i32 @cx231xx_set_mode(%struct.cx231xx* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %72

60:                                               ; preds = %48
  %61 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %64 = load i32, i32* @CX231XX_DVB_MAX_PACKETS, align 4
  %65 = load i32, i32* @CX231XX_DVB_NUM_BUFS, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @dvb_bulk_copy, align 4
  %71 = call i32 @cx231xx_init_bulk(%struct.cx231xx* %63, i32 %64, i32 %65, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %60, %58, %36, %34
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @cx231xx_info(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_enable_i2c_port_3(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_init_isoc(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_init_bulk(%struct.cx231xx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
