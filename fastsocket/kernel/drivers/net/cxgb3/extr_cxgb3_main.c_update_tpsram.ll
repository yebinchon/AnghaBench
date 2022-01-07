; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_update_tpsram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_update_tpsram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32 }

@TPSRAM_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"could not load TP SRAM: unable to load %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"successful update of protocol engine to %d.%d.%d\0A\00", align 1
@TP_VERSION_MAJOR = common dso_local global i32 0, align 4
@TP_VERSION_MINOR = common dso_local global i32 0, align 4
@TP_VERSION_MICRO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to update of protocol engine %d.%d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"loading protocol SRAM failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @update_tpsram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tpsram(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = call signext i8 @t3rev2char(%struct.adapter* %13)
  store i8 %14, i8* %8, align 1
  %15 = load i8, i8* %8, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = load i8*, i8** @TPSRAM_NAME, align 8
  %21 = load i8, i8* %8, align 1
  %22 = call i32 @snprintf(i8* %19, i32 64, i8* %20, i8 signext %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @request_firmware(%struct.firmware** %4, i8* %23, %struct.device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %18
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load %struct.firmware*, %struct.firmware** %4, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.firmware*, %struct.firmware** %4, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @t3_check_tpsram(%struct.adapter* %34, i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %72

45:                                               ; preds = %33
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load %struct.firmware*, %struct.firmware** %4, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @t3_set_proto_sram(%struct.adapter* %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* @TP_VERSION_MAJOR, align 4
  %56 = load i32, i32* @TP_VERSION_MINOR, align 4
  %57 = load i32, i32* @TP_VERSION_MICRO, align 4
  %58 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %65

59:                                               ; preds = %45
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* @TP_VERSION_MAJOR, align 4
  %62 = load i32, i32* @TP_VERSION_MINOR, align 4
  %63 = load i32, i32* @TP_VERSION_MICRO, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %44
  %73 = load %struct.firmware*, %struct.firmware** %4, align 8
  %74 = call i32 @release_firmware(%struct.firmware* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %28, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local signext i8 @t3rev2char(%struct.adapter*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @t3_check_tpsram(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_set_proto_sram(%struct.adapter*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
