; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_hd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_hd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hd_i_struct* }
%struct.hd_i_struct = type { i32, i32, i64 }

@do_hd = common dso_local global i32* null, align 8
@device_timer = common dso_local global i32 0, align 4
@hd_req = common dso_local global %struct.request* null, align 8
@hd_queue = common dso_local global i32 0, align 4
@reset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s: bad access: block=%d, count=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATA_CMD_PIO_READ = common dso_local global i32 0, align 4
@read_intr = common dso_local global i32 0, align 4
@ATA_CMD_PIO_WRITE = common dso_local global i32 0, align 4
@write_intr = common dso_local global i32 0, align 4
@HD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown hd-command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd_request() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hd_i_struct*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = load i32*, i32** @do_hd, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %147

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %133, %129, %117, %77, %55, %12
  %14 = call i32 @del_timer(i32* @device_timer)
  %15 = load %struct.request*, %struct.request** @hd_req, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @hd_queue, align 4
  %19 = call %struct.request* @blk_fetch_request(i32 %18)
  store %struct.request* %19, %struct.request** @hd_req, align 8
  %20 = load %struct.request*, %struct.request** @hd_req, align 8
  %21 = icmp ne %struct.request* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32* null, i32** @do_hd, align 8
  br label %147

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.request*, %struct.request** @hd_req, align 8
  store %struct.request* %25, %struct.request** %8, align 8
  %26 = load i64, i64* @reset, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @reset_hd()
  br label %147

30:                                               ; preds = %24
  %31 = load %struct.request*, %struct.request** %8, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.hd_i_struct*, %struct.hd_i_struct** %34, align 8
  store %struct.hd_i_struct* %35, %struct.hd_i_struct** %7, align 8
  %36 = load %struct.request*, %struct.request** %8, align 8
  %37 = call i32 @blk_rq_pos(%struct.request* %36)
  store i32 %37, i32* %1, align 4
  %38 = load %struct.request*, %struct.request** %8, align 8
  %39 = call i32 @blk_rq_sectors(%struct.request* %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load %struct.request*, %struct.request** %8, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @get_capacity(%struct.TYPE_2__* %43)
  %45 = icmp uge i32 %40, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %2, align 4
  %49 = add i32 %47, %48
  %50 = load %struct.request*, %struct.request** %8, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @get_capacity(%struct.TYPE_2__* %52)
  %54 = icmp ugt i32 %49, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %46, %30
  %56 = load %struct.request*, %struct.request** %8, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @hd_end_request_cur(i32 %65)
  br label %13

67:                                               ; preds = %46
  %68 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %69 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %74 = load %struct.request*, %struct.request** %8, align 8
  %75 = call i64 @do_special_op(%struct.hd_i_struct* %73, %struct.request* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %13

78:                                               ; preds = %72
  br label %147

79:                                               ; preds = %67
  %80 = load i32, i32* %1, align 4
  %81 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %82 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = urem i32 %80, %83
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %1, align 4
  %87 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %88 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = udiv i32 %86, %89
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %93 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = urem i32 %91, %94
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %98 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = udiv i32 %96, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.request*, %struct.request** %8, align 8
  %102 = call i64 @blk_fs_request(%struct.request* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %79
  %105 = load %struct.request*, %struct.request** %8, align 8
  %106 = call i32 @rq_data_dir(%struct.request* %105)
  switch i32 %106, label %141 [
    i32 129, label %107
    i32 128, label %119
  ]

107:                                              ; preds = %104
  %108 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @ATA_CMD_PIO_READ, align 4
  %114 = call i32 @hd_out(%struct.hd_i_struct* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32* @read_intr)
  %115 = load i64, i64* @reset, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %13

118:                                              ; preds = %107
  br label %146

119:                                              ; preds = %104
  %120 = load %struct.hd_i_struct*, %struct.hd_i_struct** %7, align 8
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @ATA_CMD_PIO_WRITE, align 4
  %126 = call i32 @hd_out(%struct.hd_i_struct* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32* @write_intr)
  %127 = load i64, i64* @reset, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %13

130:                                              ; preds = %119
  %131 = call i32 (...) @wait_DRQ()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (...) @bad_rw_intr()
  br label %13

135:                                              ; preds = %130
  %136 = load i32, i32* @HD_DATA, align 4
  %137 = load %struct.request*, %struct.request** %8, align 8
  %138 = getelementptr inbounds %struct.request, %struct.request* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @outsw(i32 %136, i32 %139, i32 256)
  br label %146

141:                                              ; preds = %104
  %142 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  %145 = call i32 @hd_end_request_cur(i32 %144)
  br label %146

146:                                              ; preds = %141, %135, %118
  br label %147

147:                                              ; preds = %11, %22, %28, %78, %146, %79
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.request* @blk_fetch_request(i32) #1

declare dso_local i32 @reset_hd(...) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @get_capacity(%struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @hd_end_request_cur(i32) #1

declare dso_local i64 @do_special_op(%struct.hd_i_struct*, %struct.request*) #1

declare dso_local i64 @blk_fs_request(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @hd_out(%struct.hd_i_struct*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wait_DRQ(...) #1

declare dso_local i32 @bad_rw_intr(...) #1

declare dso_local i32 @outsw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
