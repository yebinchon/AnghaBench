; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_sigio.c_ignore_sigio_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_sigio.c_ignore_sigio_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.pollfd* }
%struct.pollfd = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.pollfd* }

@write_sigio_pid = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current_poll = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@next_poll = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ignore_sigio_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @write_sigio_pid, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %80

13:                                               ; preds = %1
  %14 = call i32 (...) @sigio_lock()
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 0), align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 1), align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i64 %22
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %15

33:                                               ; preds = %28, %15
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 0), align 8
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %77

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 0), align 8
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @need_poll(%struct.TYPE_4__* @next_poll, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %77

45:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 0), align 8
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 1), align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %51, i64 %53
  store %struct.pollfd* %54, %struct.pollfd** %4, align 8
  %55 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @next_poll, i32 0, i32 1), align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i64 %64
  %66 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %67 = bitcast %struct.pollfd* %65 to i8*
  %68 = bitcast %struct.pollfd* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %69

69:                                               ; preds = %60, %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_poll, i32 0, i32 0), align 8
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @next_poll, i32 0, i32 0), align 8
  %76 = call i32 (...) @update_thread()
  br label %77

77:                                               ; preds = %73, %44, %37
  %78 = call i32 (...) @sigio_unlock()
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @sigio_lock(...) #1

declare dso_local i32 @need_poll(%struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_thread(...) #1

declare dso_local i32 @sigio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
