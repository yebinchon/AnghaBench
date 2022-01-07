; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32*, i64, i64, i64*, i64 }
%struct.Scsi_Host = type { i32, i32, i32, i64 }

@hostdata = common dso_local global %struct.TYPE_2__* null, align 8
@FLAG_CHECK_LAST_BYTE_SENT = common dso_local global i32 0, align 4
@the_template = common dso_local global i64 0, align 8
@first_instance = common dso_local global %struct.Scsi_Host* null, align 8
@.str = private unnamed_addr constant [172 x i8] c"scsi%d: WARNING : support for multiple outstanding commands enabled\0A        without AUTOSENSE option, contingent allegiance conditions may\0A        be incorrectly cleared.\0A\00", align 1
@HOSTNO = common dso_local global i32 0, align 4
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@MR_BASE = common dso_local global i32 0, align 4
@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@SELECT_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @NCR5380_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_init(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = call i32 @SETUP_HOSTDATA(%struct.Scsi_Host* %6)
  %8 = call i32 (...) @NCR5380_all_init()
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i64 0, i64* %10, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %38, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 128
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %42

55:                                               ; preds = %42
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @FLAG_CHECK_LAST_BYTE_SENT, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hostdata, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @the_template, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %55
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* @the_template, align 8
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  store %struct.Scsi_Host* %73, %struct.Scsi_Host** @first_instance, align 8
  br label %74

74:                                               ; preds = %69, %55
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @HOSTNO, align 4
  %86 = call i32 @printk(i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %89 = load i32, i32* @ICR_BASE, align 4
  %90 = call i32 @NCR5380_write(i32 %88, i32 %89)
  %91 = load i32, i32* @MODE_REG, align 4
  %92 = load i32, i32* @MR_BASE, align 4
  %93 = call i32 @NCR5380_write(i32 %91, i32 %92)
  %94 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %95 = call i32 @NCR5380_write(i32 %94, i32 0)
  %96 = load i32, i32* @SELECT_ENABLE_REG, align 4
  %97 = call i32 @NCR5380_write(i32 %96, i32 0)
  ret i32 0
}

declare dso_local i32 @SETUP_HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_all_init(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
