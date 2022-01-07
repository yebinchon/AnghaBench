; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_send_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo* }
%struct.ErrorInfo = type { i64 }

@IO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cmd_special_alloc returned NULL!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HPSA_DEVICE_RESET_MSG = common dso_local global i32 0, align 4
@TYPE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*)* @hpsa_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_send_reset(%struct.ctlr_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @IO_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %11 = call %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info* %10)
  store %struct.CommandList* %11, %struct.CommandList** %7, align 8
  %12 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %13 = icmp eq %struct.CommandList* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %24 = load i32, i32* @HPSA_DEVICE_RESET_MSG, align 4
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @TYPE_MSG, align 4
  %28 = call i32 @fill_cmd(%struct.CommandList* %23, i32 %24, %struct.ctlr_info* %25, i32* null, i32 0, i32 0, i8* %26, i32 %27)
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %30 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %31 = call i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info* %29, %struct.CommandList* %30)
  %32 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %33 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %32, i32 0, i32 0
  %34 = load %struct.ErrorInfo*, %struct.ErrorInfo** %33, align 8
  store %struct.ErrorInfo* %34, %struct.ErrorInfo** %8, align 8
  %35 = load %struct.ErrorInfo*, %struct.ErrorInfo** %8, align 8
  %36 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %41 = call i32 @hpsa_scsi_interpret_error(%struct.CommandList* %40)
  store i32 -1, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %22
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %44 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %45 = call i32 @cmd_special_free(%struct.ctlr_info* %43, %struct.CommandList* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.CommandList*) #1

declare dso_local i32 @cmd_special_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
