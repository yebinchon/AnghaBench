; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64 }
%struct.scsi_sense_hdr = type { i64 }

@TEST_UNIT_READY = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@NOT_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_test_unit_ready(%struct.scsi_device* %0, i32 %1, i32 %2, %struct.scsi_sense_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_hdr*, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.scsi_sense_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.scsi_sense_hdr* %3, %struct.scsi_sense_hdr** %9, align 8
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %14 = load i8, i8* @TEST_UNIT_READY, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %9, align 8
  %21 = icmp ne %struct.scsi_sense_hdr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.scsi_sense_hdr* @kzalloc(i32 8, i32 %23)
  store %struct.scsi_sense_hdr* %24, %struct.scsi_sense_hdr** %11, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %9, align 8
  store %struct.scsi_sense_hdr* %26, %struct.scsi_sense_hdr** %11, align 8
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %68, %27
  %29 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %31 = load i32, i32* @DMA_NONE, align 4
  %32 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @scsi_execute_req(%struct.scsi_device* %29, i8* %30, i32 %31, i32* null, i32 0, %struct.scsi_sense_hdr* %32, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %28
  %41 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %42 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNIT_ATTENTION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %44, %40, %28
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %56 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %60 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UNIT_ATTENTION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %64, %58, %54
  %69 = phi i1 [ false, %58 ], [ false, %54 ], [ %67, %64 ]
  br i1 %69, label %28, label %70

70:                                               ; preds = %68
  %71 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %72 = icmp ne %struct.scsi_sense_hdr* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %107

75:                                               ; preds = %70
  %76 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %82 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UNIT_ATTENTION, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %92 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NOT_READY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %84
  %97 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %90, %80, %75
  %100 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %9, align 8
  %101 = icmp ne %struct.scsi_sense_hdr* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %11, align 8
  %104 = call i32 @kfree(%struct.scsi_sense_hdr* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %73
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.scsi_sense_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @kfree(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
