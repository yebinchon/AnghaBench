; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i64 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"3315 Link is not up %x\0A\00", align 1
@LPFC_CLEAR_LA = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"0202 Start Discovery hba state x%x Data: x%x x%x x%x\0A\00", align 1
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@FC_RSCN_DISCOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_disc_start(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 10
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  store %struct.lpfc_hba* %12, %struct.lpfc_hba** %4, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @LOG_SLI, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %235

24:                                               ; preds = %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LPFC_VPORT_READY, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %44 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %43)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %54

53:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load i32, i32* @LOG_DISCOVERY, align 4
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %79 = call i32 @lpfc_els_disc_adisc(%struct.lpfc_vport* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %54
  br label %235

83:                                               ; preds = %54
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %83
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FC_PT2PT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %90
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FC_RSCN_MODE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %97
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LPFC_SLI_REV4, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %112 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %119 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %117, %struct.lpfc_vport* %118)
  br label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %123 = call i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba* %121, %struct.lpfc_vport* %122)
  br label %235

124:                                              ; preds = %104, %97, %90, %83
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LPFC_VPORT_READY, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %187

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %187, label %133

133:                                              ; preds = %130
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %135 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %142 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %140, %struct.lpfc_vport* %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %145 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %183, label %150

150:                                              ; preds = %143
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %152 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %154 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %159 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %158)
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %162 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %182, label %165

165:                                              ; preds = %160
  %166 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %167 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @spin_lock_irq(i32 %168)
  %170 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %173 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %177 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @spin_unlock_irq(i32 %178)
  %180 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %181 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %180)
  br label %182

182:                                              ; preds = %165, %160
  br label %183

183:                                              ; preds = %182, %143
  %184 = load i64, i64* @LPFC_VPORT_READY, align 8
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %186 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %234

187:                                              ; preds = %130, %124
  %188 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %189 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %235

193:                                              ; preds = %187
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %195 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @FC_RSCN_MODE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %233

200:                                              ; preds = %193
  %201 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %202 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %200
  %206 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %207 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @FC_RSCN_DISCOVERY, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %229, label %212

212:                                              ; preds = %205
  %213 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %214 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @spin_lock_irq(i32 %215)
  %217 = load i32, i32* @FC_RSCN_MODE, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %220 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %224 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @spin_unlock_irq(i32 %225)
  %227 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %228 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %227)
  br label %232

229:                                              ; preds = %205, %200
  %230 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %231 = call i32 @lpfc_els_handle_rscn(%struct.lpfc_vport* %230)
  br label %232

232:                                              ; preds = %229, %212
  br label %233

233:                                              ; preds = %232, %193
  br label %234

234:                                              ; preds = %233, %183
  br label %235

235:                                              ; preds = %234, %192, %120, %82, %16
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_handle_rscn(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
