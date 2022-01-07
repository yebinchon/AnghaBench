; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_blk_throtl_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_blk_throtl_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.throtl_data* }
%struct.throtl_data = type { i32 }
%struct.bio = type { i32, i32 }
%struct.throtl_grp = type { i64*, i32*, i32*, i32*, i32*, i32 }
%struct.blkio_cgroup = type { i32 }

@BIO_RW_THROTTLED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"[%c] bio. bdisp=%u sz=%u bps=%llu iodisp=%u iops=%u queued=%d/%d\00", align 1
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_throtl_bio(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.throtl_data*, align 8
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkio_cgroup*, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 1
  %13 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  store %struct.throtl_data* %13, %struct.throtl_data** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call i32 @bio_data_dir(%struct.bio* %14)
  store i32 %15, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = load i32, i32* @BIO_RW_THROTTLED, align 4
  %18 = call i64 @bio_rw_flagged(%struct.bio* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @BIO_RW_THROTTLED, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %174

28:                                               ; preds = %2
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load i32, i32* @current, align 4
  %31 = call %struct.blkio_cgroup* @task_blkio_cgroup(i32 %30)
  store %struct.blkio_cgroup* %31, %struct.blkio_cgroup** %9, align 8
  %32 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %33 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %9, align 8
  %34 = call %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data* %32, %struct.blkio_cgroup* %33)
  store %struct.throtl_grp* %34, %struct.throtl_grp** %6, align 8
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %36 = icmp ne %struct.throtl_grp* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %28
  %38 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %39 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %40 = call i32 @throtl_tg_fill_dev_details(%struct.throtl_data* %38, %struct.throtl_grp* %39)
  %41 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @tg_no_rule_group(%struct.throtl_grp* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %47 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %46, i32 0, i32 5
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @REQ_SYNC, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @blkiocg_update_dispatch_stats(i32* %47, i32 %50, i32 %51, i32 %56)
  %58 = call i32 (...) @rcu_read_unlock()
  br label %174

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %28
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %63 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @spin_lock_irq(i32 %64)
  %66 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %67 = call %struct.throtl_grp* @throtl_get_tg(%struct.throtl_data* %66)
  store %struct.throtl_grp* %67, %struct.throtl_grp** %6, align 8
  %68 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %69 = icmp ne %struct.throtl_grp* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %169

75:                                               ; preds = %60
  %76 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %77 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %100

85:                                               ; preds = %75
  %86 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %87 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = call i64 @tg_may_dispatch(%struct.throtl_data* %86, %struct.throtl_grp* %87, %struct.bio* %88, i32* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %93 = load %struct.bio*, %struct.bio** %4, align 8
  %94 = call i32 @throtl_charge_bio(%struct.throtl_grp* %92, %struct.bio* %93)
  %95 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %96 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @throtl_trim_slice(%struct.throtl_data* %95, %struct.throtl_grp* %96, i32 %97)
  br label %169

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %84
  %101 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %102 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @READ, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 82, i32 87
  %108 = trunc i32 %107 to i8
  %109 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %110 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bio*, %struct.bio** %4, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %120 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %127 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %134 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %141 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* @READ, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %148 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @WRITE, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @throtl_log_tg(%struct.throtl_data* %101, %struct.throtl_grp* %102, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8 signext %108, i32 %115, i32 %118, i32 %125, i32 %132, i32 %139, i64 %146, i64 %152)
  %154 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %155 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %154, i32 0, i32 1
  %156 = load %struct.throtl_data*, %struct.throtl_data** %155, align 8
  %157 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %158 = load %struct.bio*, %struct.bio** %4, align 8
  %159 = call i32 @throtl_add_bio_tg(%struct.throtl_data* %156, %struct.throtl_grp* %157, %struct.bio* %158)
  store i32 1, i32* %10, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %100
  %163 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %164 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %165 = call i32 @tg_update_disptime(%struct.throtl_data* %163, %struct.throtl_grp* %164)
  %166 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %167 = call i32 @throtl_schedule_next_dispatch(%struct.throtl_data* %166)
  br label %168

168:                                              ; preds = %162, %100
  br label %169

169:                                              ; preds = %168, %91, %74
  %170 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %171 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @spin_unlock_irq(i32 %172)
  br label %174

174:                                              ; preds = %169, %45, %20
  %175 = load i32, i32* %10, align 4
  ret i32 %175
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.blkio_cgroup* @task_blkio_cgroup(i32) #1

declare dso_local %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data*, %struct.blkio_cgroup*) #1

declare dso_local i32 @throtl_tg_fill_dev_details(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i64 @tg_no_rule_group(%struct.throtl_grp*, i32) #1

declare dso_local i32 @blkiocg_update_dispatch_stats(i32*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.throtl_grp* @throtl_get_tg(%struct.throtl_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tg_may_dispatch(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i32*) #1

declare dso_local i32 @throtl_charge_bio(%struct.throtl_grp*, %struct.bio*) #1

declare dso_local i32 @throtl_trim_slice(%struct.throtl_data*, %struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_log_tg(%struct.throtl_data*, %struct.throtl_grp*, i8*, i8 signext, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @throtl_add_bio_tg(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*) #1

declare dso_local i32 @tg_update_disptime(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @throtl_schedule_next_dispatch(%struct.throtl_data*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
