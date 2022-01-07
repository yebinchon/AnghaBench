; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_set_fsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_set_fsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_cfdc = type { i32, i8* }

@FSF_QTCB_DOWNLOAD_CONTROL_FILE = common dso_local global i8* null, align 8
@FSF_CFDC_OPTION_NORMAL_MODE = common dso_local global i32 0, align 4
@FSF_CFDC_OPTION_FORCE = common dso_local global i32 0, align 4
@FSF_CFDC_OPTION_FULL_ACCESS = common dso_local global i32 0, align 4
@FSF_CFDC_OPTION_RESTRICTED_ACCESS = common dso_local global i32 0, align 4
@FSF_QTCB_UPLOAD_CONTROL_FILE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_cfdc*, i32)* @zfcp_cfdc_set_fsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_cfdc_set_fsf(%struct.zfcp_fsf_cfdc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_fsf_cfdc*, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_fsf_cfdc* %0, %struct.zfcp_fsf_cfdc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 131, label %7
    i32 132, label %14
    i32 130, label %21
    i32 129, label %28
    i32 128, label %35
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** @FSF_QTCB_DOWNLOAD_CONTROL_FILE, align 8
  %9 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @FSF_CFDC_OPTION_NORMAL_MODE, align 4
  %12 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  br label %44

14:                                               ; preds = %2
  %15 = load i8*, i8** @FSF_QTCB_DOWNLOAD_CONTROL_FILE, align 8
  %16 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @FSF_CFDC_OPTION_FORCE, align 4
  %19 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %44

21:                                               ; preds = %2
  %22 = load i8*, i8** @FSF_QTCB_DOWNLOAD_CONTROL_FILE, align 8
  %23 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %24 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @FSF_CFDC_OPTION_FULL_ACCESS, align 4
  %26 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %44

28:                                               ; preds = %2
  %29 = load i8*, i8** @FSF_QTCB_DOWNLOAD_CONTROL_FILE, align 8
  %30 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @FSF_CFDC_OPTION_RESTRICTED_ACCESS, align 4
  %33 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %34 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %44

35:                                               ; preds = %2
  %36 = load i8*, i8** @FSF_QTCB_UPLOAD_CONTROL_FILE, align 8
  %37 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %35, %28, %21, %14, %7
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
