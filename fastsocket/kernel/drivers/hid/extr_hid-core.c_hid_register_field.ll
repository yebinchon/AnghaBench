; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_register_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_register_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i64, %struct.hid_report*, %struct.hid_usage*, i32* }
%struct.hid_usage = type { i32 }
%struct.hid_report = type { i64, %struct.hid_field** }

@HID_MAX_FIELDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"too many fields in report\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_field* (%struct.hid_report*, i32, i32)* @hid_register_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_field* @hid_register_field(%struct.hid_report* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_field*, align 8
  store %struct.hid_report* %0, %struct.hid_report** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %10 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HID_MAX_FIELDS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %63

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 32, %19
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %20, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.hid_field* @kzalloc(i32 %25, i32 %26)
  store %struct.hid_field* %27, %struct.hid_field** %8, align 8
  %28 = icmp ne %struct.hid_field* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %63

30:                                               ; preds = %16
  %31 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %32 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %38 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %39 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %38, i32 0, i32 1
  %40 = load %struct.hid_field**, %struct.hid_field*** %39, align 8
  %41 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %42 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %40, i64 %43
  store %struct.hid_field* %37, %struct.hid_field** %44, align 8
  %45 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i64 1
  %47 = bitcast %struct.hid_field* %46 to %struct.hid_usage*
  %48 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %49 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %48, i32 0, i32 2
  store %struct.hid_usage* %47, %struct.hid_usage** %49, align 8
  %50 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %51 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %50, i32 0, i32 2
  %52 = load %struct.hid_usage*, %struct.hid_usage** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %52, i64 %54
  %56 = bitcast %struct.hid_usage* %55 to i32*
  %57 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %58 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %60 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 1
  store %struct.hid_report* %59, %struct.hid_report** %61, align 8
  %62 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  store %struct.hid_field* %62, %struct.hid_field** %4, align 8
  br label %63

63:                                               ; preds = %30, %29, %14
  %64 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  ret %struct.hid_field* %64
}

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local %struct.hid_field* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
