; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_cmd_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_cmd_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_cmd_timer_set(%struct.bnx2fc_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2fc_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2fc_interface*, align 8
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %9, align 8
  store %struct.bnx2fc_interface* %10, %struct.bnx2fc_interface** %5, align 8
  %11 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @msecs_to_jiffies(i32 %16)
  %18 = call i64 @queue_delayed_work(i32 %13, i32* %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %21, i32 0, i32 0
  %23 = call i32 @kref_get(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  ret void
}

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
