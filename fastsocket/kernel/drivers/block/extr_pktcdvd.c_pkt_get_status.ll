; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_ctrl_command = type { i32, i8*, i8*, i32 }
%struct.pktcdvd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ctl_mutex = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MAX_WRITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_ctrl_command*)* @pkt_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_get_status(%struct.pkt_ctrl_command* %0) #0 {
  %2 = alloca %struct.pkt_ctrl_command*, align 8
  %3 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pkt_ctrl_command* %0, %struct.pkt_ctrl_command** %2, align 8
  %4 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %5 = call i32 @mutex_lock_nested(i32* @ctl_mutex, i32 %4)
  %6 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %7 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.pktcdvd_device* @pkt_find_dev_from_minor(i32 %8)
  store %struct.pktcdvd_device* %9, %struct.pktcdvd_device** %3, align 8
  %10 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %11 = icmp ne %struct.pktcdvd_device* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %14 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @new_encode_dev(i32 %17)
  %19 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %20 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @new_encode_dev(i32 %23)
  %25 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %26 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %29 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %28, i32 0, i32 2
  store i8* null, i8** %29, align 8
  %30 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %31 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %30, i32 0, i32 1
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %27, %12
  %33 = load i32, i32* @MAX_WRITERS, align 4
  %34 = load %struct.pkt_ctrl_command*, %struct.pkt_ctrl_command** %2, align 8
  %35 = getelementptr inbounds %struct.pkt_ctrl_command, %struct.pkt_ctrl_command* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = call i32 @mutex_unlock(i32* @ctl_mutex)
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.pktcdvd_device* @pkt_find_dev_from_minor(i32) #1

declare dso_local i8* @new_encode_dev(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
