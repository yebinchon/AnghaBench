; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@MSGBUF_SIZE = common dso_local global i32 0, align 4
@BUSMON_REQ = common dso_local global i32 0, align 4
@NSP_DEBUG_DATA_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"xfer quit\00", align 1
@PH_MSG_OUT = common dso_local global i64 0, align 8
@SCSIBUSCTRL = common dso_local global i32 0, align 4
@AUTODIRECTION = common dso_local global i8 0, align 1
@ACKENB = common dso_local global i8 0, align 1
@BUSMON_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"read msg\00", align 1
@SCSIDATAWITHACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"write msg\00", align 1
@BUSMON_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"xfer<ack>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @nsp_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_xfer(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i32, i32* @MSGBUF_SIZE, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @min(i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %98, %2
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %103

38:                                               ; preds = %35
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BUSMON_REQ, align 4
  %42 = call i32 @nsp_expect_signal(%struct.scsi_cmnd* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %47 = call i32 @nsp_dbg(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %105

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PH_MSG_OUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SCSIBUSCTRL, align 4
  %61 = load i8, i8* @AUTODIRECTION, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @ACKENB, align 1
  %64 = sext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = call i32 @nsp_index_write(i32 %59, i32 %60, i8 signext %66)
  br label %68

68:                                               ; preds = %58, %51, %48
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @BUSMON_IO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %75 = call i32 @nsp_dbg(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SCSIDATAWITHACK, align 4
  %78 = call signext i8 @nsp_index_read(i32 %76, i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 %78, i8* %82, align 1
  br label %94

83:                                               ; preds = %68
  %84 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %85 = call i32 @nsp_dbg(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @SCSIDATAWITHACK, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @nsp_index_write(i32 %86, i32 %87, i8 signext %92)
  br label %94

94:                                               ; preds = %83, %73
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %96 = load i32, i32* @BUSMON_ACK, align 4
  %97 = call i32 @nsp_negate_signal(%struct.scsi_cmnd* %95, i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %35

103:                                              ; preds = %35
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %45
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nsp_expect_signal(%struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @nsp_dbg(i32, i8*) #1

declare dso_local i32 @nsp_index_write(i32, i32, i8 signext) #1

declare dso_local signext i8 @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_negate_signal(%struct.scsi_cmnd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
