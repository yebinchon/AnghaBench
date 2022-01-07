; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c___throtl_tg_fill_dev_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c___throtl_tg_fill_dev_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.backing_dev_info }
%struct.backing_dev_info = type { i64 }
%struct.throtl_grp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*)* @__throtl_tg_fill_dev_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__throtl_tg_fill_dev_details(%struct.throtl_data* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.backing_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %8 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %9 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.backing_dev_info* %11, %struct.backing_dev_info** %5, align 8
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %13 = icmp ne %struct.throtl_grp* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %16 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %44

21:                                               ; preds = %14
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %23 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %28 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @dev_name(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %34 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @dev_name(i64 %35)
  %37 = call i32 @sscanf(i64 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @MKDEV(i32 %38, i32 %39)
  %41 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %42 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %20, %32, %26, %21
  ret void
}

declare dso_local i64 @dev_name(i64) #1

declare dso_local i32 @sscanf(i64, i8*, i32*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
