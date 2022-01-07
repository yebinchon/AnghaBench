; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_set_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i32, i64, i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"offset (%d) exceeds report_count (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"value %d is out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_set_field(%struct.hid_field* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %10 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %13 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %18 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @hid_dump_input(i32 %16, i64 %22, i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %27 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %34 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i64, ...) @dbg_hid(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35)
  store i32 -1, i32* %4, align 4
  br label %62

37:                                               ; preds = %3
  %38 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @s32ton(i64 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @snto32(i32 %46, i32 %47)
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = call i32 (i8*, i64, ...) @dbg_hid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  store i32 -1, i32* %4, align 4
  br label %62

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %57 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %50, %30
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @hid_dump_input(i32, i64, i64) #1

declare dso_local i32 @dbg_hid(i8*, i64, ...) #1

declare dso_local i64 @snto32(i32, i32) #1

declare dso_local i32 @s32ton(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
