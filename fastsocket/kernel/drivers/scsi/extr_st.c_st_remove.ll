; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, %struct.TYPE_4__*, %struct.scsi_device* }
%struct.TYPE_4__ = type { i32** }
%struct.scsi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@st_dev_arr_lock = common dso_local global i32 0, align 4
@st_dev_max = common dso_local global i32 0, align 4
@scsi_tapes = common dso_local global %struct.scsi_tape** null, align 8
@st_nr_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@ST_NBR_MODES = common dso_local global i32 0, align 4
@st_sysfs_class = common dso_local global i32 0, align 4
@SCSI_TAPE_MAJOR = common dso_local global i32 0, align 4
@st_ref_mutex = common dso_local global i32 0, align 4
@scsi_tape_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @st_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_tape*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.scsi_device* @to_scsi_device(%struct.device* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %4, align 8
  %11 = call i32 @write_lock(i32* @st_dev_arr_lock)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %100, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @st_dev_max, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %103

16:                                               ; preds = %12
  %17 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.scsi_tape*, %struct.scsi_tape** %17, i64 %19
  %21 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  store %struct.scsi_tape* %21, %struct.scsi_tape** %5, align 8
  %22 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %23 = icmp ne %struct.scsi_tape* %22, null
  br i1 %23, label %24, label %99

24:                                               ; preds = %16
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %25, i32 0, i32 2
  %27 = load %struct.scsi_device*, %struct.scsi_device** %26, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = icmp eq %struct.scsi_device* %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %24
  %31 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scsi_tape*, %struct.scsi_tape** %31, i64 %33
  store %struct.scsi_tape* null, %struct.scsi_tape** %34, align 8
  %35 = load i32, i32* @st_nr_dev, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @st_nr_dev, align 4
  %37 = call i32 @write_unlock(i32* @st_dev_arr_lock)
  %38 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %38, i32 0, i32 2
  %40 = load %struct.scsi_device*, %struct.scsi_device** %39, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @sysfs_remove_link(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %89, %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ST_NBR_MODES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %85, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %88

52:                                               ; preds = %49
  %53 = load i32, i32* @st_sysfs_class, align 4
  %54 = load i32, i32* @SCSI_TAPE_MAJOR, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @TAPE_MINOR(i32 %55, i32 %56, i32 %57)
  %59 = call i32 @MKDEV(i32 %54, i32 %58)
  %60 = call i32 @device_destroy(i32 %53, i32 %59)
  %61 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @cdev_del(i32* %72)
  %74 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %52
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %49

88:                                               ; preds = %49
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %44

92:                                               ; preds = %44
  %93 = call i32 @mutex_lock(i32* @st_ref_mutex)
  %94 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %94, i32 0, i32 0
  %96 = load i32, i32* @scsi_tape_release, align 4
  %97 = call i32 @kref_put(i32* %95, i32 %96)
  %98 = call i32 @mutex_unlock(i32* @st_ref_mutex)
  store i32 0, i32* %2, align 4
  br label %105

99:                                               ; preds = %24, %16
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %12

103:                                              ; preds = %12
  %104 = call i32 @write_unlock(i32* @st_dev_arr_lock)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %92
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @TAPE_MINOR(i32, i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
