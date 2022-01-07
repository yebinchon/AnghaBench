; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_t4_os_portmod_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_t4_os_portmod_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.port_info = type { i64 }

@t4_os_portmod_changed.mod_str = internal global [7 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"passive DA\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"active DA\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LRM\00", align 1
@FW_PORT_MOD_TYPE_NONE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"port module unplugged\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s module inserted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_os_portmod_changed(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %9, i64 %11
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.port_info* @netdev_priv(%struct.net_device* %14)
  store %struct.port_info* %15, %struct.port_info** %6, align 8
  %16 = load %struct.port_info*, %struct.port_info** %6, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FW_PORT_MOD_TYPE_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.port_info*, %struct.port_info** %6, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @t4_os_portmod_changed.mod_str, i64 0, i64 0))
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.port_info*, %struct.port_info** %6, align 8
  %33 = getelementptr inbounds %struct.port_info, %struct.port_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [7 x i8*], [7 x i8*]* @t4_os_portmod_changed.mod_str, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %30, %24
  br label %39

39:                                               ; preds = %38, %21
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
