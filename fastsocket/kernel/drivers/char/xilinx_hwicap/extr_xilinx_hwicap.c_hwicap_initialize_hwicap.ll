; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_initialize_hwicap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_initialize_hwicap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [14 x i8] c"initializing\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Reset...\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Desync...\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Reading IDCODE...\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"IDCODE = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwicap_drvdata*)* @hwicap_initialize_hwicap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_initialize_hwicap(%struct.hwicap_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwicap_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %3, align 8
  %6 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i32, i8*, ...) @dev_dbg(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %15 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.hwicap_drvdata*)**
  %19 = load i32 (%struct.hwicap_drvdata*)*, i32 (%struct.hwicap_drvdata*)** %18, align 8
  %20 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %21 = call i32 %19(%struct.hwicap_drvdata* %20)
  %22 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %27 = call i32 @hwicap_command_desync(%struct.hwicap_drvdata* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %1
  %33 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %38 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %39 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hwicap_get_configuration_register(%struct.hwicap_drvdata* %37, i32 %42, i32* %5)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %45 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %32
  %54 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %55 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %3, align 8
  %59 = call i32 @hwicap_command_desync(%struct.hwicap_drvdata* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62, %51, %30
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @hwicap_command_desync(%struct.hwicap_drvdata*) #1

declare dso_local i32 @hwicap_get_configuration_register(%struct.hwicap_drvdata*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
