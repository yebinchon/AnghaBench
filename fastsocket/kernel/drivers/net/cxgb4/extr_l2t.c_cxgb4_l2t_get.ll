; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i64, i64, i32, i32, i32, %struct.l2t_entry*, i32, i32, i32 }
%struct.l2t_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.l2t_entry* }
%struct.neighbour = type { %struct.TYPE_7__*, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_802_1Q_VLAN = common dso_local global i32 0, align 4
@VLAN_NONE = common dso_local global i64 0, align 8
@L2T_STATE_RESOLVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @cxgb4_l2t_get(%struct.l2t_data* %0, %struct.neighbour* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.l2t_data*, align 8
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.l2t_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.l2t_data* %0, %struct.l2t_data** %5, align 8
  store %struct.neighbour* %1, %struct.neighbour** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %22 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @addr_hash(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_LOOPBACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call %struct.TYPE_8__* @netdev2pinfo(%struct.net_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 4
  store i64 %47, i64* %9, align 8
  br label %53

48:                                               ; preds = %4
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call %struct.TYPE_8__* @netdev2pinfo(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %55 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_802_1Q_VLAN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %64 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i64 @vlan_dev_vlan_id(%struct.TYPE_7__* %65)
  store i64 %66, i64* %10, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i64, i64* @VLAN_NONE, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %62
  %70 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %71 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %70, i32 0, i32 0
  %72 = call i32 @write_lock_bh(i32* %71)
  %73 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %74 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.l2t_entry*, %struct.l2t_entry** %79, align 8
  store %struct.l2t_entry* %80, %struct.l2t_entry** %11, align 8
  br label %81

81:                                               ; preds = %121, %69
  %82 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %83 = icmp ne %struct.l2t_entry* %82, null
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @addreq(%struct.l2t_entry* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %84
  %90 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %91 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %97 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %103 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %109 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %110 = call i32 @l2t_hold(%struct.l2t_data* %108, %struct.l2t_entry* %109)
  %111 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %112 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %111, i32 0, i32 7
  %113 = call i32 @atomic_read(i32* %112)
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %117 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %118 = call i32 @reuse_entry(%struct.l2t_entry* %116, %struct.neighbour* %117)
  br label %119

119:                                              ; preds = %115, %107
  br label %188

120:                                              ; preds = %101, %95, %89, %84
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %123 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %122, i32 0, i32 6
  %124 = load %struct.l2t_entry*, %struct.l2t_entry** %123, align 8
  store %struct.l2t_entry* %124, %struct.l2t_entry** %11, align 8
  br label %81

125:                                              ; preds = %81
  %126 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %127 = call %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %126)
  store %struct.l2t_entry* %127, %struct.l2t_entry** %11, align 8
  %128 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %129 = icmp ne %struct.l2t_entry* %128, null
  br i1 %129, label %130, label %187

130:                                              ; preds = %125
  %131 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %132 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %131, i32 0, i32 5
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load i32, i32* @L2T_STATE_RESOLVING, align 4
  %135 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %136 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 8
  %137 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %138 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @memcpy(i32 %139, i32* %140, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %145 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %148 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %151 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 16
  %154 = zext i1 %153 to i32
  %155 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %156 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %158 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %157, i32 0, i32 7
  %159 = call i32 @atomic_set(i32* %158, i32 1)
  %160 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %161 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %162 = call i32 @neigh_replace(%struct.l2t_entry* %160, %struct.neighbour* %161)
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %165 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %167 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.l2t_entry*, %struct.l2t_entry** %172, align 8
  %174 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %175 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %174, i32 0, i32 6
  store %struct.l2t_entry* %173, %struct.l2t_entry** %175, align 8
  %176 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %177 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %178 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store %struct.l2t_entry* %176, %struct.l2t_entry** %183, align 8
  %184 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %185 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %184, i32 0, i32 5
  %186 = call i32 @spin_unlock(i32* %185)
  br label %187

187:                                              ; preds = %130, %125
  br label %188

188:                                              ; preds = %187, %119
  %189 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %190 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %189, i32 0, i32 0
  %191 = call i32 @write_unlock_bh(i32* %190)
  %192 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  ret %struct.l2t_entry* %192
}

declare dso_local i32 @addr_hash(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i64 @vlan_dev_vlan_id(%struct.TYPE_7__*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @addreq(%struct.l2t_entry*, i32*) #1

declare dso_local i32 @l2t_hold(%struct.l2t_data*, %struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @reuse_entry(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local %struct.l2t_entry* @alloc_l2e(%struct.l2t_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
