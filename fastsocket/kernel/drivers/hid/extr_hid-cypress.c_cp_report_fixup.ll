; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-cypress.c_cp_report_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-cypress.c_cp_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@CP_RDESC_SWAPPED_MIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32*, i32)* @cp_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_report_fixup(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = call i64 @hid_get_drvdata(%struct.hid_device* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @CP_RDESC_SWAPPED_MIN_MAX, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %75

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %72, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 41
  br i1 %29, label %30, label %71

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 25
  br i1 %37, label %38, label %71

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 25, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 41, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %38, %30, %23
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %18

75:                                               ; preds = %16, %18
  ret void
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
