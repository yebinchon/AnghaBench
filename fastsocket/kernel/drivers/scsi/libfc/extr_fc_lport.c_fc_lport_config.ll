; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32 }

@fc_lport_timeout = common dso_local global i32 0, align 4
@LPORT_ST_DISABLED = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_lport_config(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 1
  %5 = load i32, i32* @fc_lport_timeout, align 4
  %6 = call i32 @INIT_DELAYED_WORK(i32* %4, i32 %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %11 = load i32, i32* @LPORT_ST_DISABLED, align 4
  %12 = call i32 @fc_lport_state_enter(%struct.fc_lport* %10, i32 %11)
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = load i32, i32* @FC_TYPE_FCP, align 4
  %15 = call i32 @fc_lport_add_fc4_type(%struct.fc_lport* %13, i32 %14)
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = load i32, i32* @FC_TYPE_CT, align 4
  %18 = call i32 @fc_lport_add_fc4_type(%struct.fc_lport* %16, i32 %17)
  %19 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %20 = load i32, i32* @FC_TYPE_FCP, align 4
  %21 = call i32 @fc_fc4_conf_lport_params(%struct.fc_lport* %19, i32 %20)
  ret i32 0
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_add_fc4_type(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_fc4_conf_lport_params(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
