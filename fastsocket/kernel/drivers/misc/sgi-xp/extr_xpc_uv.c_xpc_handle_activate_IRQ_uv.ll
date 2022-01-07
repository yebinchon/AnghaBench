; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_activate_IRQ_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_activate_IRQ_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xpc_partition = type { i32 }
%struct.xpc_activate_mq_msghdr_uv = type { i16 }

@xpc_activate_mq_uv = common dso_local global %struct.TYPE_2__* null, align 8
@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"xpc_handle_activate_IRQ_uv() received invalid partid=0x%x in message\0A\00", align 1
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xpc_handle_activate_IRQ_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_handle_activate_IRQ_uv(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xpc_activate_mq_msghdr_uv*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.xpc_partition*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %2, %52
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xpc_activate_mq_uv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.xpc_activate_mq_msghdr_uv* @gru_get_next_message(i32 %13)
  store %struct.xpc_activate_mq_msghdr_uv* %14, %struct.xpc_activate_mq_msghdr_uv** %5, align 8
  %15 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %5, align 8
  %16 = icmp eq %struct.xpc_activate_mq_msghdr_uv* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %58

18:                                               ; preds = %10
  %19 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %5, align 8
  %20 = getelementptr inbounds %struct.xpc_activate_mq_msghdr_uv, %struct.xpc_activate_mq_msghdr_uv* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %6, align 2
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i16, i16* %6, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %18
  %32 = load i32, i32* @xpc_part, align 4
  %33 = load i16, i16* %6, align 2
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i16 signext %33)
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %37 = load i16, i16* %6, align 2
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %36, i64 %38
  store %struct.xpc_partition* %39, %struct.xpc_partition** %7, align 8
  %40 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %41 = call i32 @xpc_part_ref(%struct.xpc_partition* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %43 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @xpc_handle_activate_mq_msg_uv(%struct.xpc_partition* %42, %struct.xpc_activate_mq_msghdr_uv* %43, i32 %44, i32* %8)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %50 = call i32 @xpc_part_deref(%struct.xpc_partition* %49)
  br label %51

51:                                               ; preds = %48, %35
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xpc_activate_mq_uv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %5, align 8
  %57 = call i32 @gru_free_message(i32 %55, %struct.xpc_activate_mq_msghdr_uv* %56)
  br label %10

58:                                               ; preds = %17
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %64
}

declare dso_local %struct.xpc_activate_mq_msghdr_uv* @gru_get_next_message(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 signext) #1

declare dso_local i32 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_handle_activate_mq_msg_uv(%struct.xpc_partition*, %struct.xpc_activate_mq_msghdr_uv*, i32, i32*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i32 @gru_free_message(i32, %struct.xpc_activate_mq_msghdr_uv*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
