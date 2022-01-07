; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_remote_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, %struct.fc_rport*, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.fc_rport = type { i32, %struct.lpfc_rport_data*, i32, i32, i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport_identifiers = type { i32, i32, i8*, i8* }

@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport add:       did:x%x flg:x%x type x%x\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Warning: fc_remote_port_add failed\0A\00", align 1
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"3183 rport register x%06x, rport %p role x%x\0A\00", align 1
@LPFC_MAX_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_register_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_register_remote_port(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.lpfc_rport_data*, align 8
  %8 = alloca %struct.fc_rport_identifiers, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %9, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @wwn_to_u64(i32 %19)
  %21 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @wwn_to_u64(i32 %26)
  %28 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %34 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 6
  %37 = load %struct.fc_rport*, %struct.fc_rport** %36, align 8
  %38 = icmp ne %struct.fc_rport* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %2
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 6
  %42 = load %struct.fc_rport*, %struct.fc_rport** %41, align 8
  %43 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %42, i32 0, i32 1
  %44 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %43, align 8
  %45 = icmp ne %struct.lpfc_rport_data* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 6
  %49 = load %struct.fc_rport*, %struct.fc_rport** %48, align 8
  %50 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %49, i32 0, i32 1
  %51 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %50, align 8
  %52 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %51, i32 0, i32 0
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %52, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %55 = icmp eq %struct.lpfc_nodelist* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %58 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %57)
  br label %59

59:                                               ; preds = %56, %46, %39, %2
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %61 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %60, i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %70)
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FC_UNLOADING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %179

79:                                               ; preds = %59
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %81 = call %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host* %80, i32 0, %struct.fc_rport_identifiers* %8)
  store %struct.fc_rport* %81, %struct.fc_rport** %6, align 8
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %83 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %82, i32 0, i32 6
  store %struct.fc_rport* %81, %struct.fc_rport** %83, align 8
  %84 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %85 = icmp ne %struct.fc_rport* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %88 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %87, i32 0, i32 4
  %89 = call i32 @get_device(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86, %79
  %92 = load i32, i32* @KERN_WARNING, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = call i32 @dev_printk(i32 %92, i32* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %179

98:                                               ; preds = %86
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %103 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %108 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %110 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %109, i32 0, i32 1
  %111 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %110, align 8
  store %struct.lpfc_rport_data* %111, %struct.lpfc_rport_data** %7, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %113 = call %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist* %112)
  %114 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %7, align 8
  %115 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %114, i32 0, i32 0
  store %struct.lpfc_nodelist* %113, %struct.lpfc_nodelist** %115, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @NLP_FCP_TARGET, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %98
  %123 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %124 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %98
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %136 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %134, %127
  %140 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %146 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %145, i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %151 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @KERN_INFO, align 4
  %154 = load i32, i32* @LOG_NODE, align 4
  %155 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %156 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %159 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @lpfc_printf_vlog(i32 %152, i32 %153, i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %157, %struct.fc_rport* %158, i32 %160)
  %162 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %163 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %178

166:                                              ; preds = %149
  %167 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %168 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @LPFC_MAX_TARGET, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %174 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %177 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %166, %149
  br label %179

179:                                              ; preds = %178, %91, %78
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host*, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, %struct.fc_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
