; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_store_scan_age.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_store_scan_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@__const.store_scan_age.buffer = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: user supplied invalid value.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"set scan_age = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_scan_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_scan_age(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.ipw2100_priv* %16, %struct.ipw2100_priv** %9, align 8
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  %20 = bitcast [9 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.store_scan_age.buffer, i32 0, i32 0), i64 9, i1 false)
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 8, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 8, %25 ]
  store i64 %27, i64* %12, align 8
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @strncpy(i8* %31, i8* %32, i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 120
  br i1 %41, label %60, label %42

42:                                               ; preds = %26
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 88
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 120
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %80

60:                                               ; preds = %54, %48, %42, %26
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 120
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 88
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %60
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %14, align 8
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 @simple_strtoul(i8* %78, i8** %14, i32 16)
  store i64 %79, i64* %13, align 8
  br label %83

80:                                               ; preds = %54
  %81 = load i8*, i8** %14, align 8
  %82 = call i64 @simple_strtoul(i8* %81, i8** %14, i32 10)
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %104

92:                                               ; preds = %83
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %95 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 8
  %98 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %99 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %92, %87
  %105 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i64, i64* %12, align 8
  ret i64 %106
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
