; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_logstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_logstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@stat_end = common dso_local global i32 0, align 4
@statbuf = common dso_local global i8* null, align 8
@STATBUF_LEN = common dso_local global i32 0, align 4
@stat_st = common dso_local global i32 0, align 4
@ISDN_STAT_STAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*, i8*)* @pcbit_logstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_logstat(%struct.pcbit_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pcbit_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @stat_end, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** @statbuf, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 %18, i8* %22, align 1
  %23 = load i32, i32* @stat_end, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @STATBUF_LEN, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* @stat_end, align 4
  %27 = load i32, i32* @stat_end, align 4
  %28 = load i32, i32* @stat_st, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  %31 = load i32, i32* @stat_st, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @STATBUF_LEN, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* @stat_st, align 4
  br label %35

35:                                               ; preds = %30, %13
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i32, i32* @ISDN_STAT_STAVAIL, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %52, align 8
  %54 = call i32 %53(%struct.TYPE_5__* %6)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
