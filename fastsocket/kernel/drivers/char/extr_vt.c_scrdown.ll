; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_scrdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_scrdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.vc_data*, i32, i32, i32, i32)* }

@SM_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32)* @scrdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrdown(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %17, %18
  %20 = sub i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %27, %21
  br label %92

35:                                               ; preds = %31
  %36 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %37 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.vc_data*, i32, i32, i32, i32)*, i64 (%struct.vc_data*, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SM_DOWN, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 %44(%struct.vc_data* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %92

53:                                               ; preds = %39, %35
  %54 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %56, %62
  %64 = inttoptr i64 %63 to i16*
  store i16* %64, i16** %9, align 8
  %65 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i16*, i16** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %70, i64 %72
  %74 = load i16*, i16** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %77, %78
  %80 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul i32 %79, %82
  %84 = call i32 @scr_memmovew(i16* %73, i16* %74, i32 %83)
  %85 = load i16*, i16** %9, align 8
  %86 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul i32 2, %89
  %91 = call i32 @scr_memsetw(i16* %85, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %53, %52, %34
  ret void
}

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @scr_memmovew(i16*, i16*, i32) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
