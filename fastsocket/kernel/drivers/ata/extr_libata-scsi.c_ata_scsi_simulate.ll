; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_simulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_simulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32*, i32 }
%struct.ata_scsi_args = type { void (%struct.scsi_cmnd*)*, %struct.scsi_cmnd*, i32, %struct.ata_device* }

@ata_scsiop_inq_std = common dso_local global i32 0, align 4
@ata_scsiop_inq_00 = common dso_local global i32 0, align 4
@ata_scsiop_inq_80 = common dso_local global i32 0, align 4
@ata_scsiop_inq_83 = common dso_local global i32 0, align 4
@ata_scsiop_inq_89 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b0 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b1 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b2 = common dso_local global i32 0, align 4
@ata_scsiop_mode_sense = common dso_local global i32 0, align 4
@ata_scsiop_read_cap = common dso_local global i32 0, align 4
@SAI_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@ata_scsiop_report_luns = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@ata_scsiop_noop = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_scsi_simulate(%struct.ata_device* %0, %struct.scsi_cmnd* %1, void (%struct.scsi_cmnd*)* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca void (%struct.scsi_cmnd*)*, align 8
  %7 = alloca %struct.ata_scsi_args, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store void (%struct.scsi_cmnd*)* %2, void (%struct.scsi_cmnd*)** %6, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %7, i32 0, i32 3
  store %struct.ata_device* %13, %struct.ata_device** %14, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %7, i32 0, i32 1
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %20, align 8
  %21 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %22 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %7, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %21, void (%struct.scsi_cmnd*)** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %146 [
    i32 143, label %26
    i32 142, label %30
    i32 139, label %81
    i32 138, label %81
    i32 141, label %84
    i32 140, label %84
    i32 137, label %88
    i32 130, label %91
    i32 136, label %106
    i32 135, label %109
    i32 129, label %118
    i32 134, label %118
    i32 132, label %118
    i32 133, label %118
    i32 128, label %118
    i32 131, label %121
  ]

26:                                               ; preds = %3
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %29 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %27, void (%struct.scsi_cmnd*)* %28)
  br label %152

30:                                               ; preds = %3
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %39 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %37, void (%struct.scsi_cmnd*)* %38)
  br label %80

40:                                               ; preds = %30
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ata_scsiop_inq_std, align 4
  %48 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %47)
  br label %79

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %74 [
    i32 0, label %53
    i32 128, label %56
    i32 131, label %59
    i32 137, label %62
    i32 176, label %65
    i32 177, label %68
    i32 178, label %71
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @ata_scsiop_inq_00, align 4
  %55 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %54)
  br label %78

56:                                               ; preds = %49
  %57 = load i32, i32* @ata_scsiop_inq_80, align 4
  %58 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %57)
  br label %78

59:                                               ; preds = %49
  %60 = load i32, i32* @ata_scsiop_inq_83, align 4
  %61 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %60)
  br label %78

62:                                               ; preds = %49
  %63 = load i32, i32* @ata_scsiop_inq_89, align 4
  %64 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %63)
  br label %78

65:                                               ; preds = %49
  %66 = load i32, i32* @ata_scsiop_inq_b0, align 4
  %67 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %66)
  br label %78

68:                                               ; preds = %49
  %69 = load i32, i32* @ata_scsiop_inq_b1, align 4
  %70 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %69)
  br label %78

71:                                               ; preds = %49
  %72 = load i32, i32* @ata_scsiop_inq_b2, align 4
  %73 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %72)
  br label %78

74:                                               ; preds = %49
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %77 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %75, void (%struct.scsi_cmnd*)* %76)
  br label %78

78:                                               ; preds = %74, %71, %68, %65, %62, %59, %56, %53
  br label %79

79:                                               ; preds = %78, %46
  br label %80

80:                                               ; preds = %79, %36
  br label %152

81:                                               ; preds = %3, %3
  %82 = load i32, i32* @ata_scsiop_mode_sense, align 4
  %83 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %82)
  br label %152

84:                                               ; preds = %3, %3
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %87 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %85, void (%struct.scsi_cmnd*)* %86)
  br label %152

88:                                               ; preds = %3
  %89 = load i32, i32* @ata_scsiop_read_cap, align 4
  %90 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %89)
  br label %152

91:                                               ; preds = %3
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 31
  %96 = load i32, i32* @SAI_READ_CAPACITY_16, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @ata_scsiop_read_cap, align 4
  %100 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %99)
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %103 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %104 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %102, void (%struct.scsi_cmnd*)* %103)
  br label %105

105:                                              ; preds = %101, %98
  br label %152

106:                                              ; preds = %3
  %107 = load i32, i32* @ata_scsiop_report_luns, align 4
  %108 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %107)
  br label %152

109:                                              ; preds = %3
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %111 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %110, i32 0, i32 0, i32 0)
  %112 = load i32, i32* @DRIVER_SENSE, align 4
  %113 = shl i32 %112, 24
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  call void %116(%struct.scsi_cmnd* %117)
  br label %152

118:                                              ; preds = %3, %3, %3, %3, %3
  %119 = load i32, i32* @ata_scsiop_noop, align 4
  %120 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %119)
  br label %152

121:                                              ; preds = %3
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, -9
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @ata_scsiop_noop, align 4
  %140 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %7, i32 %139)
  br label %145

141:                                              ; preds = %133, %128, %121
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %143 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %144 = call i32 @ata_scsi_invalid_field(%struct.scsi_cmnd* %142, void (%struct.scsi_cmnd*)* %143)
  br label %145

145:                                              ; preds = %141, %138
  br label %152

146:                                              ; preds = %3
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %148 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %149 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %147, i32 %148, i32 32, i32 0)
  %150 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  call void %150(%struct.scsi_cmnd* %151)
  br label %152

152:                                              ; preds = %146, %145, %118, %109, %106, %105, %88, %84, %81, %80, %26
  ret void
}

declare dso_local i32 @ata_scsi_invalid_field(%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

declare dso_local i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args*, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
