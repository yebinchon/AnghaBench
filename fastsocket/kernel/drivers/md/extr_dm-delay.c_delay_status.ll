; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.delay_c* }
%struct.delay_c = type { i32, i64, %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %llu %u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %s %llu %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @delay_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.delay_c*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.delay_c*, %struct.delay_c** %12, align 8
  store %struct.delay_c* %13, %struct.delay_c** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %55 [
    i32 129, label %15
    i32 128, label %24
  ]

15:                                               ; preds = %4
  %16 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %17 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %20 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = call i32 (i8*, i32, i64, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %22)
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %26 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %31 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %34 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, i64, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %32, i32 %35)
  %37 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %38 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %24
  %42 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %43 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %48 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  %51 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i64, ...) @DMEMIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %46, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %24
  br label %55

55:                                               ; preds = %4, %54, %15
  ret i32 0
}

declare dso_local i32 @DMEMIT(i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
