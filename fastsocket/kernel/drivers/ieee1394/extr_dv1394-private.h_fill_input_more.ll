; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_input_more.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_input_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_more = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_more*, i32, i32, i64)* @fill_input_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_input_more(%struct.input_more* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.input_more*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.input_more* %0, %struct.input_more** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 536870912, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, 134217728
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = call i8* @cpu_to_le32(i64 %22)
  %24 = load %struct.input_more*, %struct.input_more** %5, align 8
  %25 = getelementptr inbounds %struct.input_more, %struct.input_more* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %23, i8** %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @cpu_to_le32(i64 %28)
  %30 = load %struct.input_more*, %struct.input_more** %5, align 8
  %31 = getelementptr inbounds %struct.input_more, %struct.input_more* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %29, i8** %33, align 8
  %34 = call i8* @cpu_to_le32(i64 0)
  %35 = load %struct.input_more*, %struct.input_more** %5, align 8
  %36 = getelementptr inbounds %struct.input_more, %struct.input_more* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = call i8* @cpu_to_le32(i64 0)
  %40 = load %struct.input_more*, %struct.input_more** %5, align 8
  %41 = getelementptr inbounds %struct.input_more, %struct.input_more* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  store i8* %39, i8** %43, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
