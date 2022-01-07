; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_disk_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_disk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.TYPE_3__*, %struct.log_c* }
%struct.TYPE_3__ = type { i32 }
%struct.log_c = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"3 %s %s %c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %u %s %u \00", align 1
@DEFAULTSYNC = common dso_local global i32 0, align 4
@DMEMIT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i32, i8*, i32)* @disk_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_status(%struct.dm_dirty_log* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_dirty_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %12 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %11, i32 0, i32 1
  %13 = load %struct.log_c*, %struct.log_c** %12, align 8
  store %struct.log_c* %13, %struct.log_c** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %66 [
    i32 129, label %15
    i32 128, label %42
  ]

15:                                               ; preds = %4
  %16 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %17 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.log_c*, %struct.log_c** %10, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.log_c*, %struct.log_c** %10, align 8
  %27 = getelementptr inbounds %struct.log_c, %struct.log_c* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %38

31:                                               ; preds = %15
  %32 = load %struct.log_c*, %struct.log_c** %10, align 8
  %33 = getelementptr inbounds %struct.log_c, %struct.log_c* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 68, i32 65
  br label %38

38:                                               ; preds = %31, %30
  %39 = phi i32 [ 70, %30 ], [ %37, %31 ]
  %40 = sitofp i32 %39 to float
  %41 = call i32 (i8*, i32, i32, float, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, float %40)
  br label %66

42:                                               ; preds = %4
  %43 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %44 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.log_c*, %struct.log_c** %10, align 8
  %49 = getelementptr inbounds %struct.log_c, %struct.log_c* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DEFAULTSYNC, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 3
  %55 = load %struct.log_c*, %struct.log_c** %10, align 8
  %56 = getelementptr inbounds %struct.log_c, %struct.log_c* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to float
  %61 = load %struct.log_c*, %struct.log_c** %10, align 8
  %62 = getelementptr inbounds %struct.log_c, %struct.log_c* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i32, i32, float, ...) @DMEMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %54, float %60, i32 %63)
  %65 = load i32, i32* @DMEMIT_SYNC, align 4
  br label %66

66:                                               ; preds = %42, %4, %38
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @DMEMIT(i8*, i32, i32, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
