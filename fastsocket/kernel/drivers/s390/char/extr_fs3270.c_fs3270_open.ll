; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.idal_buffer*, %struct.TYPE_10__ }
%struct.idal_buffer = type { %struct.TYPE_12__, %struct.idal_buffer*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.fs3270 = type { %struct.TYPE_12__, %struct.fs3270*, i32, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@IBM_FS3270_MAJOR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IBM_TTY3270_MAJOR = common dso_local global i64 0, align 8
@RAW3270_FIRSTMINOR = common dso_local global i32 0, align 4
@fs3270_fn = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fs3270_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fs3270*, align 8
  %7 = alloca %struct.idal_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tty_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @imajor(i32 %16)
  %18 = load i64, i64* @IBM_FS3270_MAJOR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %154

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iminor(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %23
  %34 = call %struct.tty_struct* (...) @get_current_tty()
  store %struct.tty_struct* %34, %struct.tty_struct** %10, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %36 = icmp ne %struct.tty_struct* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IBM_TTY3270_MAJOR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37, %33
  %46 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %47 = call i32 @tty_kref_put(%struct.tty_struct* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %154

50:                                               ; preds = %37
  %51 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RAW3270_FIRSTMINOR, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %57 = call i32 @tty_kref_put(%struct.tty_struct* %56)
  br label %58

58:                                               ; preds = %50, %23
  %59 = call i32 (...) @lock_kernel()
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @raw3270_find_view(i32* @fs3270_fn, i32 %60)
  %62 = inttoptr i64 %61 to %struct.fs3270*
  store %struct.fs3270* %62, %struct.fs3270** %6, align 8
  %63 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %64 = bitcast %struct.fs3270* %63 to %struct.idal_buffer*
  %65 = call i64 @IS_ERR(%struct.idal_buffer* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %69 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %68, i32 0, i32 0
  %70 = call i32 @raw3270_put_view(%struct.TYPE_12__* %69)
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %151

73:                                               ; preds = %58
  %74 = call %struct.idal_buffer* (...) @fs3270_alloc_view()
  %75 = bitcast %struct.idal_buffer* %74 to %struct.fs3270*
  store %struct.fs3270* %75, %struct.fs3270** %6, align 8
  %76 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %77 = bitcast %struct.fs3270* %76 to %struct.idal_buffer*
  %78 = call i64 @IS_ERR(%struct.idal_buffer* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %82 = bitcast %struct.fs3270* %81 to %struct.idal_buffer*
  %83 = call i32 @PTR_ERR(%struct.idal_buffer* %82)
  store i32 %83, i32* %9, align 4
  br label %151

84:                                               ; preds = %73
  %85 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %86 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %85, i32 0, i32 3
  %87 = call i32 @init_waitqueue_head(i32* %86)
  %88 = load i32, i32* @current, align 4
  %89 = call i32 @task_pid(i32 %88)
  %90 = call i32 @get_pid(i32 %89)
  %91 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %92 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %94 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %93, i32 0, i32 0
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @raw3270_add_view(%struct.TYPE_12__* %94, i32* @fs3270_fn, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %101 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %100, i32 0, i32 0
  %102 = call i32 @fs3270_free_view(%struct.TYPE_12__* %101)
  br label %151

103:                                              ; preds = %84
  %104 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %105 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 2, %107
  %109 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %110 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %108, %112
  %114 = add nsw i32 %113, 5
  %115 = call %struct.idal_buffer* @idal_buffer_alloc(i32 %114, i32 0)
  store %struct.idal_buffer* %115, %struct.idal_buffer** %7, align 8
  %116 = load %struct.idal_buffer*, %struct.idal_buffer** %7, align 8
  %117 = call i64 @IS_ERR(%struct.idal_buffer* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %103
  %120 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %121 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %120, i32 0, i32 0
  %122 = call i32 @raw3270_put_view(%struct.TYPE_12__* %121)
  %123 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %124 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %123, i32 0, i32 0
  %125 = call i32 @raw3270_del_view(%struct.TYPE_12__* %124)
  %126 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %127 = bitcast %struct.fs3270* %126 to %struct.idal_buffer*
  %128 = call i32 @PTR_ERR(%struct.idal_buffer* %127)
  store i32 %128, i32* %9, align 4
  br label %151

129:                                              ; preds = %103
  %130 = load %struct.idal_buffer*, %struct.idal_buffer** %7, align 8
  %131 = bitcast %struct.idal_buffer* %130 to %struct.fs3270*
  %132 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %133 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %132, i32 0, i32 1
  store %struct.fs3270* %131, %struct.fs3270** %133, align 8
  %134 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %135 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %134, i32 0, i32 0
  %136 = call i32 @raw3270_activate_view(%struct.TYPE_12__* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %129
  %140 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %141 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %140, i32 0, i32 0
  %142 = call i32 @raw3270_put_view(%struct.TYPE_12__* %141)
  %143 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %144 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %143, i32 0, i32 0
  %145 = call i32 @raw3270_del_view(%struct.TYPE_12__* %144)
  br label %151

146:                                              ; preds = %129
  %147 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %148 = bitcast %struct.fs3270* %147 to %struct.idal_buffer*
  %149 = load %struct.file*, %struct.file** %5, align 8
  %150 = getelementptr inbounds %struct.file, %struct.file* %149, i32 0, i32 0
  store %struct.idal_buffer* %148, %struct.idal_buffer** %150, align 8
  br label %151

151:                                              ; preds = %146, %139, %119, %99, %80, %67
  %152 = call i32 (...) @unlock_kernel()
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %151, %45, %20
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @imajor(i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.tty_struct* @get_current_tty(...) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @raw3270_find_view(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @raw3270_put_view(%struct.TYPE_12__*) #1

declare dso_local %struct.idal_buffer* @fs3270_alloc_view(...) #1

declare dso_local i32 @PTR_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @raw3270_add_view(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @fs3270_free_view(%struct.TYPE_12__*) #1

declare dso_local %struct.idal_buffer* @idal_buffer_alloc(i32, i32) #1

declare dso_local i32 @raw3270_del_view(%struct.TYPE_12__*) #1

declare dso_local i32 @raw3270_activate_view(%struct.TYPE_12__*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
