; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_load_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_load_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }

@CD_CHANGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"entering cdrom_load_unload()\0A\00", align 1
@CGC_DATA_NONE = common dso_local global i32 0, align 4
@GPCMD_LOAD_UNLOAD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GPCMD_TEST_UNIT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_load_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_load_unload(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_command, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CD_CHANGER, align 4
  %8 = call i32 @cdinfo(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %77

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @CGC_DATA_NONE, align 4
  %19 = call i32 @init_cdrom_command(%struct.packet_command* %6, i32* null, i32 0, i32 %18)
  %20 = load i32, i32* @GPCMD_LOAD_UNLOAD, align 4
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = add nsw i32 2, %26
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 60, %35
  %37 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %39 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %17
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 -1, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i32, i32* @GPCMD_TEST_UNIT_READY, align 4
  %47 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %5, align 4
  br label %65

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 3, %64 ]
  %67 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %68 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %42, %17
  %70 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %71 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %73, align 8
  %75 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %76 = call i32 %74(%struct.cdrom_device_info* %75, %struct.packet_command* %6)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
