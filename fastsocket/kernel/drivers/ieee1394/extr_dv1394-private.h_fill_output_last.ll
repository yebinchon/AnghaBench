; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_last = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_last*, i32, i32, i32, i64)* @fill_output_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_output_last(%struct.output_last* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.output_last*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.output_last* %0, %struct.output_last** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 268435456
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = or i32 %17, 134217728
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, 3145728
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, 786432
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.output_last*, %struct.output_last** %6, align 8
  %35 = getelementptr inbounds %struct.output_last, %struct.output_last* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %33, i8** %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i8* @cpu_to_le32(i64 %38)
  %40 = load %struct.output_last*, %struct.output_last** %6, align 8
  %41 = getelementptr inbounds %struct.output_last, %struct.output_last* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %39, i8** %43, align 8
  %44 = call i8* @cpu_to_le32(i64 0)
  %45 = load %struct.output_last*, %struct.output_last** %6, align 8
  %46 = getelementptr inbounds %struct.output_last, %struct.output_last* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  store i8* %44, i8** %48, align 8
  %49 = call i8* @cpu_to_le32(i64 0)
  %50 = load %struct.output_last*, %struct.output_last** %6, align 8
  %51 = getelementptr inbounds %struct.output_last, %struct.output_last* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 3
  store i8* %49, i8** %53, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
