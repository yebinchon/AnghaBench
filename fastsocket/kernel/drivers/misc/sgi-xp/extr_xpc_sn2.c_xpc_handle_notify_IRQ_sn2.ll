; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_handle_notify_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_handle_notify_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XP_MAX_NPARTITIONS_SN2 = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xpc_handle_notify_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_handle_notify_IRQ_sn2(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.xpc_partition*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = trunc i64 %8 to i16
  store i16 %9, i16* %5, align 2
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %11 = load i16, i16* %5, align 2
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i64 %12
  store %struct.xpc_partition* %13, %struct.xpc_partition** %6, align 8
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @XP_MAX_NPARTITIONS_SN2, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sge i32 %19, %21
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ true, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @DBUG_ON(i32 %25)
  %27 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %28 = call i64 @xpc_part_ref(%struct.xpc_partition* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %32 = call i32 @xpc_check_for_sent_chctl_flags_sn2(%struct.xpc_partition* %31)
  %33 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %34 = call i32 @xpc_part_deref(%struct.xpc_partition* %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_check_for_sent_chctl_flags_sn2(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
