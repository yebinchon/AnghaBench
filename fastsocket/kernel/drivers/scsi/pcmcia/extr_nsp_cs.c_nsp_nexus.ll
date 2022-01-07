; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_nexus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@SYNCREG = common dso_local global i32 0, align 4
@ACKWIDTH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MODE_IO8 = common dso_local global i8* null, align 8
@nsp_burst_mode = common dso_local global i64 0, align 8
@BURST_MEM32 = common dso_local global i64 0, align 8
@MODE_MEM32 = common dso_local global i8* null, align 8
@BURST_IO32 = common dso_local global i64 0, align 8
@MODE_IO32 = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@POINTERCLR = common dso_local global i32 0, align 4
@POINTER_CLEAR = common dso_local global i32 0, align 4
@ACK_COUNTER_CLEAR = common dso_local global i32 0, align 4
@REQ_COUNTER_CLEAR = common dso_local global i32 0, align 4
@HOST_COUNTER_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_nexus(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = call zeroext i8 @scmd_id(%struct.scsi_cmnd* %14)
  store i8 %15, i8* %4, align 1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYNCREG, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nsp_index_write(i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ACKWIDTH, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nsp_index_write(i32 %36, i32 %37, i32 %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %42)
  %44 = srem i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %1
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %47)
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %1
  %52 = load i8*, i8** @MODE_IO8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %77

55:                                               ; preds = %46
  %56 = load i64, i64* @nsp_burst_mode, align 8
  %57 = load i64, i64* @BURST_MEM32, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** @MODE_MEM32, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %76

63:                                               ; preds = %55
  %64 = load i64, i64* @nsp_burst_mode, align 8
  %65 = load i64, i64* @BURST_IO32, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** @MODE_IO32, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %75

71:                                               ; preds = %63
  %72 = load i8*, i8** @MODE_IO8, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %51
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @nsp_setup_fifo(%struct.TYPE_9__* %78, i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @POINTERCLR, align 4
  %85 = load i32, i32* @POINTER_CLEAR, align 4
  %86 = load i32, i32* @ACK_COUNTER_CLEAR, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @REQ_COUNTER_CLEAR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @HOST_COUNTER_CLEAR, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @nsp_index_write(i32 %83, i32 %84, i32 %91)
  ret i32 0
}

declare dso_local zeroext i8 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_index_write(i32, i32, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_setup_fifo(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
