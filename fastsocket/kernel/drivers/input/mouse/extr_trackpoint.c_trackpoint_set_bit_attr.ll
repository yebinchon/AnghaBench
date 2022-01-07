; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_set_bit_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_set_bit_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.trackpoint_data* }
%struct.trackpoint_data = type { i32 }
%struct.trackpoint_attr_data = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_bit_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trackpoint_set_bit_attr(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trackpoint_data*, align 8
  %11 = alloca %struct.trackpoint_attr_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 1
  %16 = load %struct.trackpoint_data*, %struct.trackpoint_data** %15, align 8
  store %struct.trackpoint_data* %16, %struct.trackpoint_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.trackpoint_attr_data*
  store %struct.trackpoint_attr_data* %18, %struct.trackpoint_attr_data** %11, align 8
  %19 = load %struct.trackpoint_data*, %struct.trackpoint_data** %10, align 8
  %20 = bitcast %struct.trackpoint_data* %19 to i8*
  %21 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %22 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strict_strtoul(i8* %26, i32 10, i64* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %4
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %67

35:                                               ; preds = %29
  %36 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %37 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** %12, align 8
  store i8 %54, i8* %55, align 1
  %56 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 0
  %58 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %59 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %62 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @trackpoint_toggle_bit(i32* %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %46
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %32
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @trackpoint_toggle_bit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
