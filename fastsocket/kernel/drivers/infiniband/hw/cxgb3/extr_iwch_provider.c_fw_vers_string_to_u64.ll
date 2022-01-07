; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_fw_vers_string_to_u64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_fw_vers_string_to_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, %struct.ethtool_drvinfo*)* }
%struct.ethtool_drvinfo = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwch_dev*)* @fw_vers_string_to_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_vers_string_to_u64(%struct.iwch_dev* %0) #0 {
  %2 = alloca %struct.iwch_dev*, align 8
  %3 = alloca %struct.ethtool_drvinfo, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %2, align 8
  %10 = load %struct.iwch_dev*, %struct.iwch_dev** %2, align 8
  %11 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*, %struct.ethtool_drvinfo*)** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 %20(%struct.net_device* %21, %struct.ethtool_drvinfo* %3)
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %3, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %6, align 8
  %26 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %29 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %32 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65535
  %37 = shl i32 %36, 32
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 65535
  %40 = shl i32 %39, 16
  %41 = or i32 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 65535
  %44 = or i32 %41, %43
  ret i32 %44
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
