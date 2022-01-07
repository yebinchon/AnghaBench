; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tmp401_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"TMP401\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMP411\00", align 1
@__const.tmp401_probe.names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmp401_attr = common dso_local global %struct.TYPE_4__* null, align 8
@tmp411 = common dso_local global i32 0, align 4
@tmp411_attr = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Detected TI %s chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp401_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp401_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmp401_data*, align 8
  %9 = alloca [2 x i8*], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.tmp401_probe.names to i8*), i64 16, i1 false)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tmp401_data* @kzalloc(i32 24, i32 %11)
  store %struct.tmp401_data* %12, %struct.tmp401_data** %8, align 8
  %13 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %14 = icmp ne %struct.tmp401_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.tmp401_data* %20)
  %22 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %23 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %29 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @tmp401_init_client(%struct.i2c_client* %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %50, %18
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp401_attr, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp401_attr, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @device_create_file(i32* %39, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %111

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %55 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @tmp411, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp411_attr, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp411_attr, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @device_create_file(i32* %67, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %111

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %60

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = call i32* @hwmon_device_register(i32* %84)
  %86 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %87 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %89 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %95 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %99 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  br label %111

100:                                              ; preds = %82
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %104 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  store i32 0, i32* %3, align 4
  br label %115

111:                                              ; preds = %93, %76, %48
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = call i32 @tmp401_remove(%struct.i2c_client* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %100, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.tmp401_data* @kzalloc(i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tmp401_data*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @tmp401_init_client(%struct.i2c_client*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @device_create_file(i32*, i32*) #2

declare dso_local i32* @hwmon_device_register(i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*) #2

declare dso_local i32 @tmp401_remove(%struct.i2c_client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
