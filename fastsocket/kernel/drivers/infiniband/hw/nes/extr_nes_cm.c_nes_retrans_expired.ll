; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_retrans_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_retrans_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, %struct.iw_cm_id*, i32 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)* }

@NES_CM_STATE_CLOSED = common dso_local global i32 0, align 4
@NES_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*)* @nes_retrans_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_retrans_expired(%struct.nes_cm_node* %0) #0 {
  %2 = alloca %struct.nes_cm_node*, align 8
  %3 = alloca %struct.iw_cm_id*, align 8
  %4 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %2, align 8
  %5 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %6 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %5, i32 0, i32 1
  %7 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  store %struct.iw_cm_id* %7, %struct.iw_cm_id** %3, align 8
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %9 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @NES_CM_STATE_CLOSED, align 4
  %12 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %13 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %35 [
    i32 128, label %15
    i32 131, label %15
    i32 129, label %21
    i32 130, label %21
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %17 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %20 = call i32 @rem_ref_cm_node(i32 %18, %struct.nes_cm_node* %19)
  br label %43

21:                                               ; preds = %1, %1
  %22 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %23 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %22, i32 0, i32 1
  %24 = load %struct.iw_cm_id*, %struct.iw_cm_id** %23, align 8
  %25 = icmp ne %struct.iw_cm_id* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %28 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %27, i32 0, i32 0
  %29 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %28, align 8
  %30 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %31 = call i32 %29(%struct.iw_cm_id* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %34 = call i32 @send_reset(%struct.nes_cm_node* %33, i32* null)
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %37 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %36)
  %38 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %39 = call i32 @send_reset(%struct.nes_cm_node* %38, i32* null)
  %40 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %41 = load i32, i32* @NES_CM_EVENT_ABORTED, align 4
  %42 = call i32 @create_event(%struct.nes_cm_node* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %32, %15
  ret void
}

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, i32*) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @create_event(%struct.nes_cm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
