; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_unsolicited_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_unsolicited_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i64, %struct.isci_remote_device**, %struct.isci_phy*, %struct.TYPE_6__ }
%struct.isci_remote_device = type { i32 }
%struct.isci_phy = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.scu_unsolicited_frame_header* }
%struct.scu_unsolicited_frame_header = type { i64 }

@SCI_FAILURE = common dso_local global i32 0, align 4
@UNSOLICITED_FRAME_IN_USE = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, i64)* @sci_controller_unsolicited_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_controller_unsolicited_frame(%struct.isci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scu_unsolicited_frame_header*, align 8
  %8 = alloca %struct.isci_phy*, align 8
  %9 = alloca %struct.isci_remote_device*, align 8
  %10 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @SCU_GET_FRAME_INDEX(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %15 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.scu_unsolicited_frame_header*, %struct.scu_unsolicited_frame_header** %21, align 8
  store %struct.scu_unsolicited_frame_header* %22, %struct.scu_unsolicited_frame_header** %7, align 8
  %23 = load i32, i32* @UNSOLICITED_FRAME_IN_USE, align 4
  %24 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %25 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %23, i32* %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @SCU_GET_FRAME_ERROR(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @sci_controller_release_frame(%struct.isci_host* %36, i64 %37)
  br label %104

39:                                               ; preds = %2
  %40 = load %struct.scu_unsolicited_frame_header*, %struct.scu_unsolicited_frame_header** %7, align 8
  %41 = getelementptr inbounds %struct.scu_unsolicited_frame_header, %struct.scu_unsolicited_frame_header* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %48 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %47, i32 0, i32 2
  %49 = load %struct.isci_phy*, %struct.isci_phy** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %49, i64 %50
  store %struct.isci_phy* %51, %struct.isci_phy** %8, align 8
  %52 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @sci_phy_frame_handler(%struct.isci_phy* %52, i64 %53)
  store i32 %54, i32* %10, align 4
  br label %99

55:                                               ; preds = %39
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @SCU_GET_COMPLETION_INDEX(i64 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64 %62)
  store i64 %63, i64* %5, align 8
  %64 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %65 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %64, i32 0, i32 2
  %66 = load %struct.isci_phy*, %struct.isci_phy** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %66, i64 %67
  store %struct.isci_phy* %68, %struct.isci_phy** %8, align 8
  %69 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @sci_phy_frame_handler(%struct.isci_phy* %69, i64 %70)
  store i32 %71, i32* %10, align 4
  br label %98

72:                                               ; preds = %55
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %75 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %80 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %79, i32 0, i32 1
  %81 = load %struct.isci_remote_device**, %struct.isci_remote_device*** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.isci_remote_device*, %struct.isci_remote_device** %81, i64 %82
  %84 = load %struct.isci_remote_device*, %struct.isci_remote_device** %83, align 8
  store %struct.isci_remote_device* %84, %struct.isci_remote_device** %9, align 8
  br label %86

85:                                               ; preds = %72
  store %struct.isci_remote_device* null, %struct.isci_remote_device** %9, align 8
  br label %86

86:                                               ; preds = %85, %78
  %87 = load %struct.isci_remote_device*, %struct.isci_remote_device** %9, align 8
  %88 = icmp ne %struct.isci_remote_device* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.isci_remote_device*, %struct.isci_remote_device** %9, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @sci_remote_device_frame_handler(%struct.isci_remote_device* %90, i64 %91)
  store i32 %92, i32* %10, align 4
  br label %97

93:                                               ; preds = %86
  %94 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @sci_controller_release_frame(%struct.isci_host* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %61
  br label %99

99:                                               ; preds = %98, %44
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @SCI_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %35, %103, %99
  ret void
}

declare dso_local i64 @SCU_GET_FRAME_INDEX(i64) #1

declare dso_local i64 @SCU_GET_FRAME_ERROR(i64) #1

declare dso_local i32 @sci_controller_release_frame(%struct.isci_host*, i64) #1

declare dso_local i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64) #1

declare dso_local i32 @sci_phy_frame_handler(%struct.isci_phy*, i64) #1

declare dso_local i64 @SCU_GET_COMPLETION_INDEX(i64) #1

declare dso_local i32 @sci_remote_device_frame_handler(%struct.isci_remote_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
