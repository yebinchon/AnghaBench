; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_mgr_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_mgr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch_mgr_anchor = type { i32 (%struct.fc_frame*)*, i32, %struct.fc_exch_mgr* }
%struct.fc_frame = type opaque
%struct.fc_lport = type { i32 }
%struct.fc_exch_mgr = type { i32 }
%struct.fc_frame.0 = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_exch_mgr_anchor* @fc_exch_mgr_add(%struct.fc_lport* %0, %struct.fc_exch_mgr* %1, i32 (%struct.fc_frame.0*)* %2) #0 {
  %4 = alloca %struct.fc_exch_mgr_anchor*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_exch_mgr*, align 8
  %7 = alloca i32 (%struct.fc_frame.0*)*, align 8
  %8 = alloca %struct.fc_exch_mgr_anchor*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %5, align 8
  store %struct.fc_exch_mgr* %1, %struct.fc_exch_mgr** %6, align 8
  store i32 (%struct.fc_frame.0*)* %2, i32 (%struct.fc_frame.0*)** %7, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.fc_exch_mgr_anchor* @kmalloc(i32 24, i32 %9)
  store %struct.fc_exch_mgr_anchor* %10, %struct.fc_exch_mgr_anchor** %8, align 8
  %11 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  %12 = icmp ne %struct.fc_exch_mgr_anchor* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  store %struct.fc_exch_mgr_anchor* %14, %struct.fc_exch_mgr_anchor** %4, align 8
  br label %32

15:                                               ; preds = %3
  %16 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %6, align 8
  %17 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  %18 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %17, i32 0, i32 2
  store %struct.fc_exch_mgr* %16, %struct.fc_exch_mgr** %18, align 8
  %19 = load i32 (%struct.fc_frame.0*)*, i32 (%struct.fc_frame.0*)** %7, align 8
  %20 = bitcast i32 (%struct.fc_frame.0*)* %19 to i32 (%struct.fc_frame*)*
  %21 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  %22 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %21, i32 0, i32 0
  store i32 (%struct.fc_frame*)* %20, i32 (%struct.fc_frame*)** %22, align 8
  %23 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  %24 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %23, i32 0, i32 1
  %25 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %6, align 8
  %29 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %28, i32 0, i32 0
  %30 = call i32 @kref_get(i32* %29)
  %31 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %8, align 8
  store %struct.fc_exch_mgr_anchor* %31, %struct.fc_exch_mgr_anchor** %4, align 8
  br label %32

32:                                               ; preds = %15, %13
  %33 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %4, align 8
  ret %struct.fc_exch_mgr_anchor* %33
}

declare dso_local %struct.fc_exch_mgr_anchor* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
