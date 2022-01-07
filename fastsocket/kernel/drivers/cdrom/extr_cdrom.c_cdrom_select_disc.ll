; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_select_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_select_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.cdrom_changer_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CD_CHANGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"entering cdrom_select_disc()\0A\00", align 1
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@CDSL_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@keeplocked = common dso_local global i64 0, align 8
@CDSL_CURRENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_select_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_select_disc(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_changer_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CD_CHANGER, align 4
  %10 = call i32 @cdinfo(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CDC_SELECT_DISC, align 4
  %12 = call i32 @CDROM_CAN(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.cdrom_device_info*, i32)**
  %23 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %22, align 8
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.cdrom_device_info* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CDSL_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %32 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %31, i32 0, i32 0
  store i32 3, i32* %32, align 8
  %33 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %34 = call i32 @cdrom_load_unload(%struct.cdrom_device_info* %33, i32 -1)
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %17
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.cdrom_changer_info* @kmalloc(i32 4, i32 %36)
  store %struct.cdrom_changer_info* %37, %struct.cdrom_changer_info** %6, align 8
  %38 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %39 = icmp ne %struct.cdrom_changer_info* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %35
  %44 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %45 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %46 = call i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %44, %struct.cdrom_changer_info* %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %50 = call i32 @kfree(%struct.cdrom_changer_info* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %43
  %53 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %54 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %58 = call i32 @kfree(%struct.cdrom_changer_info* %57)
  %59 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %60 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i64, i64* @keeplocked, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63, %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CDSL_CURRENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %92

72:                                               ; preds = %66
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %92

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @CDSL_CURRENT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %83 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %82, i32 0, i32 0
  store i32 3, i32* %83, align 8
  %84 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @cdrom_load_unload(%struct.cdrom_device_info* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88, %72, %70, %48, %40, %30, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_load_unload(%struct.cdrom_device_info*, i32) #1

declare dso_local %struct.cdrom_changer_info* @kmalloc(i32, i32) #1

declare dso_local i32 @cdrom_read_mech_status(%struct.cdrom_device_info*, %struct.cdrom_changer_info*) #1

declare dso_local i32 @kfree(%struct.cdrom_changer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
