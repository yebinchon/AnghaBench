; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_l2t_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_l2t_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i32, i32, i32, i32, i32, i32, %struct.l2t_entry* }
%struct.t3cdev = type { i32 }
%struct.dst_entry = type { %struct.neighbour* }
%struct.neighbour = type { %struct.net_device*, i64 }
%struct.net_device = type { i32, i32 }
%struct.port_info = type { i32 }
%struct.l2t_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.l2t_entry* }

@L2T_STATE_RESOLVING = common dso_local global i32 0, align 4
@IFF_802_1Q_VLAN = common dso_local global i32 0, align 4
@VLAN_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @t3_l2t_get(%struct.t3cdev* %0, %struct.dst_entry* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.l2t_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  store %struct.l2t_entry* null, %struct.l2t_entry** %7, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.neighbour*, %struct.neighbour** %17, align 8
  store %struct.neighbour* %18, %struct.neighbour** %8, align 8
  %19 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %20 = icmp ne %struct.neighbour* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %178

22:                                               ; preds = %3
  %23 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %24 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %22
  %36 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %37 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  store %struct.net_device* %38, %struct.net_device** %6, align 8
  br label %39

39:                                               ; preds = %35, %22
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call %struct.port_info* @netdev_priv(%struct.net_device* %40)
  store %struct.port_info* %41, %struct.port_info** %9, align 8
  %42 = load %struct.port_info*, %struct.port_info** %9, align 8
  %43 = getelementptr inbounds %struct.port_info, %struct.port_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %46 = call %struct.l2t_data* @L2DATA(%struct.t3cdev* %45)
  store %struct.l2t_data* %46, %struct.l2t_data** %10, align 8
  %47 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %48 = icmp ne %struct.l2t_data* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %178

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %54 = call i32 @arp_hash(i64 %51, i32 %52, %struct.l2t_data* %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %56 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %55, i32 0, i32 0
  %57 = call i32 @write_lock_bh(i32* %56)
  %58 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %59 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.l2t_entry*, %struct.l2t_entry** %64, align 8
  store %struct.l2t_entry* %65, %struct.l2t_entry** %7, align 8
  br label %66

66:                                               ; preds = %101, %50
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %68 = icmp ne %struct.l2t_entry* %67, null
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %71 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %77 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %83 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %89 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %90 = call i32 @l2t_hold(%struct.l2t_data* %88, %struct.l2t_entry* %89)
  %91 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %92 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %91, i32 0, i32 5
  %93 = call i32 @atomic_read(i32* %92)
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %97 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %98 = call i32 @reuse_entry(%struct.l2t_entry* %96, %struct.neighbour* %97)
  br label %99

99:                                               ; preds = %95, %87
  br label %174

100:                                              ; preds = %81, %75, %69
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %103 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %102, i32 0, i32 7
  %104 = load %struct.l2t_entry*, %struct.l2t_entry** %103, align 8
  store %struct.l2t_entry* %104, %struct.l2t_entry** %7, align 8
  br label %66

105:                                              ; preds = %66
  %106 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %107 = call %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %106)
  store %struct.l2t_entry* %107, %struct.l2t_entry** %7, align 8
  %108 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %109 = icmp ne %struct.l2t_entry* %108, null
  br i1 %109, label %110, label %173

110:                                              ; preds = %105
  %111 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %112 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %111, i32 0, i32 3
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %115 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.l2t_entry*, %struct.l2t_entry** %120, align 8
  %122 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %123 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %122, i32 0, i32 7
  store %struct.l2t_entry* %121, %struct.l2t_entry** %123, align 8
  %124 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %125 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %126 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store %struct.l2t_entry* %124, %struct.l2t_entry** %131, align 8
  %132 = load i32, i32* @L2T_STATE_RESOLVING, align 4
  %133 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %134 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %137 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %140 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %143 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %145 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %144, i32 0, i32 5
  %146 = call i32 @atomic_set(i32* %145, i32 1)
  %147 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %148 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %149 = call i32 @neigh_replace(%struct.l2t_entry* %147, %struct.neighbour* %148)
  %150 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %151 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %150, i32 0, i32 0
  %152 = load %struct.net_device*, %struct.net_device** %151, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IFF_802_1Q_VLAN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %110
  %159 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %160 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %159, i32 0, i32 0
  %161 = load %struct.net_device*, %struct.net_device** %160, align 8
  %162 = call i32 @vlan_dev_vlan_id(%struct.net_device* %161)
  %163 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %164 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  br label %169

165:                                              ; preds = %110
  %166 = load i32, i32* @VLAN_NONE, align 4
  %167 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %168 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %171 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %170, i32 0, i32 3
  %172 = call i32 @spin_unlock(i32* %171)
  br label %173

173:                                              ; preds = %169, %105
  br label %174

174:                                              ; preds = %173, %99
  %175 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %176 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %175, i32 0, i32 0
  %177 = call i32 @write_unlock_bh(i32* %176)
  br label %178

178:                                              ; preds = %174, %49, %21
  %179 = call i32 (...) @rcu_read_unlock()
  %180 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  ret %struct.l2t_entry* %180
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.l2t_data* @L2DATA(%struct.t3cdev*) #1

declare dso_local i32 @arp_hash(i64, i32, %struct.l2t_data*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @l2t_hold(%struct.l2t_data*, %struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @reuse_entry(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local %struct.l2t_entry* @alloc_l2e(%struct.l2t_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
