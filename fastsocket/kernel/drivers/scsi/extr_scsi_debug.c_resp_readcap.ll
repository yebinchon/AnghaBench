; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_readcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_readcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_READCAP_ARR_SZ = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_readcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_readcap(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %11 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %17 = call i32 @check_readiness(%struct.scsi_cmnd* %15, i32 1, %struct.sdebug_dev_info* %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

21:                                               ; preds = %2
  %22 = call i32 (...) @get_sdebug_capacity()
  store i32 %22, i32* @sdebug_capacity, align 4
  %23 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %24 = call i32 @memset(i8* %14, i32 0, i32 %23)
  %25 = load i32, i32* @sdebug_capacity, align 4
  %26 = icmp ult i32 %25, -1
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load i32, i32* @sdebug_capacity, align 4
  %29 = sub i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = lshr i32 %30, 24
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %32, i8* %33, align 16
  %34 = load i32, i32* %8, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %8, align 4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %42, i8* %43, align 2
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %46, i8* %47, align 1
  br label %53

48:                                               ; preds = %21
  %49 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 -1, i8* %49, align 16
  %50 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 -1, i8* %50, align 1
  %51 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 -1, i8* %51, align 2
  %52 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 -1, i8* %52, align 1
  br label %53

53:                                               ; preds = %48, %27
  %54 = load i32, i32* @scsi_debug_sector_size, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds i8, i8* %14, i64 6
  store i8 %57, i8* %58, align 2
  %59 = load i32, i32* @scsi_debug_sector_size, align 4
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, i8* %14, i64 7
  store i8 %61, i8* %62, align 1
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %65 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %63, i8* %14, i32 %64)
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %53, %19
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
