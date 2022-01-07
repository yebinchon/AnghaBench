; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_endian_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_endian_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HOST_ENDIAN_LOW_WORD0 = common dso_local global i32 0, align 4
@HOST_ENDIAN_HIGH_WORD1 = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"0492 Unable to allocate memory for issuing SLI_CONFIG_SPECIAL mailbox command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"0493 SLI_CONFIG_SPECIAL mailbox failed with status x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_setup_endian_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_setup_endian_order(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @HOST_ENDIAN_LOW_WORD0, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @HOST_ENDIAN_HIGH_WORD1, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @bf_get(i32 %12, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %64 [
    i32 130, label %18
    i32 128, label %63
    i32 129, label %63
  ]

18:                                               ; preds = %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @mempool_alloc(i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %4, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* @LOG_INIT, align 4
  %31 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %18
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @memset(%struct.TYPE_9__* %35, i32 0, i32 4)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = bitcast [2 x i32]* %7 to i32**
  %41 = call i32 @memcpy(i32* %39, i32** %40, i32 8)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32, i32* @MBX_POLL, align 4
  %45 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %42, %struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MBX_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %34
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_INIT, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %34
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mempool_free(%struct.TYPE_9__* %58, i32 %61)
  br label %65

63:                                               ; preds = %1, %1
  br label %64

64:                                               ; preds = %1, %63
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %27
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @bf_get(i32, i32*) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
