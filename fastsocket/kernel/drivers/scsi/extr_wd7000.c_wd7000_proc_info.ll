; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"Host scsi%d: Western Digital WD-7000 (rev %d.%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  IO base:      0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  IRQ:          %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  DMA channel:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  Interrupts:   %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"  BUS_ON time:  %d nanoseconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"  BUS_OFF time: %d nanoseconds\0A\00", align 1
@ICMB_CNT = common dso_local global i64 0, align 8
@OGMB_CNT = common dso_local global i64 0, align 8
@i = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i64, i32, i32)* @wd7000_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd7000_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %28 = call i32 @wd7000_set_info(i8* %25, i32 %26, %struct.Scsi_Host* %27)
  store i32 %28, i32* %7, align 4
  br label %110

29:                                               ; preds = %6
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 125
  %65 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 125
  %70 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32 %73, i64 %74)
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8**, i8*** %10, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %110

88:                                               ; preds = %29
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %88
  %100 = load i8*, i8** %16, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i64, i64* %11, align 8
  %106 = sub nsw i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  br label %110

108:                                              ; preds = %88
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %99, %87, %24
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @wd7000_set_info(i8*, i32, %struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @SPRINTF(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
