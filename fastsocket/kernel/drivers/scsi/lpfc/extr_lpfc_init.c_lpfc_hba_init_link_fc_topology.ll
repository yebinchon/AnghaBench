; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_init_link_fc_topology.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_init_link_fc_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, i8*, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.lpfc_vport*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_MAX = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_1G = common dso_local global i32 0, align 4
@LMT_1Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_2G = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_4G = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_8G = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_10G = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_16G = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"1302 Invalid speed for this board:%d Reset link speed to auto.\0A\00", align 1
@LPFC_USER_LINK_SPEED_AUTO = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"0498 Adapter failed to init, mbxCmd x%x INIT_LINK, mbxStatus x%x\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@LPFC_INITIALIZE_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_hba_init_link_fc_topology(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %6, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_10__* @mempool_alloc(i32 %15, i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %211

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %8, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store %struct.lpfc_vport* %30, %struct.lpfc_vport** %32, align 8
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LPFC_USER_LINK_SPEED_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %116, label %38

38:                                               ; preds = %26
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @LPFC_USER_LINK_SPEED_1G, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @LMT_1Gb, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %44, %38
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LPFC_USER_LINK_SPEED_2G, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LMT_2Gb, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %57, %51
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @LPFC_USER_LINK_SPEED_4G, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @LMT_4Gb, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %70, %64
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LPFC_USER_LINK_SPEED_8G, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LMT_8Gb, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %83, %77
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @LPFC_USER_LINK_SPEED_10G, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @LMT_10Gb, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96, %90
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LPFC_USER_LINK_SPEED_16G, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LMT_16Gb, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %109, %96, %83, %70, %57, %44, %26
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %118 = load i32, i32* @KERN_ERR, align 4
  %119 = load i32, i32* @LOG_LINK_EVENT, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @LPFC_USER_LINK_SPEED_AUTO, align 4
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %116, %109, %103
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @lpfc_init_link(%struct.lpfc_hba* %128, %struct.TYPE_10__* %129, i32 %130, i32 %133)
  %135 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @LPFC_SLI_REV4, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %127
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %145 = call i32 @lpfc_set_loopback_flag(%struct.lpfc_hba* %144)
  br label %146

146:                                              ; preds = %143, %127
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = load i32, i32* @MBX_NOWAIT, align 4
  %150 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %147, %struct.TYPE_10__* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @MBX_BUSY, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %207

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @MBX_SUCCESS, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %207

158:                                              ; preds = %154
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %160 = load i32, i32* @KERN_ERR, align 4
  %161 = load i32, i32* @LOG_INIT, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @LPFC_SLI_REV3, align 8
  %173 = icmp sle i64 %171, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %158
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @writel(i32 0, i32 %177)
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @readl(i32 %181)
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @writel(i32 -1, i32 %185)
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @readl(i32 %189)
  br label %191

191:                                              ; preds = %174, %158
  %192 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @MBX_BUSY, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @mempool_free(%struct.TYPE_10__* %199, i32 %202)
  br label %204

204:                                              ; preds = %198, %191
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %211

207:                                              ; preds = %154, %146
  %208 = load i32, i32* @LPFC_INITIALIZE_LINK, align 4
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %207, %204, %20
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_10__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lpfc_set_loopback_flag(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
