; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_asc_execute_scsi_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_asc_execute_scsi_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.asc_board = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.asc_scsi_q = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"scp 0x%p\0A\00", align 1
@build_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"adv_build_req ASC_NOERROR\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"adv_build_req ASC_BUSY\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"adv_build_req ASC_ERROR\0A\00", align 1
@exe_noerror = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ExeScsiQueue() ASC_NOERROR\0A\00", align 1
@exe_busy = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"ExeScsiQueue() ASC_ERROR, err_code 0x%x\0A\00", align 1
@exe_error = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"ExeScsiQueue() unknown, err_code 0x%x\0A\00", align 1
@exe_unknown = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @asc_execute_scsi_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asc_execute_scsi_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.asc_scsi_q, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.asc_board* @shost_priv(i32 %15)
  store %struct.asc_board* %16, %struct.asc_board** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %17)
  %19 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %20 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %1
  %23 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %24 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 @asc_build_req(%struct.asc_board* %26, %struct.scsi_cmnd* %27, %struct.asc_scsi_q* %8)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @build_error, align 4
  %38 = call i32 @ASC_STATS(i32 %36, i32 %37)
  store i32 129, i32* %2, align 4
  br label %141

39:                                               ; preds = %22
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i32 @AscExeScsiQueue(%struct.TYPE_9__* %40, %struct.asc_scsi_q* %8)
  store i32 %41, i32* %4, align 4
  %42 = getelementptr inbounds %struct.asc_scsi_q, %struct.asc_scsi_q* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  br label %76

48:                                               ; preds = %1
  %49 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %50 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %9, align 8
  %52 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = call i32 @adv_build_req(%struct.asc_board* %52, %struct.scsi_cmnd* %53, i32** %10)
  switch i32 %54, label %60 [
    i32 128, label %55
    i32 130, label %57
    i32 129, label %59
  ]

55:                                               ; preds = %48
  %56 = call i32 (i32, i8*, ...) @ASC_DBG(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %69

57:                                               ; preds = %48
  %58 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 130, i32* %2, align 4
  br label %141

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %48, %59
  %61 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @build_error, align 4
  %68 = call i32 @ASC_STATS(i32 %66, i32 %67)
  store i32 129, i32* %2, align 4
  br label %141

69:                                               ; preds = %55
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @AdvExeScsiQueue(%struct.TYPE_10__* %70, i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %39
  %77 = load i32, i32* %4, align 4
  switch i32 %77, label %122 [
    i32 128, label %78
    i32 130, label %98
    i32 129, label %106
  ]

78:                                               ; preds = %76
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @exe_noerror, align 4
  %85 = call i32 @ASC_STATS(i32 %83, i32 %84)
  %86 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %87 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %138

98:                                               ; preds = %76
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @exe_busy, align 4
  %105 = call i32 @ASC_STATS(i32 %103, i32 %104)
  br label %138

106:                                              ; preds = %76
  %107 = load i32, i32* @KERN_ERR, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @scmd_printk(i32 %107, %struct.scsi_cmnd* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @exe_error, align 4
  %117 = call i32 @ASC_STATS(i32 %115, i32 %116)
  %118 = load i32, i32* @DID_ERROR, align 4
  %119 = call i8* @HOST_BYTE(i32 %118)
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %138

122:                                              ; preds = %76
  %123 = load i32, i32* @KERN_ERR, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @scmd_printk(i32 %123, %struct.scsi_cmnd* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @exe_unknown, align 4
  %133 = call i32 @ASC_STATS(i32 %131, i32 %132)
  %134 = load i32, i32* @DID_ERROR, align 4
  %135 = call i8* @HOST_BYTE(i32 %134)
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %122, %106, %98, %78
  %139 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %60, %57, %31
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.asc_board* @shost_priv(i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @asc_build_req(%struct.asc_board*, %struct.scsi_cmnd*, %struct.asc_scsi_q*) #1

declare dso_local i32 @ASC_STATS(i32, i32) #1

declare dso_local i32 @AscExeScsiQueue(%struct.TYPE_9__*, %struct.asc_scsi_q*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @adv_build_req(%struct.asc_board*, %struct.scsi_cmnd*, i32**) #1

declare dso_local i32 @AdvExeScsiQueue(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i8* @HOST_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
