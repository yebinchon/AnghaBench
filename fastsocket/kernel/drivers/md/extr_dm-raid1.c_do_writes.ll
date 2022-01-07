; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i32, i32, %struct.bio_list, i32, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_dirty_log*, i32)* }

@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio_list*)* @do_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_writes(%struct.mirror_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio_list, align 4
  %8 = alloca %struct.bio_list, align 4
  %9 = alloca %struct.bio_list, align 4
  %10 = alloca %struct.bio_list*, align 8
  %11 = alloca %struct.bio_list, align 4
  %12 = alloca %struct.dm_dirty_log*, align 8
  %13 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  store %struct.bio_list* null, %struct.bio_list** %10, align 8
  %14 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %16)
  store %struct.dm_dirty_log* %17, %struct.dm_dirty_log** %12, align 8
  %18 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %19 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %203

23:                                               ; preds = %2
  %24 = call i32 @bio_list_init(%struct.bio_list* %7)
  %25 = call i32 @bio_list_init(%struct.bio_list* %8)
  %26 = call i32 @bio_list_init(%struct.bio_list* %9)
  %27 = call i32 @bio_list_init(%struct.bio_list* %11)
  br label %28

28:                                               ; preds = %84, %71, %46, %23
  %29 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %30 = call %struct.bio* @bio_list_pop(%struct.bio_list* %29)
  store %struct.bio* %30, %struct.bio** %6, align 8
  %31 = icmp ne %struct.bio* %30, null
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BIO_FLUSH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BIO_DISCARD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = call i32 @bio_list_add(%struct.bio_list* %7, %struct.bio* %47)
  br label %28

