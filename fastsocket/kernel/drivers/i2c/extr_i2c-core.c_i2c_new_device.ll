; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_4__, %struct.i2c_adapter*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@i2c_bus_type = common dso_local global i32 0, align 4
@i2c_client_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d-%04x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"client [%s] registered with bus id %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to register i2c client %s at 0x%02x (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.i2c_client* @kzalloc(i32 56, i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = icmp ne %struct.i2c_client* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.i2c_client* null, %struct.i2c_client** %3, align 8
  br label %118

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 3
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %16, align 8
  %17 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %27, %13
  %36 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strlcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @i2c_check_addr(%struct.i2c_adapter* %58, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %105

66:                                               ; preds = %35
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 3
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %68, align 8
  %70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %69, i32 0, i32 0
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32* %70, i32** %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32* @i2c_bus_type, i32** %76, align 8
  %77 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32* @i2c_client_type, i32** %79, align 8
  %80 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 2
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %83 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %82)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_set_name(%struct.TYPE_4__* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 2
  %90 = call i32 @device_register(%struct.TYPE_4__* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %66
  br label %105

94:                                               ; preds = %66
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %95, i32 0, i32 0
  %97 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 2
  %102 = call i32 @dev_name(%struct.TYPE_4__* %101)
  %103 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %104, %struct.i2c_client** %3, align 8
  br label %118

105:                                              ; preds = %93, %65
  %106 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %106, i32 0, i32 0
  %108 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %113, i32 %114)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %117 = call i32 @kfree(%struct.i2c_client* %116)
  store %struct.i2c_client* null, %struct.i2c_client** %3, align 8
  br label %118

118:                                              ; preds = %105, %94, %12
  %119 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  ret %struct.i2c_client* %119
}

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_check_addr(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
