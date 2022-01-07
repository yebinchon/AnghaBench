; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_hostlist_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_hostlist_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.net_device = type { i32 }
%struct.fcoe_ctlr = type { %struct.fc_lport* }
%struct.fcoe_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_lport* (%struct.net_device*)* @fcoe_hostlist_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_lport* @fcoe_hostlist_lookup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_interface*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fcoe_interface* @fcoe_hostlist_lookup_port(%struct.net_device* %5)
  store %struct.fcoe_interface* %6, %struct.fcoe_interface** %4, align 8
  %7 = load %struct.fcoe_interface*, %struct.fcoe_interface** %4, align 8
  %8 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %7)
  store %struct.fcoe_ctlr* %8, %struct.fcoe_ctlr** %3, align 8
  %9 = load %struct.fcoe_interface*, %struct.fcoe_interface** %4, align 8
  %10 = icmp ne %struct.fcoe_interface* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %12, i32 0, i32 0
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.fc_lport* [ %14, %11 ], [ null, %15 ]
  ret %struct.fc_lport* %17
}

declare dso_local %struct.fcoe_interface* @fcoe_hostlist_lookup_port(%struct.net_device*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
