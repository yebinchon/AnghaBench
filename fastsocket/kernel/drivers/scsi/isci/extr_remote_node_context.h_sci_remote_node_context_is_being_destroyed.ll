; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.h_sci_remote_node_context_is_being_destroyed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.h_sci_remote_node_context_is_being_destroyed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RNC_DEST_FINAL = common dso_local global i64 0, align 8
@SCI_RNC_INITIAL = common dso_local global i64 0, align 8
@RNC_DEST_UNSPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sci_remote_node_context*)* @sci_remote_node_context_is_being_destroyed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_node_context_is_being_destroyed(%struct.sci_remote_node_context* %0) #0 {
  %2 = alloca %struct.sci_remote_node_context*, align 8
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %2, align 8
  %3 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %4 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RNC_DEST_FINAL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %10 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCI_RNC_INITIAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %17 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RNC_DEST_UNSPECIFIED, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %8
  %22 = phi i1 [ false, %8 ], [ %20, %15 ]
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i1 [ true, %1 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
