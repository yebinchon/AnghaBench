; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_rd_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_rd_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@i91unvram = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@i91unvramp = common dso_local global %struct.TYPE_3__* null, align 8
@INI_SIGNATURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @initio_se2_rd_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_se2_rd_all(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  store %struct.TYPE_3__* @i91unvram, %struct.TYPE_3__** @i91unvramp, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @i91unvramp, align 8
  %8 = bitcast %struct.TYPE_3__* %7 to i64*
  store i64* %8, i64** %6, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @initio_se2_rd(i64 %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @i91unvramp, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INI_SIGNATURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %52

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @i91unvramp, align 8
  %31 = bitcast %struct.TYPE_3__* %30 to i64*
  store i64* %31, i64** %6, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %41, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 31
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %6, align 8
  %38 = load i64, i64* %36, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @i91unvramp, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %52

51:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @initio_se2_rd(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
