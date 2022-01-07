; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.file = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ISDN_MINOR_CTRL = common dso_local global i32 0, align 4
@ISDN_MINOR_STATUS = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_8__* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@ISDN_MINOR_CTRLMAX = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@ISDN_MINOR_PPPMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @isdn_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iminor(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ISDN_MINOR_CTRL, align 4
  %17 = sub i32 %15, %16
  %18 = call i32 @isdn_minor2drv(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 (...) @lock_kernel()
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ISDN_MINOR_STATUS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %24, i32* %26, i32* %27)
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @POLLIN, align 4
  %35 = load i32, i32* @POLLRDNORM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %23
  br label %87

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ISDN_MINOR_CTRL, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ISDN_MINOR_CTRLMAX, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @POLLHUP, align 4
  store i32 %52, i32* %5, align 4
  br label %87

53:                                               ; preds = %48
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @poll_wait(%struct.file* %54, i32* %62, i32* %63)
  %65 = load i32, i32* @POLLOUT, align 4
  %66 = load i32, i32* @POLLWRNORM, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %53
  %79 = load i32, i32* @POLLIN, align 4
  %80 = load i32, i32* @POLLRDNORM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %53
  br label %87

85:                                               ; preds = %44, %40
  %86 = load i32, i32* @POLLERR, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %84, %51, %39
  %88 = call i32 (...) @unlock_kernel()
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @isdn_minor2drv(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
