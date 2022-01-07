; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_fin_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_fin_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Received FIN, cm_node = %p, state = %u. refcnt=%d\0A\00", align 1
@NES_CM_STATE_LAST_ACK = common dso_local global i32 0, align 4
@NES_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@NES_CM_STATE_CLOSED = common dso_local global i8* null, align 8
@NES_CM_STATE_CLOSING = common dso_local global i32 0, align 4
@NES_TIMER_TYPE_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error Rcvd FIN for node-%p state = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*)* @handle_fin_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_fin_pkt(%struct.nes_cm_node* %0) #0 {
  %2 = alloca %struct.nes_cm_node*, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %2, align 8
  %3 = load i32, i32* @NES_DBG_CM, align 4
  %4 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %5 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %6 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %9 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %8, i32 0, i32 3
  %10 = call i32 @atomic_read(i32* %9)
  %11 = call i32 (i32, i8*, %struct.nes_cm_node*, i32, ...) @nes_debug(i32 %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %4, i32 %7, i32 %10)
  %12 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %13 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %93 [
    i32 131, label %15
    i32 130, label %15
    i32 136, label %15
    i32 133, label %15
    i32 132, label %28
    i32 135, label %47
    i32 134, label %60
    i32 129, label %75
    i32 128, label %92
  ]

15:                                               ; preds = %1, %1, %1, %1
  %16 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %17 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %22 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %21)
  %23 = load i32, i32* @NES_CM_STATE_LAST_ACK, align 4
  %24 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %25 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %27 = call i32 @send_fin(%struct.nes_cm_node* %26, i32* null)
  br label %100

28:                                               ; preds = %1
  %29 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %30 = load i32, i32* @NES_CM_EVENT_ABORTED, align 4
  %31 = call i32 @create_event(%struct.nes_cm_node* %29, i32 %30)
  %32 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %33 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %38 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %37)
  %39 = load i8*, i8** @NES_CM_STATE_CLOSED, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %42 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %44 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %43)
  %45 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %46 = call i32 @send_reset(%struct.nes_cm_node* %45, i32* null)
  br label %100

47:                                               ; preds = %1
  %48 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %49 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %54 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %53)
  %55 = load i32, i32* @NES_CM_STATE_CLOSING, align 4
  %56 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %57 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %59 = call i32 @send_ack(%struct.nes_cm_node* %58, i32* null)
  br label %100

60:                                               ; preds = %1
  %61 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %62 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %67 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %66)
  %68 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %69 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %68, i32 0, i32 0
  store i32 129, i32* %69, align 4
  %70 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %71 = call i32 @send_ack(%struct.nes_cm_node* %70, i32* null)
  %72 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %73 = load i32, i32* @NES_TIMER_TYPE_CLOSE, align 4
  %74 = call i32 @schedule_nes_timer(%struct.nes_cm_node* %72, i32* null, i32 %73, i32 1, i32 0)
  br label %100

75:                                               ; preds = %1
  %76 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %77 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %82 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %81)
  %83 = load i8*, i8** @NES_CM_STATE_CLOSED, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %86 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %88 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %91 = call i32 @rem_ref_cm_node(i32 %89, %struct.nes_cm_node* %90)
  br label %100

92:                                               ; preds = %1
  br label %93

93:                                               ; preds = %1, %92
  %94 = load i32, i32* @NES_DBG_CM, align 4
  %95 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %96 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %97 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, %struct.nes_cm_node*, i32, ...) @nes_debug(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.nes_cm_node* %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %75, %60, %47, %28, %15
  ret void
}

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cleanup_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @send_fin(%struct.nes_cm_node*, i32*) #1

declare dso_local i32 @create_event(%struct.nes_cm_node*, i32) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, i32*) #1

declare dso_local i32 @send_ack(%struct.nes_cm_node*, i32*) #1

declare dso_local i32 @schedule_nes_timer(%struct.nes_cm_node*, i32*, i32, i32, i32) #1

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
