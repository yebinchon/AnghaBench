; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.l2t_entry = type { i32, i32, i32, i32 }
%struct.adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_l2t_send(%struct.net_device* %0, %struct.sk_buff* %1, %struct.l2t_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  %8 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.l2t_entry* %2, %struct.l2t_entry** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %8, align 8
  br label %11

11:                                               ; preds = %51, %3
  %12 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %13 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %94 [
    i32 130, label %15
    i32 128, label %34
    i32 131, label %38
    i32 129, label %38
  ]

15:                                               ; preds = %11
  %16 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %17 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @neigh_event_send(i32 %18, i32* null)
  %20 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %21 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %24 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %29 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %28, i32 0, i32 0
  store i32 128, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %32 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  br label %34

34:                                               ; preds = %11, %30
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @t4_ofld_send(%struct.adapter* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %11, %11
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %40 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 129
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %48 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 131
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %53 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  br label %11

55:                                               ; preds = %46, %38
  %56 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @arpq_enqueue(%struct.l2t_entry* %56, %struct.sk_buff* %57)
  %59 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %93

66:                                               ; preds = %55
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %68 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @neigh_event_send(i32 %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %74 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %73, i32 0, i32 1
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %77 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 131
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %82 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.adapter*, %struct.adapter** %8, align 8
  %87 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %88 = call i32 @write_l2e(%struct.adapter* %86, %struct.l2t_entry* %87, i32 1)
  br label %89

89:                                               ; preds = %85, %80, %72
  %90 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %91 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_bh(i32* %91)
  br label %93

93:                                               ; preds = %89, %66, %55
  br label %94

94:                                               ; preds = %93, %11
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @neigh_event_send(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @t4_ofld_send(%struct.adapter*, %struct.sk_buff*) #1

declare dso_local i32 @arpq_enqueue(%struct.l2t_entry*, %struct.sk_buff*) #1

declare dso_local i32 @write_l2e(%struct.adapter*, %struct.l2t_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
