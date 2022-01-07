; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_npiv.c___fc_vport_setlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_npiv.c___fc_vport_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i64, %struct.fc_vport* }
%struct.fc_vport = type { i32 }

@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@LPORT_ST_READY = common dso_local global i64 0, align 8
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_lport*)* @__fc_vport_setlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fc_vport_setlink(%struct.fc_lport* %0, %struct.fc_lport* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_vport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 2
  %8 = load %struct.fc_vport*, %struct.fc_vport** %7, align 8
  store %struct.fc_vport* %8, %struct.fc_vport** %5, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPORT_ST_READY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.fc_vport*, %struct.fc_vport** %5, align 8
  %28 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %29 = call i32 @fc_vport_set_state(%struct.fc_vport* %27, i32 %28)
  %30 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %31 = call i32 @__fc_linkup(%struct.fc_lport* %30)
  br label %38

32:                                               ; preds = %21
  %33 = load %struct.fc_vport*, %struct.fc_vport** %5, align 8
  %34 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %35 = call i32 @fc_vport_set_state(%struct.fc_vport* %33, i32 %34)
  %36 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %37 = call i32 @__fc_linkdown(%struct.fc_lport* %36)
  br label %38

38:                                               ; preds = %32, %26
  br label %45

39:                                               ; preds = %15
  %40 = load %struct.fc_vport*, %struct.fc_vport** %5, align 8
  %41 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %42 = call i32 @fc_vport_set_state(%struct.fc_vport* %40, i32 %41)
  %43 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %44 = call i32 @__fc_linkdown(%struct.fc_lport* %43)
  br label %45

45:                                               ; preds = %14, %39, %38
  ret void
}

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

declare dso_local i32 @__fc_linkup(%struct.fc_lport*) #1

declare dso_local i32 @__fc_linkdown(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
