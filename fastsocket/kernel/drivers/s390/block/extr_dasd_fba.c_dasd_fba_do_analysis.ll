; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_do_analysis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_do_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dasd_fba_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown blocksize %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_fba_do_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_fba_do_analysis(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.dasd_fba_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_fba_private*
  store %struct.dasd_fba_private* %12, %struct.dasd_fba_private** %4, align 8
  %13 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dasd_check_blocksize(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i32, i32* @DBF_WARNING, align 4
  %22 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %26 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DBF_DEV_EVENT(i32 %21, %struct.TYPE_4__* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %33 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %37 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %39 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %43 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %45 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i32 512, i32* %5, align 4
  br label %46

46:                                               ; preds = %58, %31
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %49 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %55 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %46

61:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dasd_check_blocksize(i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
