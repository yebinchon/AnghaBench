; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.hostdata = type { i32 }

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
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @u14_34f_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 3
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hostdata*
  %16 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @MAX_CMD_PER_LUN, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @max_queue_depth, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @TLDEV(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i64, i64* @tag_mode, align 8
  %32 = load i64, i64* @TAG_SIMPLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %35, i32 %36, i32 %37)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %53

39:                                               ; preds = %30
  %40 = load i64, i64* @tag_mode, align 8
  %41 = load i64, i64* @TAG_ORDERED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %44, i32 %45, i32 %46)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %49, i32 0, i32 %50)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %34
  br label %72

54:                                               ; preds = %25, %1
  %55 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @TLDEV(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i64, i64* @linked_comm, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %64, i32 0, i32 %65)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %71

67:                                               ; preds = %60, %54
  %68 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %68, i32 0, i32 %69)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %74 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @TLDEV(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i64, i64* @linked_comm, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %96

87:                                               ; preds = %81, %78, %72
  %88 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @TLDEV(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %95

94:                                               ; preds = %87
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %99 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @sdev_printk(i32 %97, %struct.scsi_device* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %101, i8* %102, i8* %103)
  %105 = load i32, i32* @FALSE, align 4
  ret i32 %105
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
