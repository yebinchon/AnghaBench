; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_show_boot_eth_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_show_boot_eth_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SYSFS_FLAG_FW_SEL_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@MAC_ADDR_LEN = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @qla4xxx_show_boot_eth_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_show_boot_eth_info(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %11, %struct.scsi_qla_host** %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %28 [
    i32 130, label %14
    i32 129, label %18
    i32 128, label %21
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @SYSFS_FLAG_FW_SEL_BOOT, align 4
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %9, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAC_ADDR_LEN, align 4
  %27 = call i32 @sysfs_format_mac(i8* %22, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %21, %18, %14
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
