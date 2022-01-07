; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_requests_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_requests_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, i32, i32, %struct.request_list }
%struct.request_list = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@BLKDEV_MIN_RQ = common dso_local global i64 0, align 8
@BLK_RW_SYNC = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i8*, i64)* @queue_requests_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_requests_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.request_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 3
  store %struct.request_list* %12, %struct.request_list** %8, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %182

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @queue_var_store(i64* %9, i8* %21, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @BLKDEV_MIN_RQ, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @BLKDEV_MIN_RQ, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @spin_lock_irq(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %38 = call i32 @blk_queue_congestion_threshold(%struct.request_queue* %37)
  %39 = load %struct.request_list*, %struct.request_list** %8, align 8
  %40 = getelementptr inbounds %struct.request_list, %struct.request_list* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @BLK_RW_SYNC, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %46 = call i32 @queue_congestion_on_threshold(%struct.request_queue* %45)
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = load i64, i64* @BLK_RW_SYNC, align 8
  %51 = call i32 @blk_set_queue_congested(%struct.request_queue* %49, i64 %50)
  br label %67

52:                                               ; preds = %29
  %53 = load %struct.request_list*, %struct.request_list** %8, align 8
  %54 = getelementptr inbounds %struct.request_list, %struct.request_list* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @BLK_RW_SYNC, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %60 = call i32 @queue_congestion_off_threshold(%struct.request_queue* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = load i64, i64* @BLK_RW_SYNC, align 8
  %65 = call i32 @blk_clear_queue_congested(%struct.request_queue* %63, i64 %64)
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.request_list*, %struct.request_list** %8, align 8
  %69 = getelementptr inbounds %struct.request_list, %struct.request_list* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @BLK_RW_ASYNC, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %75 = call i32 @queue_congestion_on_threshold(%struct.request_queue* %74)
  %76 = icmp sge i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %79 = load i64, i64* @BLK_RW_ASYNC, align 8
  %80 = call i32 @blk_set_queue_congested(%struct.request_queue* %78, i64 %79)
  br label %96

81:                                               ; preds = %67
  %82 = load %struct.request_list*, %struct.request_list** %8, align 8
  %83 = getelementptr inbounds %struct.request_list, %struct.request_list* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @BLK_RW_ASYNC, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %89 = call i32 @queue_congestion_off_threshold(%struct.request_queue* %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %93 = load i64, i64* @BLK_RW_ASYNC, align 8
  %94 = call i32 @blk_clear_queue_congested(%struct.request_queue* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %81
  br label %96

96:                                               ; preds = %95, %77
  %97 = load %struct.request_list*, %struct.request_list** %8, align 8
  %98 = getelementptr inbounds %struct.request_list, %struct.request_list* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @BLK_RW_SYNC, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %105 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp uge i64 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %110 = load i64, i64* @BLK_RW_SYNC, align 8
  %111 = call i32 @blk_set_queue_full(%struct.request_queue* %109, i64 %110)
  br label %136

112:                                              ; preds = %96
  %113 = load %struct.request_list*, %struct.request_list** %8, align 8
  %114 = getelementptr inbounds %struct.request_list, %struct.request_list* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @BLK_RW_SYNC, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %122 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ule i64 %120, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %112
  %126 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %127 = load i64, i64* @BLK_RW_SYNC, align 8
  %128 = call i32 @blk_clear_queue_full(%struct.request_queue* %126, i64 %127)
  %129 = load %struct.request_list*, %struct.request_list** %8, align 8
  %130 = getelementptr inbounds %struct.request_list, %struct.request_list* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @BLK_RW_SYNC, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i32 @wake_up(i32* %133)
  br label %135

135:                                              ; preds = %125, %112
  br label %136

136:                                              ; preds = %135, %108
  %137 = load %struct.request_list*, %struct.request_list** %8, align 8
  %138 = getelementptr inbounds %struct.request_list, %struct.request_list* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @BLK_RW_ASYNC, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %145 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp uge i64 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %136
  %149 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %150 = load i64, i64* @BLK_RW_ASYNC, align 8
  %151 = call i32 @blk_set_queue_full(%struct.request_queue* %149, i64 %150)
  br label %176

152:                                              ; preds = %136
  %153 = load %struct.request_list*, %struct.request_list** %8, align 8
  %154 = getelementptr inbounds %struct.request_list, %struct.request_list* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @BLK_RW_ASYNC, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %162 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ule i64 %160, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %152
  %166 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %167 = load i64, i64* @BLK_RW_ASYNC, align 8
  %168 = call i32 @blk_clear_queue_full(%struct.request_queue* %166, i64 %167)
  %169 = load %struct.request_list*, %struct.request_list** %8, align 8
  %170 = getelementptr inbounds %struct.request_list, %struct.request_list* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @BLK_RW_ASYNC, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = call i32 @wake_up(i32* %173)
  br label %175

175:                                              ; preds = %165, %152
  br label %176

176:                                              ; preds = %175, %148
  %177 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %178 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @spin_unlock_irq(i32 %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %176, %17
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @queue_var_store(i64*, i8*, i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @blk_queue_congestion_threshold(%struct.request_queue*) #1

declare dso_local i32 @queue_congestion_on_threshold(%struct.request_queue*) #1

declare dso_local i32 @blk_set_queue_congested(%struct.request_queue*, i64) #1

declare dso_local i32 @queue_congestion_off_threshold(%struct.request_queue*) #1

declare dso_local i32 @blk_clear_queue_congested(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_set_queue_full(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_clear_queue_full(%struct.request_queue*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
