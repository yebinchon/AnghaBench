; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_cmnd = type { %struct.TYPE_10__*, i32, %struct.scsi_cmnd*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IPR_IOASC_IOASC_MASK = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_PASSTHROUGH = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*)* @ipr_erp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_erp_start(%struct.ipr_ioa_cfg* %0, %struct.ipr_cmnd* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_cmnd* %1, %struct.ipr_cmnd** %4, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 2
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %15, align 8
  store %struct.ipr_resource_entry* %16, %struct.ipr_resource_entry** %6, align 8
  %17 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IPR_IOASC_IOASC_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %28 = icmp ne %struct.ipr_resource_entry* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %31 = call i32 @ipr_scsi_eh_done(%struct.ipr_cmnd* %30)
  br label %213

32:                                               ; preds = %2
  %33 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %34 = call i32 @ipr_is_gscsi(%struct.ipr_resource_entry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 134
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %41 = call i32 @ipr_gen_sense(%struct.ipr_cmnd* %40)
  br label %42

42:                                               ; preds = %39, %36, %32
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %44 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %46 = call i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg* %43, %struct.ipr_cmnd* %44, %struct.ipr_resource_entry* %45)
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %172 [
    i32 137, label %48
    i32 131, label %67
    i32 132, label %67
    i32 133, label %74
    i32 128, label %88
    i32 130, label %103
    i32 138, label %103
    i32 136, label %110
    i32 135, label %110
    i32 134, label %139
    i32 129, label %171
  ]

48:                                               ; preds = %42
  %49 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %50 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @DID_ABORT, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %66

59:                                               ; preds = %48
  %60 = load i32, i32* @DID_IMM_RETRY, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %196

67:                                               ; preds = %42, %42
  %68 = load i32, i32* @DID_NO_CONNECT, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %196

74:                                               ; preds = %42
  %75 = load i32, i32* @DID_NO_CONNECT, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %82 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %74
  br label %196

88:                                               ; preds = %42
  %89 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %90 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %95 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* @DID_IMM_RETRY, align 4
  %98 = shl i32 %97, 16
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %196

103:                                              ; preds = %42, %42
  %104 = load i32, i32* @DID_PASSTHROUGH, align 4
  %105 = shl i32 %104, 16
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %196

110:                                              ; preds = %42, %42
  %111 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %112 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %117 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @scsi_report_bus_reset(i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %115, %110
  %126 = load i32, i32* @DID_ERROR, align 4
  %127 = shl i32 %126, 16
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %133 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %125
  %136 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %137 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %125
  br label %196

139:                                              ; preds = %42
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @IPR_IOASC_SENSE_STATUS(i32 %140)
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @IPR_IOASC_SENSE_STATUS(i32 %146)
  %148 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %139
  %151 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %152 = call i32 @ipr_get_autosense(%struct.ipr_cmnd* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %156 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %160 = call i32 @ipr_erp_cancel_all(%struct.ipr_cmnd* %159)
  br label %213

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %150
  br label %163

163:                                              ; preds = %162, %139
  %164 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %165 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %169 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %163
  br label %196

171:                                              ; preds = %42
  br label %196

172:                                              ; preds = %42
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @IPR_IOASC_SENSE_KEY(i32 %173)
  %175 = load i32, i32* @RECOVERED_ERROR, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i32, i32* @DID_ERROR, align 4
  %179 = shl i32 %178, 16
  %180 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %181 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %172
  %185 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %186 = call i32 @ipr_is_vset_device(%struct.ipr_resource_entry* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %184
  %189 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %190 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %194 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %193, i32 0, i32 0
  store i32 1, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %188, %184
  br label %196

196:                                              ; preds = %195, %171, %170, %138, %103, %96, %87, %67, %66
  %197 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %198 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %197, i32 0, i32 2
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %198, align 8
  %200 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %199)
  %201 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %202 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %201, i32 0, i32 1
  %203 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %203, i32 0, i32 0
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = call i32 @list_add_tail(i32* %202, i32* %206)
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %209 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %208, i32 0, i32 1
  %210 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %209, align 8
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %212 = call i32 %210(%struct.scsi_cmnd* %211)
  br label %213

213:                                              ; preds = %196, %158, %29
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ipr_scsi_eh_done(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_gen_sense(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*, %struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_is_naca_model(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_report_bus_reset(i32, i32) #1

declare dso_local i32 @IPR_IOASC_SENSE_STATUS(i32) #1

declare dso_local i32 @ipr_get_autosense(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_erp_cancel_all(%struct.ipr_cmnd*) #1

declare dso_local i32 @IPR_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @ipr_is_vset_device(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
