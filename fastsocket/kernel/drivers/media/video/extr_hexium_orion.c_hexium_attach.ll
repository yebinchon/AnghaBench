; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_orion.c_hexium_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_orion.c_hexium_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.saa7146_dev = type { i64 }
%struct.saa7146_pci_extension_data = type { i32 }
%struct.hexium = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@vv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hexium orion\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"hexium_orion: cannot register capture v4l2 device. skipping.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"hexium_orion: found 'hexium orion' frame grabber-%d.\0A\00", align 1
@hexium_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @hexium_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.hexium*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hexium*
  store %struct.hexium* %10, %struct.hexium** %6, align 8
  %11 = call i32 @DEB_EE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %12, %struct.TYPE_5__* @vv_data)
  %14 = load i32, i32* @vidioc_enum_input, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 2), align 4
  %15 = load i32, i32* @vidioc_g_input, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 1), align 4
  %16 = load i32, i32* @vidioc_s_input, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 0), align 4
  %17 = load %struct.hexium*, %struct.hexium** %6, align 8
  %18 = getelementptr inbounds %struct.hexium, %struct.hexium* %17, i32 0, i32 1
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %20 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %21 = call i64 @saa7146_register_device(i32* %18, %struct.saa7146_dev* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @hexium_num, align 4
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @hexium_num, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @hexium_num, align 4
  %30 = load %struct.hexium*, %struct.hexium** %6, align 8
  %31 = getelementptr inbounds %struct.hexium, %struct.hexium* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %33 = call i32 @hexium_init_done(%struct.saa7146_dev* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.TYPE_5__*) #1

declare dso_local i64 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @hexium_init_done(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
