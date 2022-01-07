; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_dvd_read_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_dvd_read_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.packet_command = type { i32 }

@CD_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c": Invalid DVD structure read requested (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*)* @dvd_read_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_read_struct(%struct.cdrom_device_info* %0, %struct.TYPE_8__* %1, %struct.packet_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.packet_command*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.packet_command* %2, %struct.packet_command** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 128, label %11
    i32 131, label %16
    i32 130, label %21
    i32 132, label %26
    i32 129, label %31
  ]

11:                                               ; preds = %3
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %15 = call i32 @dvd_read_physical(%struct.cdrom_device_info* %12, %struct.TYPE_8__* %13, %struct.packet_command* %14)
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %20 = call i32 @dvd_read_copyright(%struct.cdrom_device_info* %17, %struct.TYPE_8__* %18, %struct.packet_command* %19)
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %25 = call i32 @dvd_read_disckey(%struct.cdrom_device_info* %22, %struct.TYPE_8__* %23, %struct.packet_command* %24)
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %30 = call i32 @dvd_read_bca(%struct.cdrom_device_info* %27, %struct.TYPE_8__* %28, %struct.packet_command* %29)
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %35 = call i32 @dvd_read_manufact(%struct.cdrom_device_info* %32, %struct.TYPE_8__* %33, %struct.packet_command* %34)
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load i32, i32* @CD_WARNING, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cdinfo(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %31, %26, %21, %16, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @dvd_read_physical(%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*) #1

declare dso_local i32 @dvd_read_copyright(%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*) #1

declare dso_local i32 @dvd_read_disckey(%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*) #1

declare dso_local i32 @dvd_read_bca(%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*) #1

declare dso_local i32 @dvd_read_manufact(%struct.cdrom_device_info*, %struct.TYPE_8__*, %struct.packet_command*) #1

declare dso_local i32 @cdinfo(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
