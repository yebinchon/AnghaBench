; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_command = type { i32, i64*, i32, i32 }

@CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CHANNEL: %d\0A\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@REG_MIN_CHANNEL = common dso_local global i64 0, align 8
@REG_MAX_CHANNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set channel to %d\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i64, i32)* @ipw2100_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_channel(%struct.ipw2100_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_command, align 8
  %9 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  store i64* null, i64** %11, align 8
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 3
  %14 = load i32, i32* @CHANNEL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IW_MODE_INFRA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @REG_MIN_CHANNEL, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @REG_MAX_CHANNEL, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %94

43:                                               ; preds = %36, %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %48 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %94

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %56 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %55, %struct.host_command* %8)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %94

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %68 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %82 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %87 = call i32 @ipw2100_enable_adapter(%struct.ipw2100_priv* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %79
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %59, %51, %40, %28
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @IPW_DEBUG_HC(i8*, i64) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i64) #1

declare dso_local i32 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
