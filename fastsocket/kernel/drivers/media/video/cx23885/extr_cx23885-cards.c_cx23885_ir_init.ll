; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_ir_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev_io_pin_config = type { i32, i32, i32, i32, i32 }
%struct.cx23885_dev = type { i32, i32, i32* }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i32 }

@cx23885_ir_init.ir_rxtx_pin_cfg = internal global [2 x %struct.v4l2_subdev_io_pin_config] [%struct.v4l2_subdev_io_pin_config { i32 130, i32 0, i32 134, i32 132, i32 129 }, %struct.v4l2_subdev_io_pin_config { i32 130, i32 0, i32 133, i32 131, i32 128 }], align 16
@cx23885_ir_init.ir_rx_pin_cfg = internal global [1 x %struct.v4l2_subdev_io_pin_config] [%struct.v4l2_subdev_io_pin_config { i32 130, i32 0, i32 134, i32 132, i32 129 }], align 16
@CX23885_HW_888_IR = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_io_pin_config = common dso_local global i32 0, align 4
@ir = common dso_local global i32 0, align 4
@tx_g_parameters = common dso_local global i32 0, align 4
@tx_s_parameters = common dso_local global i32 0, align 4
@enable_885_ir = common dso_local global i32 0, align 4
@CX23885_HW_AV_CORE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ir-kbd-i2c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_ir_init(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  %6 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.v4l2_subdev_io_pin_config* getelementptr inbounds ([2 x %struct.v4l2_subdev_io_pin_config], [2 x %struct.v4l2_subdev_io_pin_config]* @cx23885_ir_init.ir_rxtx_pin_cfg, i64 0, i64 0))
  store i64 %7, i64* %3, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.v4l2_subdev_io_pin_config* getelementptr inbounds ([1 x %struct.v4l2_subdev_io_pin_config], [1 x %struct.v4l2_subdev_io_pin_config]* @cx23885_ir_init.ir_rx_pin_cfg, i64 0, i64 0))
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %112 [
    i32 139, label %12
    i32 138, label %12
    i32 137, label %12
    i32 147, label %12
    i32 140, label %12
    i32 143, label %12
    i32 142, label %12
    i32 144, label %12
    i32 146, label %12
    i32 136, label %13
    i32 141, label %13
    i32 135, label %58
    i32 145, label %84
    i32 148, label %110
  ]

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %112

13:                                               ; preds = %1, %1
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %15 = call i32 @cx23888_ir_probe(%struct.cx23885_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %112

19:                                               ; preds = %13
  %20 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %21 = load i32, i32* @CX23885_HW_888_IR, align 4
  %22 = call i8* @cx23885_find_hw(%struct.cx23885_dev* %20, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @core, align 4
  %30 = load i32, i32* @s_io_pin_config, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %28, i32 %29, i32 %30, i64 %31, %struct.v4l2_subdev_io_pin_config* getelementptr inbounds ([2 x %struct.v4l2_subdev_io_pin_config], [2 x %struct.v4l2_subdev_io_pin_config]* @cx23885_ir_init.ir_rxtx_pin_cfg, i64 0, i64 0))
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %34 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = load i32, i32* @ir, align 4
  %38 = load i32, i32* @tx_g_parameters, align 4
  %39 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %36, i32 %37, i32 %38, %struct.v4l2_subdev_ir_parameters* %5)
  %40 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32, i32* @ir, align 4
  %48 = load i32, i32* @tx_s_parameters, align 4
  %49 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %46, i32 %47, i32 %48, %struct.v4l2_subdev_ir_parameters* %5)
  %50 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = load i32, i32* @ir, align 4
  %56 = load i32, i32* @tx_s_parameters, align 4
  %57 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %54, i32 %55, i32 %56, %struct.v4l2_subdev_ir_parameters* %5)
  br label %112

58:                                               ; preds = %1
  %59 = load i32, i32* @enable_885_ir, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %112

62:                                               ; preds = %58
  %63 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %64 = load i32, i32* @CX23885_HW_AV_CORE, align 4
  %65 = call i8* @cx23885_find_hw(%struct.cx23885_dev* %63, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %68 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %70 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %112

76:                                               ; preds = %62
  %77 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %78 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @core, align 4
  %81 = load i32, i32* @s_io_pin_config, align 4
  %82 = load i64, i64* %4, align 8
  %83 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %79, i32 %80, i32 %81, i64 %82, %struct.v4l2_subdev_io_pin_config* getelementptr inbounds ([1 x %struct.v4l2_subdev_io_pin_config], [1 x %struct.v4l2_subdev_io_pin_config]* @cx23885_ir_init.ir_rx_pin_cfg, i64 0, i64 0))
  br label %112

84:                                               ; preds = %1
  %85 = load i32, i32* @enable_885_ir, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %112

88:                                               ; preds = %84
  %89 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %90 = load i32, i32* @CX23885_HW_AV_CORE, align 4
  %91 = call i8* @cx23885_find_hw(%struct.cx23885_dev* %89, i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %94 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %96 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %112

102:                                              ; preds = %88
  %103 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %104 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @core, align 4
  %107 = load i32, i32* @s_io_pin_config, align 4
  %108 = load i64, i64* %3, align 8
  %109 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %105, i32 %106, i32 %107, i64 %108, %struct.v4l2_subdev_io_pin_config* getelementptr inbounds ([2 x %struct.v4l2_subdev_io_pin_config], [2 x %struct.v4l2_subdev_io_pin_config]* @cx23885_ir_init.ir_rxtx_pin_cfg, i64 0, i64 0))
  br label %112

110:                                              ; preds = %1
  %111 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %1, %110, %102, %99, %87, %76, %73, %61, %19, %18, %12
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_subdev_io_pin_config*) #1

declare dso_local i32 @cx23888_ir_probe(%struct.cx23885_dev*) #1

declare dso_local i8* @cx23885_find_hw(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, ...) #1

declare dso_local i32 @request_module(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