49:                                               ; preds = %39
  %50 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %51 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = call i32 @dm_rh_bio_to_region(i32 %52, %struct.bio* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %56 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64 (%struct.dm_dirty_log*, i32)*, i64 (%struct.dm_dirty_log*, i32)** %58, align 8
  %60 = icmp ne i64 (%struct.dm_dirty_log*, i32)* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %49
  %62 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %63 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (%struct.dm_dirty_log*, i32)*, i64 (%struct.dm_dirty_log*, i32)** %65, align 8
  %67 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 %66(%struct.dm_dirty_log* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = call i32 @bio_list_add(%struct.bio_list* %11, %struct.bio* %72)
  br label %28

74:                                               ; preds = %61, %49
  %75 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %76 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @dm_rh_get_state(i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  switch i32 %80, label %84 [
    i32 131, label %81
    i32 130, label %81
    i32 129, label %82
    i32 128, label %83
  ]

81:                                               ; preds = %74, %74
  store %struct.bio_list* %7, %struct.bio_list** %10, align 8
  br label %84

82:                                               ; preds = %74
  store %struct.bio_list* %8, %struct.bio_list** %10, align 8
  br label %84

83:                                               ; preds = %74
  store %struct.bio_list* %9, %struct.bio_list** %10, align 8
  br label %84

84:                                               ; preds = %74, %83, %82, %81
  %85 = load %struct.bio_list*, %struct.bio_list** %10, align 8
  %86 = load %struct.bio*, %struct.bio** %6, align 8
  %87 = call i32 @bio_list_add(%struct.bio_list* %85, %struct.bio* %86)
  br label %28

88:                                               ; preds = %28
  %89 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %95 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %94, i32 0, i32 2
  %96 = call i32 @spin_lock_irq(i32* %95)
  %97 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %98 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %97, i32 0, i32 5
  %99 = call i32 @bio_list_merge(%struct.bio_list* %98, %struct.bio_list* %11)
  %100 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %101 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %100, i32 0, i32 2
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %104 = call i32 @delayed_wake(%struct.mirror_set* %103)
  br label %105

105:                                              ; preds = %93, %88
  %106 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %107 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dm_rh_inc_pending(i32 %108, %struct.bio_list* %7)
  %110 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %111 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dm_rh_inc_pending(i32 %112, %struct.bio_list* %8)
  %114 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %115 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @dm_rh_flush(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %124

120:                                              ; preds = %105
  %121 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %122 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %120, %119
  %125 = phi i32 [ 1, %119 ], [ %123, %120 ]
  %126 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %127 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %129 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %124
  %134 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %135 = call i64 @errors_handled(%struct.mirror_set* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %139 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %138, i32 0, i32 2
  %140 = call i32 @spin_lock_irq(i32* %139)
  %141 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %142 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %141, i32 0, i32 3
  %143 = call i32 @bio_list_merge(%struct.bio_list* %142, %struct.bio_list* %7)
  %144 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %145 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %144, i32 0, i32 2
  %146 = call i32 @spin_unlock_irq(i32* %145)
  %147 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %148 = call i32 @wakeup_mirrord(%struct.mirror_set* %147)
  br label %158

149:                                              ; preds = %133, %124
  br label %150

150:                                              ; preds = %153, %149
  %151 = call %struct.bio* @bio_list_pop(%struct.bio_list* %7)
  store %struct.bio* %151, %struct.bio** %6, align 8
  %152 = icmp ne %struct.bio* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %155 = load %struct.bio*, %struct.bio** %6, align 8
  %156 = call i32 @do_write(%struct.mirror_set* %154, %struct.bio* %155)
  br label %150

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %162, %158
  %160 = call %struct.bio* @bio_list_pop(%struct.bio_list* %9)
  store %struct.bio* %160, %struct.bio** %6, align 8
  %161 = icmp ne %struct.bio* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %164 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.bio*, %struct.bio** %6, align 8
  %167 = call i32 @dm_rh_delay(i32 %165, %struct.bio* %166)
  br label %159

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %202, %168
  %170 = call %struct.bio* @bio_list_pop(%struct.bio_list* %8)
  store %struct.bio* %170, %struct.bio** %6, align 8
  %171 = icmp ne %struct.bio* %170, null
  br i1 %171, label %172, label %203

172:                                              ; preds = %169
  %173 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %174 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %180 = call i64 @errors_handled(%struct.mirror_set* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %184 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %183, i32 0, i32 2
  %185 = call i32 @spin_lock_irq(i32* %184)
  %186 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %187 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %186, i32 0, i32 3
  %188 = load %struct.bio*, %struct.bio** %6, align 8
  %189 = call i32 @bio_list_add(%struct.bio_list* %187, %struct.bio* %188)
  %190 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %191 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %190, i32 0, i32 2
  %192 = call i32 @spin_unlock_irq(i32* %191)
  %193 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %194 = call i32 @wakeup_mirrord(%struct.mirror_set* %193)
  br label %202

195:                                              ; preds = %178, %172
  %196 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %197 = call i32 @get_default_mirror(%struct.mirror_set* %196)
  %198 = load %struct.bio*, %struct.bio** %6, align 8
  %199 = call i32 @map_bio(i32 %197, %struct.bio* %198)
  %200 = load %struct.bio*, %struct.bio** %6, align 8
  %201 = call i32 @generic_make_request(%struct.bio* %200)
  br label %202

202:                                              ; preds = %195, %182
  br label %169

203:                                              ; preds = %22, %169
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local i32 @dm_rh_get_state(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @delayed_wake(%struct.mirror_set*) #1

declare dso_local i32 @dm_rh_inc_pending(i32, %struct.bio_list*) #1

declare dso_local i64 @dm_rh_flush(i32) #1

declare dso_local i64 @errors_handled(%struct.mirror_set*) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

declare dso_local i32 @do_write(%struct.mirror_set*, %struct.bio*) #1

declare dso_local i32 @dm_rh_delay(i32, %struct.bio*) #1

declare dso_local i32 @map_bio(i32, %struct.bio*) #1

declare dso_local i32 @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
