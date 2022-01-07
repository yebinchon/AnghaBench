; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_be2iscsi_iface_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_be2iscsi_iface_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iface = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@BE2_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be2iscsi_iface_get_param(%struct.iscsi_iface* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.iscsi_iface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.beiscsi_hba*, align 8
  %11 = alloca %struct.be_cmd_get_def_gateway_resp, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_iface* %0, %struct.iscsi_iface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.iscsi_iface*, %struct.iscsi_iface** %5, align 8
  %14 = call %struct.Scsi_Host* @iscsi_iface_to_shost(%struct.iscsi_iface* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %9, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %16 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %10, align 8
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %42 [
    i32 135, label %20
    i32 132, label %20
    i32 134, label %20
    i32 131, label %20
    i32 130, label %20
    i32 129, label %20
    i32 128, label %20
    i32 136, label %26
    i32 133, label %29
  ]

20:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %22 = load %struct.iscsi_iface*, %struct.iscsi_iface** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @be2iscsi_get_if_param(%struct.beiscsi_hba* %21, %struct.iscsi_iface* %22, i32 %23, i8* %24)
  store i32 %25, i32* %12, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %12, align 4
  br label %45

29:                                               ; preds = %4
  %30 = call i32 @memset(%struct.be_cmd_get_def_gateway_resp* %11, i32 0, i32 4)
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %32 = load i32, i32* @BE2_IPV4, align 4
  %33 = call i32 @mgmt_get_gateway(%struct.beiscsi_hba* %31, i32 %32, %struct.be_cmd_get_def_gateway_resp* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %29
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %41, %26, %20
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local %struct.Scsi_Host* @iscsi_iface_to_shost(%struct.iscsi_iface*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @be2iscsi_get_if_param(%struct.beiscsi_hba*, %struct.iscsi_iface*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.be_cmd_get_def_gateway_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_gateway(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_def_gateway_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
