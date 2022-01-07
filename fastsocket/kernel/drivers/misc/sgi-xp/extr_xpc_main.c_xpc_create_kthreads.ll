; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_create_kthreads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_create_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }
%struct.TYPE_2__ = type { void (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)* }
%struct.xpc_channel = type { i64, i32, i64, i32, i32, i32 }
%struct.task_struct = type { i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_C_DISCONNECTINGCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@xpc_kthread_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xpc%02dc%d\00", align 1
@xpLackOfResources = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_create_kthreads(%struct.xpc_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xpc_partition*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca void (%struct.xpc_partition*)*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @XPC_PACK_ARGS(i64 %14, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i64 %22
  store %struct.xpc_partition* %23, %struct.xpc_partition** %9, align 8
  %24 = load void (%struct.xpc_partition*)*, void (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  store void (%struct.xpc_partition*)* %24, void (%struct.xpc_partition*)** %11, align 8
  br label %25

25:                                               ; preds = %128, %3
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %129

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 4
  %35 = call i32 @atomic_inc_not_zero(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %39 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  br label %129

47:                                               ; preds = %32
  br label %72

48:                                               ; preds = %29
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %50 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %129

56:                                               ; preds = %48
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %58 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %57, i32 0, i32 4
  %59 = call i32 @atomic_inc_return(i32* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %63 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc_return(i32* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %68 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %69 = call i32 %67(%struct.xpc_partition* %68)
  br label %70

70:                                               ; preds = %66, %61, %56
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %74 = call i32 @xpc_part_ref(%struct.xpc_partition* %73)
  %75 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %76 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %75)
  %77 = load i32, i32* @xpc_kthread_start, align 4
  %78 = load i64, i64* %8, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %81 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %84 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.task_struct* @kthread_run(i32 %77, i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %82, i32 %85)
  store %struct.task_struct* %86, %struct.task_struct** %10, align 8
  %87 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %88 = call i64 @IS_ERR(%struct.task_struct* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %72
  %91 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %92 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %91, i32 0, i32 4
  %93 = call i64 @atomic_dec_return(i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %97 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %96, i32 0, i32 0
  %98 = call i64 @atomic_dec_return(i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load void (%struct.xpc_partition*)*, void (%struct.xpc_partition*)** %11, align 8
  %102 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  call void %101(%struct.xpc_partition* %102)
  br label %103

103:                                              ; preds = %100, %95, %90
  %104 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %105 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %104)
  %106 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %107 = call i32 @xpc_part_deref(%struct.xpc_partition* %106)
  %108 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %109 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %108, i32 0, i32 4
  %110 = call i64 @atomic_read(i32* %109)
  %111 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %112 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %103
  %116 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %117 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %116, i32 0, i32 3
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %121 = load i32, i32* @xpLackOfResources, align 4
  %122 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %120, i32 %121, i64* %7)
  %123 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %124 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %123, i32 0, i32 3
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  br label %127

127:                                              ; preds = %115, %103
  br label %129

128:                                              ; preds = %72
  br label %25

129:                                              ; preds = %127, %55, %37, %25
  ret void
}

declare dso_local i64 @XPC_PACK_ARGS(i64, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i8*, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
