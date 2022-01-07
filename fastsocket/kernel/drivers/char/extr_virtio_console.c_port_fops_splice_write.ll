; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_port_fops_splice_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_port_fops_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64 }
%struct.file = type { i32, %struct.port* }
%struct.port = type { i32 }
%struct.sg_list = type { i32, i64, i64, i64 }
%struct.port_buffer = type { i32 }
%struct.splice_desc = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sg_list* }

@O_NONBLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pipe_to_sg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.file*, i32*, i64, i32)* @port_fops_splice_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fops_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.port*, align 8
  %13 = alloca %struct.sg_list, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.port_buffer*, align 8
  %16 = alloca %struct.splice_desc, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.port*, %struct.port** %18, align 8
  store %struct.port* %19, %struct.port** %12, align 8
  %20 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.sg_list* %13, %struct.sg_list** %25, align 8
  %26 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 3
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %26, align 8
  %29 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %30 = call i32 @pipe_lock(%struct.pipe_inode_info* %29)
  %31 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %109

36:                                               ; preds = %5
  %37 = load %struct.port*, %struct.port** %12, align 8
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @wait_port_writable(%struct.port* %37, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %109

47:                                               ; preds = %36
  %48 = load %struct.port*, %struct.port** %12, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %52 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.port_buffer* @alloc_buf(i32 %50, i32 0, i64 %53)
  store %struct.port_buffer* %54, %struct.port_buffer** %15, align 8
  %55 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %56 = icmp ne %struct.port_buffer* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %109

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %64 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 3
  store i64 %65, i64* %66, align 8
  %67 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %68 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @sg_init_table(i32 %72, i64 %74)
  %76 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %77 = load i32, i32* @pipe_to_sg, align 4
  %78 = call i32 @__splice_from_pipe(%struct.pipe_inode_info* %76, %struct.splice_desc* %16, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %80 = call i32 @pipe_unlock(%struct.pipe_inode_info* %79)
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %60
  %87 = load %struct.port*, %struct.port** %12, align 8
  %88 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %89 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %96 = call i32 @__send_to_port(%struct.port* %87, i32 %90, i64 %92, i64 %94, %struct.port_buffer* %95, i32 1)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %86, %60
  %98 = load i32, i32* %14, align 4
  %99 = icmp sle i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @kfree(i32 %105)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %6, align 4
  br label %113

109:                                              ; preds = %57, %46, %35
  %110 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %111 = call i32 @pipe_unlock(%struct.pipe_inode_info* %110)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %107
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wait_port_writable(%struct.port*, i32) #1

declare dso_local %struct.port_buffer* @alloc_buf(i32, i32, i64) #1

declare dso_local i32 @sg_init_table(i32, i64) #1

declare dso_local i32 @__splice_from_pipe(%struct.pipe_inode_info*, %struct.splice_desc*, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__send_to_port(%struct.port*, i32, i64, i64, %struct.port_buffer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
