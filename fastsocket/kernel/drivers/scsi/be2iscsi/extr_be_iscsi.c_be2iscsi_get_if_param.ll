; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_be2iscsi_get_if_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_be2iscsi_get_if_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.iscsi_iface = type { i64 }
%struct.be_cmd_get_if_info_resp = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BE2_IPV4 = common dso_local global i32 0, align 4
@ISCSI_IFACE_TYPE_IPV6 = common dso_local global i64 0, align 8
@BE2_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"static\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dhcp\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BEISCSI_VLAN_DISABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Disabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ISCSI_MAX_VLAN_ID = common dso_local global i32 0, align 4
@ISCSI_MAX_VLAN_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.iscsi_iface*, i32, i8*)* @be2iscsi_get_if_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be2iscsi_get_if_param(%struct.beiscsi_hba* %0, %struct.iscsi_iface* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.iscsi_iface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.be_cmd_get_if_info_resp, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.iscsi_iface* %1, %struct.iscsi_iface** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @BE2_IPV4, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @memset(%struct.be_cmd_get_if_info_resp* %10, i32 0, i32 16)
  %15 = load %struct.iscsi_iface*, %struct.iscsi_iface** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISCSI_IFACE_TYPE_IPV6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @BE2_IPV6, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @mgmt_get_if_info(%struct.beiscsi_hba* %23, i32 %24, %struct.be_cmd_get_if_info_resp* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %100 [
    i32 134, label %32
    i32 131, label %37
    i32 133, label %42
    i32 132, label %53
    i32 130, label %58
    i32 129, label %67
    i32 128, label %83
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %11, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %11, align 4
  br label %102

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %102

53:                                               ; preds = %30
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %11, align 4
  br label %102

58:                                               ; preds = %30
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %11, align 4
  br label %102

67:                                               ; preds = %30
  %68 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %104

75:                                               ; preds = %67
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISCSI_MAX_VLAN_ID, align 4
  %80 = and i32 %78, %79
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %75
  br label %102

83:                                               ; preds = %30
  %84 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %104

91:                                               ; preds = %83
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 13
  %96 = load i32, i32* @ISCSI_MAX_VLAN_PRIORITY, align 4
  %97 = and i32 %95, %96
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %91
  br label %102

100:                                              ; preds = %30
  %101 = call i32 @WARN_ON(i32 1)
  br label %102

102:                                              ; preds = %100, %99, %82, %58, %53, %52, %37, %32
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %88, %72, %28
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.be_cmd_get_if_info_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_if_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
