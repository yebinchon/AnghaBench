; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_output_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_output_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i32, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_field*, i32*)* @hid_output_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_output_field(%struct.hid_field* %0, i32* %1) #0 {
  %3 = alloca %struct.hid_field*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %11 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %14 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul i32 %20, %21
  %23 = add i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = urem i32 %30, 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = urem i32 %34, 8
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, 1
  %41 = udiv i32 %40, 8
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %33, %29, %26, %2
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %91, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  %52 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %53 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul i32 %59, %60
  %62 = add i32 %58, %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %65 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @s32ton(i32 %70, i32 %71)
  %73 = call i32 @implement(i32* %57, i32 %62, i32 %63, i32 %72)
  br label %90

74:                                               ; preds = %51
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul i32 %77, %78
  %80 = add i32 %76, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.hid_field*, %struct.hid_field** %3, align 8
  %83 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @implement(i32* %75, i32 %80, i32 %81, i32 %88)
  br label %90

90:                                               ; preds = %74, %56
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %47

94:                                               ; preds = %47
  ret void
}

declare dso_local i32 @implement(i32*, i32, i32, i32) #1

declare dso_local i32 @s32ton(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
