; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_do_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_do_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, i32, i32 }
%struct.request = type { i32 }
%struct.dm_mpath_io = type { i64 }

@DM_ENDIO_REQUEUE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, %struct.request*, i32, %struct.dm_mpath_io*)* @do_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_end_io(%struct.multipath* %0, %struct.request* %1, i32 %2, %struct.dm_mpath_io* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.multipath*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_mpath_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.multipath* %0, %struct.multipath** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dm_mpath_io* %3, %struct.dm_mpath_io** %9, align 8
  %12 = load i32, i32* @DM_ENDIO_REQUEUE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %85

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EREMOTEIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EILSEQ, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26, %21
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %5, align 4
  br label %85

38:                                               ; preds = %31
  %39 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %9, align 8
  %40 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %9, align 8
  %45 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @fail_path(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.multipath*, %struct.multipath** %6, align 8
  %50 = getelementptr inbounds %struct.multipath, %struct.multipath* %49, i32 0, i32 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.multipath*, %struct.multipath** %6, align 8
  %54 = getelementptr inbounds %struct.multipath, %struct.multipath* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %48
  %58 = load %struct.multipath*, %struct.multipath** %6, align 8
  %59 = getelementptr inbounds %struct.multipath, %struct.multipath* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.multipath*, %struct.multipath** %6, align 8
  %64 = call i32 @__must_push_back(%struct.multipath* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %78

70:                                               ; preds = %57
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @EBADE, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.multipath*, %struct.multipath** %6, align 8
  %81 = getelementptr inbounds %struct.multipath, %struct.multipath* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %36, %20
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @fail_path(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__must_push_back(%struct.multipath*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
