; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i64, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLARIION_SHORT_TRESPASS = common dso_local global i32 0, align 4
@CLARIION_HONOR_RESERVATIONS = common dso_local global i32 0, align 4
@CLARIION_LUN_OWNED = common dso_local global i64 0, align 8
@CLARIION_LUN_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @clariion_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_set_params(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clariion_dh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = call %struct.clariion_dh_data* @get_clariion_data(%struct.scsi_device* %12)
  store %struct.clariion_dh_data* %13, %struct.clariion_dh_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %115

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %26

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %115

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %43

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %115

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %64 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %65 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %75

68:                                               ; preds = %59
  %69 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %72 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @CLARIION_HONOR_RESERVATIONS, align 4
  %80 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %81 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %91

84:                                               ; preds = %75
  %85 = load i32, i32* @CLARIION_HONOR_RESERVATIONS, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %88 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %93 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CLARIION_LUN_OWNED, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %113

98:                                               ; preds = %91
  %99 = load i64, i64* @CLARIION_LUN_UNINITIALIZED, align 8
  %100 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %101 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %103 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %104 = call i32 @send_trespass_cmd(%struct.scsi_device* %102, %struct.clariion_dh_data* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @SCSI_DH_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %111 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %112 = call i32 @clariion_send_inquiry(%struct.scsi_device* %110, %struct.clariion_dh_data* %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %108, %97
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %56, %39, %22
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.clariion_dh_data* @get_clariion_data(%struct.scsi_device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @send_trespass_cmd(%struct.scsi_device*, %struct.clariion_dh_data*) #1

declare dso_local i32 @clariion_send_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
