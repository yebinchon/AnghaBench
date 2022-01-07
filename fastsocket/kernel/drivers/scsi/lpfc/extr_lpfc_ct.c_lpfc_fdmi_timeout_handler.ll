; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_2__ = type { i8* }

@FDMI_DID = common dso_local global i32 0, align 4
@SLI_MGMT_DHBA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_fdmi_timeout_handler(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %4 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %5 = load i32, i32* @FDMI_DID, align 4
  %6 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %4, i32 %5)
  store %struct.lpfc_nodelist* %6, %struct.lpfc_nodelist** %3, align 8
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %8 = icmp ne %struct.lpfc_nodelist* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %11 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = call %struct.TYPE_2__* (...) @init_utsname()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %24 = load i32, i32* @SLI_MGMT_DHBA, align 4
  %25 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %22, %struct.lpfc_nodelist* %23, i32 %24)
  br label %33

26:                                               ; preds = %13
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load i64, i64* @jiffies, align 8
  %30 = call i64 @msecs_to_jiffies(i32 60000)
  %31 = add nsw i64 %29, %30
  %32 = call i32 @mod_timer(i32* %28, i64 %31)
  br label %33

33:                                               ; preds = %26, %21
  br label %34

34:                                               ; preds = %33, %9, %1
  ret void
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
