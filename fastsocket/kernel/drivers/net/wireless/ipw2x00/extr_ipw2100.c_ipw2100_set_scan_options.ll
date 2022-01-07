; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_scan_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_scan_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.host_command = type { i32, i32*, i32, i32 }

@SET_SCAN_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"setting scan options\0A\00", align 1
@CFG_ASSOCIATE = common dso_local global i32 0, align 4
@IPW_SCAN_NOASSOCIATE = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@IPW_SCAN_MIXED_CELL = common dso_local global i32 0, align 4
@CFG_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IPW_SCAN_PASSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SET_SCAN_OPTIONS 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_set_scan_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_scan_options(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca %struct.host_command, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %5 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 0
  store i32 8, i32* %5, align 8
  %6 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 2
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 3
  %9 = load i32, i32* @SET_SCAN_OPTIONS, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CFG_ASSOCIATE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @IPW_SCAN_NOASSOCIATE, align 4
  %23 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SEC_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @IPW_SCAN_MIXED_CELL, align 4
  %48 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %38, %28
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CFG_PASSIVE_SCAN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i32, i32* @IPW_SCAN_PASSIVE, align 4
  %62 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %69 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %75 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %74, %struct.host_command* %3)
  store i32 %75, i32* %4, align 4
  %76 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @IPW_DEBUG_SCAN(i8*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
