; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_fw.c_symbol_dl_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_fw.c_symbol_dl_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.device* }
%struct.device = type { i32 }
%struct.fw_info = type { i32, i32 }
%struct.firmware = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Cannot find firmware: %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Primary firmware download failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Secondary firmware download failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*, %struct.fw_info*)* @symbol_dl_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol_dl_firmware(%struct.orinoco_private* %0, %struct.fw_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca %struct.fw_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %4, align 8
  store %struct.fw_info* %1, %struct.fw_info** %5, align 8
  %9 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %10 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %13 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %12, i32 1)
  %14 = icmp ne %struct.firmware* %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %17 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %20 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  %22 = call i64 @request_firmware(%struct.firmware** %8, i32 %18, %struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %27 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %116

32:                                               ; preds = %15
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %35 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %34, i32 1)
  store %struct.firmware* %35, %struct.firmware** %8, align 8
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %38 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %39 = load %struct.firmware*, %struct.firmware** %8, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.firmware*, %struct.firmware** %8, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.firmware*, %struct.firmware** %8, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @symbol_dl_image(%struct.orinoco_private* %37, %struct.fw_info* %38, i64 %41, i64 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %51 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %50, i32 1)
  %52 = icmp ne %struct.firmware* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load %struct.firmware*, %struct.firmware** %8, align 8
  %55 = call i32 @release_firmware(%struct.firmware* %54)
  br label %56

56:                                               ; preds = %53, %36
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %116

63:                                               ; preds = %56
  %64 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %65 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %64, i32 0)
  %66 = icmp ne %struct.firmware* %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %69 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %72 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %71, i32 0, i32 0
  %73 = load %struct.device*, %struct.device** %72, align 8
  %74 = call i64 @request_firmware(%struct.firmware** %8, i32 %70, %struct.device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %79 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %116

84:                                               ; preds = %67
  br label %88

85:                                               ; preds = %63
  %86 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %87 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %86, i32 0)
  store %struct.firmware* %87, %struct.firmware** %8, align 8
  br label %88

88:                                               ; preds = %85, %84
  %89 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %90 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %91 = load %struct.firmware*, %struct.firmware** %8, align 8
  %92 = getelementptr inbounds %struct.firmware, %struct.firmware* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.firmware*, %struct.firmware** %8, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.firmware*, %struct.firmware** %8, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = call i32 @symbol_dl_image(%struct.orinoco_private* %89, %struct.fw_info* %90, i64 %93, i64 %100, i32 1)
  store i32 %101, i32* %7, align 4
  %102 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %103 = call %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private* %102, i32 0)
  %104 = icmp ne %struct.firmware* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %88
  %106 = load %struct.firmware*, %struct.firmware** %8, align 8
  %107 = call i32 @release_firmware(%struct.firmware* %106)
  br label %108

108:                                              ; preds = %105, %88
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %76, %59, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.firmware* @orinoco_cached_fw_get(%struct.orinoco_private*, i32) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @symbol_dl_image(%struct.orinoco_private*, %struct.fw_info*, i64, i64, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
