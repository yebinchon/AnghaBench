; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_redo_fd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_redo_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amiga_floppy_struct = type { i32, i8*, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.request = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amiga_floppy_struct* }

@floppy_queue = common dso_local global i32 0, align 4
@unit = common dso_local global %struct.amiga_floppy_struct* null, align 8
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@flush_track_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @redo_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redo_fd_request() #0 {
  %1 = alloca %struct.request*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amiga_floppy_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  br label %11

11:                                               ; preds = %145, %0
  %12 = load i32, i32* @floppy_queue, align 4
  %13 = call %struct.request* @blk_fetch_request(i32 %12)
  store %struct.request* %13, %struct.request** %1, align 8
  %14 = load %struct.request*, %struct.request** %1, align 8
  %15 = icmp ne %struct.request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  ret void

17:                                               ; preds = %11
  %18 = load %struct.request*, %struct.request** %1, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %21, align 8
  store %struct.amiga_floppy_struct* %22, %struct.amiga_floppy_struct** %7, align 8
  %23 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %24 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** @unit, align 8
  %25 = ptrtoint %struct.amiga_floppy_struct* %23 to i64
  %26 = ptrtoint %struct.amiga_floppy_struct* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 40
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %144, %17
  store i32 0, i32* %2, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %136, %30
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.request*, %struct.request** %1, align 8
  %34 = call i32 @blk_rq_cur_sectors(%struct.request* %33)
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %139

36:                                               ; preds = %31
  %37 = load %struct.request*, %struct.request** %1, align 8
  %38 = call i32 @blk_rq_pos(%struct.request* %37)
  %39 = load i32, i32* %2, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %43 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %139

49:                                               ; preds = %36
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %52 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %57 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %55, %60
  %62 = udiv i32 %50, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %65 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %64, i32 0, i32 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %70 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %68, %73
  %75 = urem i32 %63, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.request*, %struct.request** %1, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %2, align 4
  %80 = mul i32 512, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %8, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @get_track(i32 %83, i32 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %49
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %139

90:                                               ; preds = %49
  %91 = load %struct.request*, %struct.request** %1, align 8
  %92 = call i64 @rq_data_dir(%struct.request* %91)
  %93 = load i64, i64* @READ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %98 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = mul i32 %100, 512
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = call i32 @memcpy(i8* %96, i8* %103, i32 512)
  br label %135

105:                                              ; preds = %90
  %106 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %107 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = mul i32 %109, 512
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @memcpy(i8* %112, i8* %113, i32 512)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @fd_motor_on(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %139

121:                                              ; preds = %105
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @local_irq_save(i64 %122)
  %124 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %7, align 8
  %125 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = load i64, i64* @flush_track_timer, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = load i64, i64* @jiffies, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i32 @mod_timer(i64 %129, i64 %131)
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @local_irq_restore(i64 %133)
  br label %135

135:                                              ; preds = %121, %95
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %2, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %2, align 4
  br label %31

139:                                              ; preds = %118, %87, %46, %31
  %140 = load %struct.request*, %struct.request** %1, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @__blk_end_request_cur(%struct.request* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %30

145:                                              ; preds = %139
  br label %11
}

declare dso_local %struct.request* @blk_fetch_request(i32) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @get_track(i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fd_motor_on(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mod_timer(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @__blk_end_request_cur(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
