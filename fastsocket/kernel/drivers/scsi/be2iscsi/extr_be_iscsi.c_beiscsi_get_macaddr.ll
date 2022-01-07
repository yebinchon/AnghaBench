; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_nic_conf_resp = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_macaddr(i8* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.be_cmd_get_nic_conf_resp, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @strlen(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @sysfs_format_mac(i8* %14, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = call i32 @memset(%struct.be_cmd_get_nic_conf_resp* %6, i32 0, i32 4)
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %23 = call i32 @mgmt_get_nic_conf(%struct.beiscsi_hba* %22, %struct.be_cmd_get_nic_conf_resp* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.be_cmd_get_nic_conf_resp, %struct.be_cmd_get_nic_conf_resp* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %33, i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @sysfs_format_mac(i8* %36, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %26, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.be_cmd_get_nic_conf_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_nic_conf(%struct.beiscsi_hba*, %struct.be_cmd_get_nic_conf_resp*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
