; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64, i32, i64, i32, %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32, i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.1*)*, i32 (%struct.cdrom_device_info.2*, i32)* }
%struct.cdrom_device_info.0 = type opaque
%struct.cdrom_device_info.1 = type opaque
%struct.cdrom_device_info.2 = type opaque

@CD_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"entering cdrom_release\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Use count for \22/dev/%s\22 now zero\0A\00", align 1
@CDC_LOCK = common dso_local global i32 0, align 4
@keeplocked = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unlocking door!\0A\00", align 1
@CDO_USE_FFLAGS = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@CDO_AUTO_EJECT = common dso_local global i32 0, align 4
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdrom_release(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %8 = icmp eq %struct.cdrom_device_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %122

10:                                               ; preds = %2
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 4
  %13 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %12, align 8
  store %struct.cdrom_device_ops* %13, %struct.cdrom_device_ops** %5, align 8
  %14 = load i32, i32* @CD_CLOSE, align 4
  %15 = call i32 (i32, i8*, ...) @cdinfo(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %17 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %22 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %10
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i32, i32* @CD_CLOSE, align 4
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %33 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @cdinfo(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %37 = call i32 @cdrom_dvd_rw_close_write(%struct.cdrom_device_info* %36)
  %38 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %39 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CDC_LOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %30
  %45 = load i32, i32* @keeplocked, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @CD_CLOSE, align 4
  %49 = call i32 (i32, i8*, ...) @cdinfo(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %51 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %50, i32 0, i32 3
  %52 = load i32 (%struct.cdrom_device_info.2*, i32)*, i32 (%struct.cdrom_device_info.2*, i32)** %51, align 8
  %53 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %54 = bitcast %struct.cdrom_device_info* %53 to %struct.cdrom_device_info.2*
  %55 = call i32 %52(%struct.cdrom_device_info.2* %54, i32 0)
  br label %56

56:                                               ; preds = %47, %44, %30
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CDO_USE_FFLAGS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FMODE_NDELAY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %64, %57
  %71 = phi i1 [ true, %57 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @CDC_RAM, align 4
  %74 = call i64 @CDROM_CAN(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %78 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %83 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %88 = call i32 @cdrom_close_write(%struct.cdrom_device_info* %87)
  br label %89

89:                                               ; preds = %86, %81, %76, %70
  %90 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %91 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %90, i32 0, i32 2
  %92 = load i32 (%struct.cdrom_device_info.1*)*, i32 (%struct.cdrom_device_info.1*)** %91, align 8
  %93 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %94 = bitcast %struct.cdrom_device_info* %93 to %struct.cdrom_device_info.1*
  %95 = call i32 %92(%struct.cdrom_device_info.1* %94)
  %96 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %97 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %105 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %112 = call i64 @CDROM_CAN(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %116 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %115, i32 0, i32 1
  %117 = load i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.0*, i32)** %116, align 8
  %118 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %119 = bitcast %struct.cdrom_device_info* %118 to %struct.cdrom_device_info.0*
  %120 = call i32 %117(%struct.cdrom_device_info.0* %119, i32 1)
  br label %121

121:                                              ; preds = %114, %110, %103, %100
  br label %122

122:                                              ; preds = %9, %121, %89
  ret void
}

declare dso_local i32 @cdinfo(i32, i8*, ...) #1

declare dso_local i32 @cdrom_dvd_rw_close_write(%struct.cdrom_device_info*) #1

declare dso_local i64 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_close_write(%struct.cdrom_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
