; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_init_ivtv_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_init_ivtv_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, %struct.ivtv* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"i2c init\0A\00", align 1
@hw_devicenames = common dso_local global i32 0, align 4
@hw_addrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Mismatched I2C hardware arrays\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ivtv_i2c_adap_hw_template = common dso_local global i32 0, align 4
@ivtv_i2c_adap_template = common dso_local global i32 0, align 4
@ivtv_i2c_algo_template = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" #%d\00", align 1
@ivtv_i2c_client_template = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"setting scl and sda to 1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_ivtv_i2c(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @hw_devicenames, align 4
  %7 = call i64 @ARRAY_SIZE(i32 %6)
  %8 = load i32, i32* @hw_addrs, align 4
  %9 = call i64 @ARRAY_SIZE(i32 %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %105

15:                                               ; preds = %1
  %16 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 1
  %24 = call i32 @memcpy(%struct.TYPE_11__* %23, i32* @ivtv_i2c_adap_hw_template, i32 4)
  br label %32

25:                                               ; preds = %15
  %26 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 1
  %28 = call i32 @memcpy(%struct.TYPE_11__* %27, i32* @ivtv_i2c_adap_template, i32 4)
  %29 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 6
  %31 = call i32 @memcpy(%struct.TYPE_11__* %30, i32* @ivtv_i2c_algo_template, i32 4)
  br label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  %38 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %42 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  store %struct.ivtv* %41, %struct.ivtv** %44, align 8
  %45 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 6
  %47 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @strlen(i64 %57)
  %59 = add nsw i64 %53, %58
  %60 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sprintf(i64 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 1
  %66 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 5
  %68 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %65, i32* %67)
  %69 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 4
  %71 = call i32 @memcpy(%struct.TYPE_11__* %70, i32* @ivtv_i2c_client_template, i32 4)
  %72 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 1
  %74 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %76, align 8
  %77 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %78 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32* %80, i32** %84, align 8
  %85 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %87 = call i32 @ivtv_setscl(%struct.ivtv* %86, i32 1)
  %88 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %89 = call i32 @ivtv_setsda(%struct.ivtv* %88, i32 1)
  %90 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %91 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %32
  %96 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %97 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %96, i32 0, i32 1
  %98 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %97)
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %32
  %100 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %101 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %100, i32 0, i32 1
  %102 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %101)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %11
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @IVTV_ERR(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
