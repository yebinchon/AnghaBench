; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_t4_l2t_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_t4_l2t_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.l2t_data* }
%struct.l2t_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.l2t_entry* }
%struct.l2t_entry = type { i32, i64, i32, i32, %struct.sk_buff*, i32*, %struct.neighbour*, i32, %struct.l2t_entry* }
%struct.sk_buff = type { i32 }
%struct.neighbour = type { i32, i32, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@L2T_STATE_RESOLVING = common dso_local global i64 0, align 8
@NUD_FAILED = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@L2T_STATE_VALID = common dso_local global i64 0, align 8
@L2T_STATE_STALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_l2t_update(%struct.adapter* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2t_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.l2t_data*, %struct.l2t_data** %13, align 8
  store %struct.l2t_data* %14, %struct.l2t_data** %7, align 8
  %15 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %16 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @addr_hash(i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %34 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %33, i32 0, i32 0
  %35 = call i32 @read_lock_bh(i32* %34)
  %36 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %37 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.l2t_entry*, %struct.l2t_entry** %42, align 8
  store %struct.l2t_entry* %43, %struct.l2t_entry** %5, align 8
  br label %44

44:                                               ; preds = %72, %2
  %45 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %46 = icmp ne %struct.l2t_entry* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @addreq(%struct.l2t_entry* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %47
  %53 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %54 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %59, i32 0, i32 2
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 7
  %64 = call i64 @atomic_read(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %80

67:                                               ; preds = %58
  %68 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %69 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  br label %76

71:                                               ; preds = %52, %47
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %74 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %73, i32 0, i32 8
  %75 = load %struct.l2t_entry*, %struct.l2t_entry** %74, align 8
  store %struct.l2t_entry* %75, %struct.l2t_entry** %5, align 8
  br label %44

76:                                               ; preds = %67, %44
  %77 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %78 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %77, i32 0, i32 0
  %79 = call i32 @read_unlock_bh(i32* %78)
  br label %172

80:                                               ; preds = %66
  %81 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %82 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %81, i32 0, i32 0
  %83 = call i32 @read_unlock(i32* %82)
  %84 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %86 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %85, i32 0, i32 6
  %87 = load %struct.neighbour*, %struct.neighbour** %86, align 8
  %88 = icmp ne %struct.neighbour* %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %91 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %92 = call i32 @neigh_replace(%struct.l2t_entry* %90, %struct.neighbour* %91)
  br label %93

93:                                               ; preds = %89, %80
  %94 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %95 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @L2T_STATE_RESOLVING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NUD_FAILED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %108 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %107, i32 0, i32 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %108, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %6, align 8
  %110 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %111 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %110, i32 0, i32 5
  store i32* null, i32** %111, align 8
  %112 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %113 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %112, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %113, align 8
  br label %133

114:                                              ; preds = %99
  %115 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %116 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @NUD_CONNECTED, align 4
  %119 = load i32, i32* @NUD_STALE, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %125 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %124, i32 0, i32 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.adapter*, %struct.adapter** %3, align 8
  %130 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %131 = call i32 @write_l2e(%struct.adapter* %129, %struct.l2t_entry* %130, i32 1)
  br label %132

132:                                              ; preds = %128, %123, %114
  br label %133

133:                                              ; preds = %132, %106
  br label %162

134:                                              ; preds = %93
  %135 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %136 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @NUD_CONNECTED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i64, i64* @L2T_STATE_VALID, align 8
  br label %145

143:                                              ; preds = %134
  %144 = load i64, i64* @L2T_STATE_STALE, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i64 [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %148 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %150 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %153 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @memcmp(i32 %151, i32 %154, i32 4)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %160 = call i32 @write_l2e(%struct.adapter* %158, %struct.l2t_entry* %159, i32 0)
  br label %161

161:                                              ; preds = %157, %145
  br label %162

162:                                              ; preds = %161, %133
  %163 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %164 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %163, i32 0, i32 2
  %165 = call i32 @spin_unlock_bh(i32* %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = icmp ne %struct.sk_buff* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.adapter*, %struct.adapter** %3, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @handle_failed_resolution(%struct.adapter* %169, %struct.sk_buff* %170)
  br label %172

172:                                              ; preds = %76, %168, %162
  ret void
}

declare dso_local i32 @addr_hash(i32*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @addreq(%struct.l2t_entry*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @write_l2e(%struct.adapter*, %struct.l2t_entry*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @handle_failed_resolution(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
