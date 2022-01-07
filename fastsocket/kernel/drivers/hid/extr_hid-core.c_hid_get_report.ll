; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_get_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i32 }
%struct.hid_report_enum = type { %struct.hid_report**, i64 }

@.str = private unnamed_addr constant [33 x i8] c"undefined report_id %u received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_report* (%struct.hid_report_enum*, i32*)* @hid_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %0, i32* %1) #0 {
  %3 = alloca %struct.hid_report_enum*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_report_enum* %0, %struct.hid_report_enum** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hid_report_enum*, %struct.hid_report_enum** %3, align 8
  %8 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.hid_report_enum*, %struct.hid_report_enum** %3, align 8
  %16 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %15, i32 0, i32 0
  %17 = load %struct.hid_report**, %struct.hid_report*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %17, i64 %19
  %21 = load %struct.hid_report*, %struct.hid_report** %20, align 8
  store %struct.hid_report* %21, %struct.hid_report** %5, align 8
  %22 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %23 = icmp eq %struct.hid_report* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dbg_hid(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  ret %struct.hid_report* %28
}

declare dso_local i32 @dbg_hid(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
