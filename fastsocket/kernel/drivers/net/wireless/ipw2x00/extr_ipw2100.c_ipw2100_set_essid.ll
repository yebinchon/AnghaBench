; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i64 }
%struct.host_command = type { i32, i64, i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@SSID = common dso_local global i32 0, align 4
@ssid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SSID: '%s'\0A\00", align 1
@CFG_ASSOCIATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i8*, i32, i32)* @ipw2100_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_essid(%struct.ipw2100_priv* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw2100_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.host_command, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 0
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 3
  %23 = load i32, i32* @SSID, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* @ssid, align 4
  %25 = call i32 @DECLARE_SSID_BUF(i32 %24)
  %26 = load i32, i32* @ssid, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @print_ssid(i32 %26, i8* %27, i32 %28)
  %30 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memcpy(i64 %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %44 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %119

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %50
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CFG_ASSOCIATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %75, %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 24, %69
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %80 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %53, %50
  %82 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %83 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %82, %struct.host_command* %11)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @memset(i64 %92, i32 0, i32 %95)
  %97 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @memcpy(i64 %99, i8* %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %105 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %86, %81
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %111 = call i64 @ipw2100_enable_adapter(%struct.ipw2100_priv* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %106
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %47
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*, i32) #1

declare dso_local i32 @print_ssid(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
