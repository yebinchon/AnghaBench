; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_store_iopoll_weight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_store_iopoll_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ipr_ioa_cfg = type { i64, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"blk-iopoll not supported on this adapter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid blk-iopoll weight. It must be less than 256\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Current blk-iopoll weight has the same weight\0A\00", align 1
@blk_iopoll_enabled = common dso_local global i64 0, align 8
@ipr_iopoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_iopoll_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_iopoll_weight(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %20, %struct.ipr_ioa_cfg** %11, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %169

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @kstrtoul(i8* %34, i32 10, i64* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %169

40:                                               ; preds = %33
  %41 = load i64, i64* %12, align 8
  %42 = icmp ugt i64 %41, 256
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %169

51:                                               ; preds = %40
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %5, align 4
  br label %169

65:                                               ; preds = %51
  %66 = load i64, i64* @blk_iopoll_enabled, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %70 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %75 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %80 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %87 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %92 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @blk_iopoll_disable(i32* %97)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %84

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %78, %73, %68, %65
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @spin_lock_irqsave(i32 %106, i64 %107)
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %111 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* @blk_iopoll_enabled, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %103
  %115 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %116 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %161

119:                                              ; preds = %114
  %120 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %121 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %119
  %125 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %126 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %161

129:                                              ; preds = %124
  store i32 1, i32* %14, align 4
  br label %130

130:                                              ; preds = %157, %129
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %133 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %130
  %137 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %138 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %145 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @ipr_iopoll, align 4
  %148 = call i32 @blk_iopoll_init(i32* %143, i64 %146, i32 %147)
  %149 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %150 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @blk_iopoll_enable(i32* %155)
  br label %157

157:                                              ; preds = %136
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %130

160:                                              ; preds = %130
  br label %161

161:                                              ; preds = %160, %124, %119, %114, %103
  %162 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %163 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32 %164, i64 %165)
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @strlen(i8* %167)
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %161, %57, %43, %37, %25
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @blk_iopoll_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_iopoll_init(i32*, i64, i32) #1

declare dso_local i32 @blk_iopoll_enable(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
