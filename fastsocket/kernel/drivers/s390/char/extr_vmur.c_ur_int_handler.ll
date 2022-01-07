; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_int_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.urdev = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"ur_int_handler: intparm=0x%lx cstat=%02x dstat=%02x res=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ur_int_handler: unsolicited interrupt\0A\00", align 1
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @ur_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ur_int_handler(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.urdev*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.irb*, %struct.irb** %6, align 8
  %10 = getelementptr inbounds %struct.irb, %struct.irb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.irb*, %struct.irb** %6, align 8
  %15 = getelementptr inbounds %struct.irb, %struct.irb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.irb*, %struct.irb** %6, align 8
  %20 = getelementptr inbounds %struct.irb, %struct.irb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %13, i32 %18, i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = call %struct.urdev* @dev_get_drvdata(i32* %31)
  store %struct.urdev* %32, %struct.urdev** %7, align 8
  %33 = load %struct.urdev*, %struct.urdev** %7, align 8
  %34 = icmp ne %struct.urdev* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.irb*, %struct.irb** %6, align 8
  %39 = call i64 @IS_ERR(%struct.irb* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.irb*, %struct.irb** %6, align 8
  %43 = call i32 @PTR_ERR(%struct.irb* %42)
  %44 = load %struct.urdev*, %struct.urdev** %7, align 8
  %45 = getelementptr inbounds %struct.urdev, %struct.urdev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %65

46:                                               ; preds = %29
  %47 = load %struct.irb*, %struct.irb** %6, align 8
  %48 = getelementptr inbounds %struct.irb, %struct.irb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %53 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.urdev*, %struct.urdev** %7, align 8
  %58 = getelementptr inbounds %struct.urdev, %struct.urdev* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %64

59:                                               ; preds = %46
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.urdev*, %struct.urdev** %7, align 8
  %63 = getelementptr inbounds %struct.urdev, %struct.urdev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.urdev*, %struct.urdev** %7, align 8
  %67 = getelementptr inbounds %struct.urdev, %struct.urdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @complete(i32 %68)
  br label %70

70:                                               ; preds = %65, %27
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.urdev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @IS_ERR(%struct.irb*) #1

declare dso_local i32 @PTR_ERR(%struct.irb*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
