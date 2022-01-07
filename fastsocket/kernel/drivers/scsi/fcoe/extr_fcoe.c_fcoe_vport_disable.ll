; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_vport_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_vport_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }

@FC_VPORT_DISABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*, i32)* @fcoe_vport_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_vport_disable(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %6, i32 0, i32 0
  %8 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  store %struct.fc_lport* %8, %struct.fc_lport** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %13 = load i32, i32* @FC_VPORT_DISABLED, align 4
  %14 = call i32 @fc_vport_set_state(%struct.fc_vport* %12, i32 %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %16 = call i32 @fc_fabric_logoff(%struct.fc_lport* %15)
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %22 = call i32 @fc_fabric_login(%struct.fc_lport* %21)
  %23 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %24 = call i32 @fc_vport_setlink(%struct.fc_lport* %23)
  br label %25

25:                                               ; preds = %17, %11
  ret i32 0
}

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

declare dso_local i32 @fc_fabric_logoff(%struct.fc_lport*) #1

declare dso_local i32 @fc_fabric_login(%struct.fc_lport*) #1

declare dso_local i32 @fc_vport_setlink(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
