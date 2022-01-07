; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_parser_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_parser_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32 }
%struct.hid_item = type { i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown main item tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, %struct.hid_item*)* @hid_parser_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_parser_main(%struct.hid_parser* %0, %struct.hid_item* %1) #0 {
  %3 = alloca %struct.hid_parser*, align 8
  %4 = alloca %struct.hid_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %3, align 8
  store %struct.hid_item* %1, %struct.hid_item** %4, align 8
  %7 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %8 = call i32 @item_udata(%struct.hid_item* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %10 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %35 [
    i32 132, label %12
    i32 131, label %17
    i32 129, label %20
    i32 128, label %25
    i32 130, label %30
  ]

12:                                               ; preds = %2
  %13 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @open_collection(%struct.hid_parser* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %19 = call i32 @close_collection(%struct.hid_parser* %18)
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %22 = load i32, i32* @HID_INPUT_REPORT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @hid_add_field(%struct.hid_parser* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %27 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @hid_add_field(%struct.hid_parser* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %32 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @hid_add_field(%struct.hid_parser* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %37 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dbg_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %30, %25, %20, %17, %12
  %41 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %42 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %41, i32 0, i32 0
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @item_udata(%struct.hid_item*) #1

declare dso_local i32 @open_collection(%struct.hid_parser*, i32) #1

declare dso_local i32 @close_collection(%struct.hid_parser*) #1

declare dso_local i32 @hid_add_field(%struct.hid_parser*, i32, i32) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
