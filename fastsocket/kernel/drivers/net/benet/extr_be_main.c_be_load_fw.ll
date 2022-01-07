; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_load_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Firmware load not allowed (interface is down)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Flashing firmware file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_load_fw(%struct.be_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netif_running(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @request_firmware(%struct.firmware** %6, i32* %20, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %60

29:                                               ; preds = %19
  %30 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  %36 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %37 = call i64 @lancer_chip(%struct.be_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %41 = load %struct.firmware*, %struct.firmware** %6, align 8
  %42 = call i32 @lancer_fw_download(%struct.be_adapter* %40, %struct.firmware* %41)
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %29
  %44 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %45 = load %struct.firmware*, %struct.firmware** %6, align 8
  %46 = call i32 @be_fw_download(%struct.be_adapter* %44, %struct.firmware* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %52 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be_cmd_get_fw_ver(%struct.be_adapter* %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  br label %60

60:                                               ; preds = %59, %28
  %61 = load %struct.firmware*, %struct.firmware** %6, align 8
  %62 = call i32 @release_firmware(%struct.firmware* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_fw_download(%struct.be_adapter*, %struct.firmware*) #1

declare dso_local i32 @be_fw_download(%struct.be_adapter*, %struct.firmware*) #1

declare dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
