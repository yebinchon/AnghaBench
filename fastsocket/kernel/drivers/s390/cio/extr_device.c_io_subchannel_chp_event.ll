; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_chp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_chp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i32 }
%struct.chp_link = type { i32 }
%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, %struct.chp_link*, i32)* @io_subchannel_chp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_chp_event(%struct.subchannel* %0, %struct.chp_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca %struct.chp_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccw_device*, align 8
  %9 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %5, align 8
  store %struct.chp_link* %1, %struct.chp_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %11 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %8, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 2
  %14 = load %struct.chp_link*, %struct.chp_link** %6, align 8
  %15 = call i32 @chp_ssd_get_mask(i32* %13, %struct.chp_link* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %124 [
    i32 129, label %21
    i32 128, label %48
    i32 131, label %72
    i32 130, label %94
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %9, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %9, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %35 = icmp ne %struct.ccw_device* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %21
  %45 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @io_subchannel_terminate_path(%struct.subchannel* %45, i32 %46)
  br label %124

48:                                               ; preds = %19
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %56 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %60 = icmp ne %struct.ccw_device* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %48
  %70 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %71 = call i32 @io_subchannel_verify(%struct.subchannel* %70)
  br label %124

72:                                               ; preds = %19
  %73 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %74 = call i32 @cio_update_schib(%struct.subchannel* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %125

79:                                               ; preds = %72
  %80 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %81 = icmp ne %struct.ccw_device* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %85 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %82, %79
  %91 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @io_subchannel_terminate_path(%struct.subchannel* %91, i32 %92)
  br label %124

94:                                               ; preds = %19
  %95 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %96 = call i32 @cio_update_schib(%struct.subchannel* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %125

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %104 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  %107 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %108 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %112 = icmp ne %struct.ccw_device* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %101
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %116 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %101
  %122 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %123 = call i32 @io_subchannel_verify(%struct.subchannel* %122)
  br label %124

124:                                              ; preds = %19, %121, %90, %69, %44
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %98, %76, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @chp_ssd_get_mask(i32*, %struct.chp_link*) #1

declare dso_local i32 @io_subchannel_terminate_path(%struct.subchannel*, i32) #1

declare dso_local i32 @io_subchannel_verify(%struct.subchannel*) #1

declare dso_local i32 @cio_update_schib(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
