; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.map_info = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@BIO_RW_AHEAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@DM_IO_ERROR_THRESHOLD = common dso_local global i64 0, align 8
@kstriped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32, %union.map_info*)* @stripe_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_end_io(%struct.dm_target* %0, %struct.bio* %1, i32 %2, %union.map_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.map_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca %struct.stripe_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.map_info* %3, %union.map_info** %9, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.stripe_c*, %struct.stripe_c** %14, align 8
  store %struct.stripe_c* %15, %struct.stripe_c** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @EWOULDBLOCK, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = load i32, i32* @BIO_RW_AHEAD, align 4
  %27 = call i64 @bio_rw_flagged(%struct.bio* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %5, align 4
  br label %108

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %5, align 4
  br label %108

38:                                               ; preds = %31
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %40 = call i32 @memset(i8* %39, i32 0, i32 16)
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @disk_devt(i32 %46)
  %48 = call i32 @MAJOR(i32 %47)
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @disk_devt(i32 %53)
  %55 = call i32 @MINOR(i32 %54)
  %56 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %55)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %103, %38
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  %60 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %57
  %64 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  %65 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %75 = call i32 @strcmp(i32 %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %63
  %78 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  %79 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @atomic_inc(i32* %84)
  %86 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  %87 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i64 @atomic_read(i32* %92)
  %94 = load i64, i64* @DM_IO_ERROR_THRESHOLD, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load i32, i32* @kstriped, align 4
  %98 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  %99 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %98, i32 0, i32 1
  %100 = call i32 @queue_work(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %77
  br label %102

102:                                              ; preds = %101, %63
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %57

106:                                              ; preds = %57
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %36, %29, %18
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
