; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_check_wait_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_check_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fcoe_port = type { i32, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_check_wait_queue(%struct.fc_lport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fcoe_port*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %7)
  store %struct.fcoe_port* %8, %struct.fcoe_port** %5, align 8
  %9 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %10 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %17 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %16, i32 0, i32 3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @__skb_queue_tail(%struct.TYPE_4__* %17, %struct.sk_buff* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %22 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %104

26:                                               ; preds = %20
  %27 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %28 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %66, %26
  %30 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %31 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %37 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %42 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %41, i32 0, i32 3
  %43 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  %44 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %45 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @fcoe_start_io(%struct.sk_buff* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %51 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %35
  %57 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %58 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %57, i32 0, i32 3
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @__skb_queue_head(%struct.TYPE_4__* %58, %struct.sk_buff* %59)
  %61 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %62 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  br label %72

66:                                               ; preds = %35
  %67 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %68 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  br label %29

72:                                               ; preds = %56, %29
  %73 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %74 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %78 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %83 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %72
  %85 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %86 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %92 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %91, i32 0, i32 4
  %93 = call i32 @timer_pending(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %97 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %96, i32 0, i32 4
  %98 = load i64, i64* @jiffies, align 8
  %99 = add nsw i64 %98, 2
  %100 = call i32 @mod_timer(i32* %97, i64 %99)
  br label %101

101:                                              ; preds = %95, %90, %84
  %102 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %103 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %25
  %105 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %106 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %110 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %115 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %104
  %117 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %118 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock_bh(i32* %119)
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fcoe_start_io(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
