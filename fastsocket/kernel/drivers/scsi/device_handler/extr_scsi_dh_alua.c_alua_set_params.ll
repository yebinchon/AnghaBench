; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALUA_OPTIMIZE_STPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @alua_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_set_params(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alua_dh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = call %struct.alua_dh_data* @get_alua_data(%struct.scsi_device* %11)
  store %struct.alua_dh_data* %12, %struct.alua_dh_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  %28 = load i8, i8* %26, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %46 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %47 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %54 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %38, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.alua_dh_data* @get_alua_data(%struct.scsi_device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
