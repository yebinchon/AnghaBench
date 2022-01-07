; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i64 }

@MAX_CMD_PER_LUN = common dso_local global i32 0, align 4
@max_queue_depth = common dso_local global i32 0, align 4
@tag_mode = common dso_local global i64 0, align 8
@TAG_SIMPLE = common dso_local global i64 0, align 8
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c", simple tags\00", align 1
@TAG_ORDERED = common dso_local global i64 0, align 8
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c", ordered tags\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c", no tags\00", align 1
@linked_comm = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c", untagged\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", sorted\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c", unsorted\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"cmds/lun %d%s%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @eata2x_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata2x_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load i32, i32* @MAX_CMD_PER_LUN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @max_queue_depth, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @TLDEV(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load i64, i64* @tag_mode, align 8
  %21 = load i64, i64* @TAG_SIMPLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %24, i32 %25, i32 %26)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %42

28:                                               ; preds = %19
  %29 = load i64, i64* @tag_mode, align 8
  %30 = load i64, i64* @TAG_ORDERED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %33, i32 %34, i32 %35)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %38, i32 0, i32 %39)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %41, %23
  br label %61

43:                                               ; preds = %14, %1
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @TLDEV(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i64, i64* @linked_comm, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %53, i32 0, i32 %54)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %60

56:                                               ; preds = %49, %43
  %57 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %57, i32 0, i32 %58)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @TLDEV(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i64, i64* @linked_comm, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %85

76:                                               ; preds = %70, %67, %61
  %77 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @TLDEV(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %84

83:                                               ; preds = %76
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %75
  %86 = load i32, i32* @KERN_INFO, align 4
  %87 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %88 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @sdev_printk(i32 %86, %struct.scsi_device* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %90, i8* %91, i8* %92)
  ret i32 0
}

declare dso_local i64 @TLDEV(i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
