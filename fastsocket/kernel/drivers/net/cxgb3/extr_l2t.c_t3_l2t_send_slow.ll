; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_l2t_send_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_l2t_send_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.l2t_entry = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_l2t_send_slow(%struct.t3cdev* %0, %struct.sk_buff* %1, %struct.l2t_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.l2t_entry* %2, %struct.l2t_entry** %7, align 8
  br label %8

8:                                                ; preds = %43, %3
  %9 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %10 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %86 [
    i32 129, label %12
    i32 128, label %31
    i32 130, label %35
  ]

12:                                               ; preds = %8
  %13 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %14 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @neigh_event_send(i32 %15, i32* null)
  %17 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %18 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %21 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %26 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %29 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %8, %27
  %32 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @cxgb3_ofld_send(%struct.t3cdev* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %4, align 4
  br label %87

35:                                               ; preds = %8
  %36 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %37 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %40 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 130
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %45 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_bh(i32* %45)
  br label %8

47:                                               ; preds = %35
  %48 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @arpq_enqueue(%struct.l2t_entry* %48, %struct.sk_buff* %49)
  %51 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %52 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @neigh_event_send(i32 %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %86

65:                                               ; preds = %59
  %66 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %67 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %70 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %69, i32 0, i32 2
  %71 = call i32 @skb_queue_empty(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %77 = call i32 @setup_l2e_send_pending(%struct.t3cdev* %74, %struct.sk_buff* %75, %struct.l2t_entry* %76)
  br label %81

78:                                               ; preds = %65
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @__kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %83 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock_bh(i32* %83)
  br label %85

85:                                               ; preds = %81, %47
  br label %86

86:                                               ; preds = %85, %8, %64
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %31
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @neigh_event_send(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgb3_ofld_send(%struct.t3cdev*, %struct.sk_buff*) #1

declare dso_local i32 @arpq_enqueue(%struct.l2t_entry*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @setup_l2e_send_pending(%struct.t3cdev*, %struct.sk_buff*, %struct.l2t_entry*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
