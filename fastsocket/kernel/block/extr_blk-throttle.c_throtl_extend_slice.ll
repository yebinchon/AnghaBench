; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_extend_slice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_extend_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i32*, i32* }

@throtl_slice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[%c] extend slice start=%lu end=%lu jiffies=%lu\00", align 1
@READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*, i32, i64)* @throtl_extend_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_extend_slice(%struct.throtl_data* %0, %struct.throtl_grp* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.throtl_data*, align 8
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %5, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @throtl_slice, align 4
  %11 = call i32 @roundup(i64 %9, i32 %10)
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %13 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @READ, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 82, i32 87
  %25 = trunc i32 %24 to i8
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %27 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %34 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @jiffies, align 4
  %41 = call i32 @throtl_log_tg(%struct.throtl_data* %18, %struct.throtl_grp* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 signext %25, i32 %32, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @throtl_log_tg(%struct.throtl_data*, %struct.throtl_grp*, i8*, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
