; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ctrl = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_STATE_0 = common dso_local global i32 0, align 4
@POWER_STATE_1 = common dso_local global i32 0, align 4
@POWER_STATE_2 = common dso_local global i32 0, align 4
@POWER_STATE_3 = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@NVME_FEAT_POWER_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32, i32)* @nvme_trans_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_power_state(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.sg_io_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvme_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.nvme_id_ctrl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %6, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 0
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %21, align 8
  store %struct.nvme_dev* %22, %struct.nvme_dev** %13, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %24 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(i32* %26, i32 4, i32* %14, i32 %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %156

34:                                               ; preds = %5
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @nvme_identify(%struct.nvme_dev* %35, i32 0, i32 1, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %148

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %11, align 4
  br label %148

49:                                               ; preds = %44
  %50 = load i8*, i8** %15, align 8
  %51 = bitcast i8* %50 to %struct.nvme_id_ctrl*
  store %struct.nvme_id_ctrl* %51, %struct.nvme_id_ctrl** %16, align 8
  %52 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %16, align 8
  %53 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %124 [
    i32 128, label %57
    i32 132, label %74
    i32 131, label %80
    i32 129, label %107
    i32 130, label %123
  ]

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @POWER_STATE_0, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %63, %60, %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %71, %68, %65
  br label %131

74:                                               ; preds = %49
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @POWER_STATE_0, align 4
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %74
  br label %131

80:                                               ; preds = %49
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @POWER_STATE_1, align 4
  %85 = load i32, i32* %17, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @min(i32 %84, i32 %86)
  store i32 %87, i32* %18, align 4
  br label %106

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @POWER_STATE_2, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @min(i32 %92, i32 %94)
  store i32 %95, i32* %18, align 4
  br label %105

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @POWER_STATE_3, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @min(i32 %100, i32 %102)
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %99, %96
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %83
  br label %131

107:                                              ; preds = %49
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %17, align 4
  %112 = sub nsw i32 %111, 2
  %113 = call i32 @max(i32 0, i32 %112)
  store i32 %113, i32* %18, align 4
  br label %122

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @max(i32 0, i32 %119)
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %117, %114
  br label %122

122:                                              ; preds = %121, %110
  br label %131

123:                                              ; preds = %49
  br label %124

124:                                              ; preds = %49, %123
  %125 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %126 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %127 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %128 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %129 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %130 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %124, %122, %106, %79, %73
  %132 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %133 = load i32, i32* @NVME_FEAT_POWER_MGMT, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @nvme_set_features(%struct.nvme_dev* %132, i32 %133, i32 %134, i32 0, i32* null)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %136, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %148

142:                                              ; preds = %131
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %145, %142
  br label %148

148:                                              ; preds = %147, %141, %47, %43
  %149 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %150 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @dma_free_coherent(i32* %152, i32 4, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %148, %31
  %157 = load i32, i32* %11, align 4
  ret i32 %157
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_set_features(%struct.nvme_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
