; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_do_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_do_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.format_descr = type { i64, i64 }

@_floppy = common dso_local global %struct.TYPE_4__* null, align 8
@DP = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@format_req = common dso_local global %struct.format_descr zeroinitializer, align 8
@format_errors = common dso_local global i64 0, align 8
@format_cont = common dso_local global i32 0, align 4
@cont = common dso_local global i32* null, align 8
@errors = common dso_local global i64* null, align 8
@redo_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.format_descr*)* @do_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_format(i32 %0, %struct.format_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.format_descr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.format_descr* %1, %struct.format_descr** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @LOCK_FDC(i32 %7, i32 1)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @set_floppy(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DP, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %52, label %21

21:                                               ; preds = %13
  %22 = load %struct.format_descr*, %struct.format_descr** %5, align 8
  %23 = getelementptr inbounds %struct.format_descr, %struct.format_descr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %21
  %30 = load %struct.format_descr*, %struct.format_descr** %5, align 8
  %31 = getelementptr inbounds %struct.format_descr, %struct.format_descr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %43 = call i32 @FD_SIZECODE(%struct.TYPE_4__* %42)
  %44 = shl i32 1, %43
  %45 = srem i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_floppy, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47, %37, %29, %21, %13, %2
  %53 = call i32 (...) @process_fd_request()
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %47
  %57 = load %struct.format_descr*, %struct.format_descr** %5, align 8
  %58 = bitcast %struct.format_descr* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.format_descr* @format_req to i8*), i8* align 8 %58, i64 16, i1 false)
  store i64 0, i64* @format_errors, align 8
  store i32* @format_cont, i32** @cont, align 8
  store i64* @format_errors, i64** @errors, align 8
  %59 = load i32, i32* @redo_format, align 4
  %60 = call i32 @IWAIT(i32 %59)
  %61 = call i32 (...) @process_fd_request()
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @LOCK_FDC(i32, i32) #1

declare dso_local i32 @set_floppy(i32) #1

declare dso_local i32 @FD_SIZECODE(%struct.TYPE_4__*) #1

declare dso_local i32 @process_fd_request(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IWAIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
