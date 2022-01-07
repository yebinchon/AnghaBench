; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_pipe_to_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_pipe_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.TYPE_4__*, %struct.page*, i32 }
%struct.TYPE_4__ = type { i64 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)* }
%struct.page = type { i32 }
%struct.splice_desc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sg_list* }
%struct.sg_list = type { i64, i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @pipe_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_to_sg(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca %struct.sg_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %14 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %15 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sg_list*, %struct.sg_list** %16, align 8
  store %struct.sg_list* %17, %struct.sg_list** %8, align 8
  %18 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %19 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %22 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %150

26:                                               ; preds = %3
  %27 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i64 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %30, align 8
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %33 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %34 = call i64 %31(%struct.pipe_inode_info* %32, %struct.pipe_buffer* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %26
  %37 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %37, i32 0, i32 2
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = call i32 @get_page(%struct.page* %39)
  %41 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %41, i32 0, i32 2
  %43 = load %struct.page*, %struct.page** %42, align 8
  %44 = call i32 @unlock_page(%struct.page* %43)
  %45 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %49 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @min(i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %53 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %56 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %59, i32 0, i32 2
  %61 = load %struct.page*, %struct.page** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sg_set_page(i32* %58, %struct.page* %61, i32 %62, i32 %65)
  br label %139

67:                                               ; preds = %26
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.page* @alloc_page(i32 %68)
  store %struct.page* %69, %struct.page** %11, align 8
  %70 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %73, align 8
  %75 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %76 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %77 = call i8* %74(%struct.pipe_inode_info* %75, %struct.pipe_buffer* %76, i32 1)
  store i8* %77, i8** %12, align 8
  %78 = load %struct.page*, %struct.page** %11, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %67
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = call i8* @kmap(%struct.page* %84)
  store i8* %85, i8** %13, align 8
  %86 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %87 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PAGE_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %93 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %95, %96
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %83
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub i32 %101, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %83
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i8* %108, i8* %114, i32 %115)
  %117 = load %struct.page*, %struct.page** %11, align 8
  %118 = call i32 @kunmap(%struct.page* %117)
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %120 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %122, align 8
  %124 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %125 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 %123(%struct.pipe_inode_info* %124, %struct.pipe_buffer* %125, i8* %126)
  %128 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %129 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %132 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load %struct.page*, %struct.page** %11, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @sg_set_page(i32* %134, %struct.page* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %104, %36
  %140 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %141 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.sg_list*, %struct.sg_list** %8, align 8
  %146 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %139, %80, %25
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
