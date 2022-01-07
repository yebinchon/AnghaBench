; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t86_ops* }
%struct.m48t86_ops = type { i8 (i32)* }

@M48T86_REG_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mode\09\09: %s\0A\00", align 1
@M48T86_REG_B_DM = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@M48T86_REG_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"battery\09\09: %s\0A\00", align 1
@M48T86_REG_D_VRT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @m48t86_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.m48t86_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.m48t86_ops*, %struct.m48t86_ops** %12, align 8
  store %struct.m48t86_ops* %13, %struct.m48t86_ops** %7, align 8
  %14 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %15 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %14, i32 0, i32 0
  %16 = load i8 (i32)*, i8 (i32)** %15, align 8
  %17 = load i32, i32* @M48T86_REG_B, align 4
  %18 = call zeroext i8 %16(i32 %17)
  store i8 %18, i8* %5, align 1
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @M48T86_REG_B_DM, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %30 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %29, i32 0, i32 0
  %31 = load i8 (i32)*, i8 (i32)** %30, align 8
  %32 = load i32, i32* @M48T86_REG_D, align 4
  %33 = call zeroext i8 %31(i32 %32)
  store i8 %33, i8* %5, align 1
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @M48T86_REG_D_VRT, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %43 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
