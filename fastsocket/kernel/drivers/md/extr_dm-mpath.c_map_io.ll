; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_map_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_map_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i64, i32, i32, i64, i32, i64, i32, i32, i64, %struct.pgpath* }
%struct.pgpath = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)* }
%struct.request = type { i32, i32, i32 }
%union.map_info = type { %struct.dm_mpath_io* }
%struct.dm_mpath_io = type { i64, %struct.pgpath* }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, %struct.request*, %union.map_info*, i32)* @map_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_io(%struct.multipath* %0, %struct.request* %1, %union.map_info* %2, i32 %3) #0 {
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pgpath*, align 8
  %13 = alloca %struct.block_device*, align 8
  %14 = alloca %struct.dm_mpath_io*, align 8
  store %struct.multipath* %0, %struct.multipath** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = call i64 @blk_rq_bytes(%struct.request* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %union.map_info*, %union.map_info** %7, align 8
  %19 = bitcast %union.map_info* %18 to %struct.dm_mpath_io**
  %20 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %19, align 8
  store %struct.dm_mpath_io* %20, %struct.dm_mpath_io** %14, align 8
  %21 = load %struct.multipath*, %struct.multipath** %5, align 8
  %22 = getelementptr inbounds %struct.multipath, %struct.multipath* %21, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.multipath*, %struct.multipath** %5, align 8
  %26 = getelementptr inbounds %struct.multipath, %struct.multipath* %25, i32 0, i32 9
  %27 = load %struct.pgpath*, %struct.pgpath** %26, align 8
  %28 = icmp ne %struct.pgpath* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %4
  %30 = load %struct.multipath*, %struct.multipath** %5, align 8
  %31 = getelementptr inbounds %struct.multipath, %struct.multipath* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.multipath*, %struct.multipath** %5, align 8
  %36 = getelementptr inbounds %struct.multipath, %struct.multipath* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.multipath*, %struct.multipath** %5, align 8
  %41 = getelementptr inbounds %struct.multipath, %struct.multipath* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %4
  %46 = load %struct.multipath*, %struct.multipath** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @__choose_pgpath(%struct.multipath* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %39, %34, %29
  %50 = load %struct.multipath*, %struct.multipath** %5, align 8
  %51 = getelementptr inbounds %struct.multipath, %struct.multipath* %50, i32 0, i32 9
  %52 = load %struct.pgpath*, %struct.pgpath** %51, align 8
  store %struct.pgpath* %52, %struct.pgpath** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.multipath*, %struct.multipath** %5, align 8
  %57 = getelementptr inbounds %struct.multipath, %struct.multipath* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %62 = icmp ne %struct.pgpath* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.multipath*, %struct.multipath** %5, align 8
  %65 = getelementptr inbounds %struct.multipath, %struct.multipath* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %70 = icmp ne %struct.pgpath* %69, null
  br i1 %70, label %107, label %71

71:                                               ; preds = %68
  %72 = load %struct.multipath*, %struct.multipath** %5, align 8
  %73 = getelementptr inbounds %struct.multipath, %struct.multipath* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %71, %63
  %77 = load %struct.request*, %struct.request** %6, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 2
  %79 = load %struct.multipath*, %struct.multipath** %5, align 8
  %80 = getelementptr inbounds %struct.multipath, %struct.multipath* %79, i32 0, i32 7
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  %82 = load %struct.multipath*, %struct.multipath** %5, align 8
  %83 = getelementptr inbounds %struct.multipath, %struct.multipath* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.multipath*, %struct.multipath** %5, align 8
  %87 = getelementptr inbounds %struct.multipath, %struct.multipath* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %76
  %91 = load %struct.multipath*, %struct.multipath** %5, align 8
  %92 = getelementptr inbounds %struct.multipath, %struct.multipath* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %76
  %96 = load %struct.multipath*, %struct.multipath** %5, align 8
  %97 = getelementptr inbounds %struct.multipath, %struct.multipath* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @kmultipathd, align 4
  %102 = load %struct.multipath*, %struct.multipath** %5, align 8
  %103 = getelementptr inbounds %struct.multipath, %struct.multipath* %102, i32 0, i32 2
  %104 = call i32 @queue_work(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %95
  store %struct.pgpath* null, %struct.pgpath** %12, align 8
  %106 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %106, i32* %9, align 4
  br label %137

107:                                              ; preds = %71, %68
  %108 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %109 = icmp ne %struct.pgpath* %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %112 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.block_device*, %struct.block_device** %115, align 8
  store %struct.block_device* %116, %struct.block_device** %13, align 8
  %117 = load %struct.block_device*, %struct.block_device** %13, align 8
  %118 = call i32 @bdev_get_queue(%struct.block_device* %117)
  %119 = load %struct.request*, %struct.request** %6, align 8
  %120 = getelementptr inbounds %struct.request, %struct.request* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.block_device*, %struct.block_device** %13, align 8
  %122 = getelementptr inbounds %struct.block_device, %struct.block_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.request*, %struct.request** %6, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %136

126:                                              ; preds = %107
  %127 = load %struct.multipath*, %struct.multipath** %5, align 8
  %128 = call i64 @__must_push_back(%struct.multipath* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  store i32 %131, i32* %9, align 4
  br label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %132, %130
  br label %136

136:                                              ; preds = %135, %110
  br label %137

137:                                              ; preds = %136, %105
  %138 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %139 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %14, align 8
  %140 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %139, i32 0, i32 1
  store %struct.pgpath* %138, %struct.pgpath** %140, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %14, align 8
  %143 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %137
  %148 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %149 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %147
  %158 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %159 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)** %164, align 8
  %166 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %167 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %171 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %170, i32 0, i32 0
  %172 = load i64, i64* %10, align 8
  %173 = call i32 %165(%struct.TYPE_9__* %169, %struct.TYPE_10__* %171, i64 %172)
  br label %174

174:                                              ; preds = %157, %147, %137
  %175 = load %struct.multipath*, %struct.multipath** %5, align 8
  %176 = getelementptr inbounds %struct.multipath, %struct.multipath* %175, i32 0, i32 1
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__choose_pgpath(%struct.multipath*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @__must_push_back(%struct.multipath*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
