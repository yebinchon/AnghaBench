; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_validate_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_validate_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp_gen_header = type { i32, i32 }

@MCP_TYPE_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Bad firmware type: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@MXGEFW_VERSION_MAJOR = common dso_local global i64 0, align 8
@MXGEFW_VERSION_MINOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Found firmware version %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Driver needs %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, %struct.mcp_gen_header*)* @myri10ge_validate_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_validate_firmware(%struct.myri10ge_priv* %0, %struct.mcp_gen_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca %struct.mcp_gen_header*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store %struct.mcp_gen_header* %1, %struct.mcp_gen_header** %5, align 8
  %7 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %8 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %12 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohl(i32 %13)
  %15 = load i64, i64* @MCP_TYPE_ETH, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %20 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  %23 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %28 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %31 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncpy(i32 %29, i32 %32, i32 4)
  %34 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %35 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %38 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %37, i32 0, i32 0
  %39 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %40 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %39, i32 0, i32 1
  %41 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %42 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %41, i32 0, i32 3
  %43 = call i32 @sscanf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %38, i64* %40, i32* %42)
  %44 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %45 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MXGEFW_VERSION_MAJOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %26
  %50 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %51 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MXGEFW_VERSION_MINOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %49, %26
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %58 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i64, i64* @MXGEFW_VERSION_MAJOR, align 8
  %64 = load i64, i64* @MXGEFW_VERSION_MINOR, align 8
  %65 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %55, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
