; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_adopt_running_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_adopt_running_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp_gen_header = type { i32 }

@MCP_HEADER_PTR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Running firmware has bad header offset (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not malloc firmware hdr\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Adopting fw %d.%d.%d: working around rx filter bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_adopt_running_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_adopt_running_firmware(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.mcp_gen_header*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %9 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %10 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i64 4, i64* %6, align 8
  %13 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %14 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MCP_HEADER_PTR_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = call i64 @swab32(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 4
  %26 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %27 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %1
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %95

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mcp_gen_header* @kmalloc(i64 4, i32 %38)
  store %struct.mcp_gen_header* %39, %struct.mcp_gen_header** %4, align 8
  %40 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %41 = icmp eq %struct.mcp_gen_header* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %95

47:                                               ; preds = %37
  %48 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %49 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %50 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @memcpy_fromio(%struct.mcp_gen_header* %48, i64 %53, i64 4)
  %55 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %56 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %57 = call i32 @myri10ge_validate_firmware(%struct.myri10ge_priv* %55, %struct.mcp_gen_header* %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %59 = call i32 @kfree(%struct.mcp_gen_header* %58)
  %60 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %61 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %93

64:                                               ; preds = %47
  %65 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %66 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %71 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 4
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %76 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp sle i32 %77, 11
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %81 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %80, i32 0, i32 4
  store i32 1, i32* %81, align 4
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %84 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %87 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %90 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_warn(%struct.device* %82, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %79, %74, %69, %64, %47
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %42, %30
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mcp_gen_header* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.mcp_gen_header*, i64, i64) #1

declare dso_local i32 @myri10ge_validate_firmware(%struct.myri10ge_priv*, %struct.mcp_gen_header*) #1

declare dso_local i32 @kfree(%struct.mcp_gen_header*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
