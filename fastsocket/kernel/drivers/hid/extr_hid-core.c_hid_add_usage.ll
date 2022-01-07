; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_add_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_add_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32*, i32* }

@HID_MAX_USAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"usage index exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, i32)* @hid_add_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_add_usage(%struct.hid_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %7 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HID_MAX_USAGES, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %17 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %21 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32 %15, i32* %24, align 4
  %25 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %26 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %14
  %30 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %31 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %34 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40, %29
  %42 = phi i32 [ %39, %29 ], [ 0, %40 ]
  %43 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %44 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %48 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %42, i32* %51, align 4
  %52 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %53 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @dbg_hid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
