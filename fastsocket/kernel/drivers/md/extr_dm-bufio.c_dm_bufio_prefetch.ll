; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_prefetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32 }
%struct.dm_buffer = type { i32 }

@write_list = common dso_local global i32 0, align 4
@NF_PREFETCH = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@read_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_prefetch(%struct.dm_bufio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @write_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = call i32 (...) @dm_bufio_in_request()
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %14 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %13)
  br label %15

15:                                               ; preds = %72, %3
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %15
  %20 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NF_PREFETCH, align 4
  %23 = call %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client* %20, i32 %21, i32 %22, i32* %7, i32* @write_list)
  store %struct.dm_buffer* %23, %struct.dm_buffer** %8, align 8
  %24 = call i32 @list_empty(i32* @write_list)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %32 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %31)
  %33 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %34 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bdev_get_queue(i32 %35)
  %37 = call i32 @blk_unplug(i32 %36)
  %38 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %39 = call i32 @__flush_write_list(i32* @write_list, %struct.dm_bufio_client* %38)
  %40 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %41 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %40)
  br label %42

42:                                               ; preds = %30, %19
  %43 = load %struct.dm_buffer*, %struct.dm_buffer** %8, align 8
  %44 = icmp ne %struct.dm_buffer* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %50 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.dm_buffer*, %struct.dm_buffer** %8, align 8
  %55 = load i32, i32* @READ, align 4
  %56 = load %struct.dm_buffer*, %struct.dm_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @read_endio, align 4
  %60 = call i32 @submit_io(%struct.dm_buffer* %54, i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.dm_buffer*, %struct.dm_buffer** %8, align 8
  %63 = call i32 @dm_bufio_release(%struct.dm_buffer* %62)
  %64 = call i32 (...) @dm_bufio_cond_resched()
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %78

68:                                               ; preds = %61
  %69 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %70 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %69)
  br label %71

71:                                               ; preds = %68, %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %15

75:                                               ; preds = %15
  %76 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %77 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %80 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bdev_get_queue(i32 %81)
  %83 = call i32 @blk_unplug(i32 %82)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_in_request(...) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client*, i32, i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

declare dso_local i32 @blk_unplug(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @__flush_write_list(i32*, %struct.dm_bufio_client*) #1

declare dso_local i32 @submit_io(%struct.dm_buffer*, i32, i32, i32) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

declare dso_local i32 @dm_bufio_cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
