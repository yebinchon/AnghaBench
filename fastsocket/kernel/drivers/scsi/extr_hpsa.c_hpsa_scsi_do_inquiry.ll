; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo* }
%struct.ErrorInfo = type { i64 }

@IO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cmd_special_alloc returned NULL!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HPSA_INQUIRY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i8, i8*, i8)* @hpsa_scsi_do_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %0, i8* %1, i8 zeroext %2, i8* %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.CommandList*, align 8
  %14 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i8 %4, i8* %11, align 1
  %15 = load i32, i32* @IO_OK, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %17 = call %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info* %16)
  store %struct.CommandList* %17, %struct.CommandList** %13, align 8
  %18 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %19 = icmp eq %struct.CommandList* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %63

28:                                               ; preds = %5
  %29 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %30 = load i32, i32* @HPSA_INQUIRY, align 4
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %11, align 1
  %34 = load i8, i8* %9, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @TYPE_CMD, align 4
  %37 = call i32 @fill_cmd(%struct.CommandList* %29, i32 %30, %struct.ctlr_info* %31, i8* %32, i8 zeroext %33, i8 zeroext %34, i8* %35, i32 %36)
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %39 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %40 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %41 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %38, %struct.CommandList* %39, i32 %40)
  %42 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %43 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %42, i32 0, i32 0
  %44 = load %struct.ErrorInfo*, %struct.ErrorInfo** %43, align 8
  store %struct.ErrorInfo* %44, %struct.ErrorInfo** %14, align 8
  %45 = load %struct.ErrorInfo*, %struct.ErrorInfo** %14, align 8
  %46 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %28
  %50 = load %struct.ErrorInfo*, %struct.ErrorInfo** %14, align 8
  %51 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %57 = call i32 @hpsa_scsi_interpret_error(%struct.CommandList* %56)
  store i32 -1, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %49, %28
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %60 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %61 = call i32 @cmd_special_free(%struct.ctlr_info* %59, %struct.CommandList* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %20
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i8*, i8 zeroext, i8 zeroext, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.CommandList*) #1

declare dso_local i32 @cmd_special_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
