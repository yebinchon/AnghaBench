; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fcoe_interface = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.fcoe_port = type { i32, i32, i32, i32, %struct.fcoe_interface*, %struct.fc_lport* }
%struct.Scsi_Host = type { i32 }
%struct.fc_vport = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Create Interface\0A\00", align 1
@fcoe_shost_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not allocate host structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fcoe_netdev = common dso_local global i32 0, align 4
@FCOE_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@FCOE_MIN_QUEUE_DEPTH = common dso_local global i32 0, align 4
@fcoe_destroy_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not configure lport for the interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Setting vport names, %16.16llx %16.16llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Could not configure netdev for the interface\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Could not configure shost for the interface\0A\00", align 1
@fcoe_libfc_fcn_templ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Could not configure libfc for the interface\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not configure the EM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_lport* (%struct.fcoe_interface*, %struct.device*, i32)* @fcoe_if_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_lport* @fcoe_if_create(%struct.fcoe_interface* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fcoe_interface*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fcoe_ctlr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.fc_lport*, align 8
  %11 = alloca %struct.fc_lport*, align 8
  %12 = alloca %struct.fcoe_port*, align 8
  %13 = alloca %struct.Scsi_Host*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fc_vport*, align 8
  store %struct.fcoe_interface* %0, %struct.fcoe_interface** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.fcoe_interface*, %struct.fcoe_interface** %5, align 8
  %17 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %16)
  store %struct.fcoe_ctlr* %17, %struct.fcoe_ctlr** %8, align 8
  %18 = load %struct.fcoe_interface*, %struct.fcoe_interface** %5, align 8
  %19 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.fc_vport* @dev_to_vport(%struct.device* %21)
  store %struct.fc_vport* %22, %struct.fc_vport** %15, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = call %struct.fc_lport* @libfc_host_alloc(i32* @fcoe_shost_template, i32 32)
  store %struct.fc_lport* %28, %struct.fc_lport** %10, align 8
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %31 = call %struct.fc_lport* @libfc_vport_create(%struct.fc_vport* %30, i32 32)
  store %struct.fc_lport* %31, %struct.fc_lport** %10, align 8
  br label %32

32:                                               ; preds = %29, %27
  %33 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %34 = icmp ne %struct.fc_lport* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %155

40:                                               ; preds = %32
  %41 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %42 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %41)
  store %struct.fcoe_port* %42, %struct.fcoe_port** %12, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %44 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %45 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %44, i32 0, i32 5
  store %struct.fc_lport* %43, %struct.fc_lport** %45, align 8
  %46 = load %struct.fcoe_interface*, %struct.fcoe_interface** %5, align 8
  %47 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %48 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %47, i32 0, i32 4
  store %struct.fcoe_interface* %46, %struct.fcoe_interface** %48, align 8
  %49 = load i32, i32* @fcoe_netdev, align 4
  %50 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %51 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @FCOE_MAX_QUEUE_DEPTH, align 4
  %53 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %54 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @FCOE_MIN_QUEUE_DEPTH, align 4
  %56 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %57 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %59 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %58, i32 0, i32 0
  %60 = load i32, i32* @fcoe_destroy_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %63 = call i32 @fcoe_hostlist_add(%struct.fc_lport* %62)
  %64 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %65 = call i32 @fcoe_lport_config(%struct.fc_lport* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %40
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %148

71:                                               ; preds = %40
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %77 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %80 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %84 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %85 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @fc_set_wwnn(%struct.fc_lport* %83, i32 %86)
  %88 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %89 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %90 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fc_set_wwpn(%struct.fc_lport* %88, i32 %91)
  br label %93

93:                                               ; preds = %74, %71
  %94 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %95 = load %struct.net_device*, %struct.net_device** %9, align 8
  %96 = call i32 @fcoe_netdev_config(%struct.fc_lport* %94, %struct.net_device* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %145

102:                                              ; preds = %93
  %103 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @fcoe_shost_config(%struct.fc_lport* %103, %struct.device* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %145

111:                                              ; preds = %102
  %112 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %113 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %8, align 8
  %114 = call i32 @fcoe_libfc_config(%struct.fc_lport* %112, %struct.fcoe_ctlr* %113, i32* @fcoe_libfc_fcn_templ, i32 1)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.net_device*, %struct.net_device** %9, align 8
  %119 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %145

120:                                              ; preds = %111
  %121 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %122 = load %struct.net_device*, %struct.net_device** %9, align 8
  %123 = call i32 @fcoe_fdmi_info(%struct.fc_lport* %121, %struct.net_device* %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %128 = call i32 @fcoe_em_config(%struct.fc_lport* %127)
  store i32 %128, i32* %14, align 4
  br label %137

129:                                              ; preds = %120
  %130 = load %struct.fc_vport*, %struct.fc_vport** %15, align 8
  %131 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %130)
  store %struct.Scsi_Host* %131, %struct.Scsi_Host** %13, align 8
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %133 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %132)
  store %struct.fc_lport* %133, %struct.fc_lport** %11, align 8
  %134 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  %135 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %136 = call i32 @fc_exch_mgr_list_clone(%struct.fc_lport* %134, %struct.fc_lport* %135)
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %129, %126
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.net_device*, %struct.net_device** %9, align 8
  %142 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %145

143:                                              ; preds = %137
  %144 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %144, %struct.fc_lport** %4, align 8
  br label %158

145:                                              ; preds = %140, %117, %108, %99
  %146 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %147 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %146)
  br label %148

148:                                              ; preds = %145, %68
  %149 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %150 = call i32 @fcoe_hostlist_del(%struct.fc_lport* %149)
  %151 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %152 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @scsi_host_put(i32 %153)
  br label %155

155:                                              ; preds = %148, %35
  %156 = load i32, i32* %14, align 4
  %157 = call %struct.fc_lport* @ERR_PTR(i32 %156)
  store %struct.fc_lport* %157, %struct.fc_lport** %4, align 8
  br label %158

158:                                              ; preds = %155, %143
  %159 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  ret %struct.fc_lport* %159
}

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local %struct.fc_vport* @dev_to_vport(%struct.device*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.fc_lport* @libfc_host_alloc(i32*, i32) #1

declare dso_local %struct.fc_lport* @libfc_vport_create(%struct.fc_vport*, i32) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fcoe_hostlist_add(%struct.fc_lport*) #1

declare dso_local i32 @fcoe_lport_config(%struct.fc_lport*) #1

declare dso_local i32 @fc_set_wwnn(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_set_wwpn(%struct.fc_lport*, i32) #1

declare dso_local i32 @fcoe_netdev_config(%struct.fc_lport*, %struct.net_device*) #1

declare dso_local i32 @fcoe_shost_config(%struct.fc_lport*, %struct.device*) #1

declare dso_local i32 @fcoe_libfc_config(%struct.fc_lport*, %struct.fcoe_ctlr*, i32*, i32) #1

declare dso_local i32 @fcoe_fdmi_info(%struct.fc_lport*, %struct.net_device*) #1

declare dso_local i32 @fcoe_em_config(%struct.fc_lport*) #1

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @fc_exch_mgr_list_clone(%struct.fc_lport*, %struct.fc_lport*) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @fcoe_hostlist_del(%struct.fc_lport*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local %struct.fc_lport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
