; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_more.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_more = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_more*, i32, i64)* @fill_output_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_output_more(%struct.output_more* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.output_more*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.output_more* %0, %struct.output_more** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @cpu_to_le32(i64 %8)
  %10 = load %struct.output_more*, %struct.output_more** %4, align 8
  %11 = getelementptr inbounds %struct.output_more, %struct.output_more* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %9, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i8* @cpu_to_le32(i64 %14)
  %16 = load %struct.output_more*, %struct.output_more** %4, align 8
  %17 = getelementptr inbounds %struct.output_more, %struct.output_more* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %15, i8** %19, align 8
  %20 = call i8* @cpu_to_le32(i64 0)
  %21 = load %struct.output_more*, %struct.output_more** %4, align 8
  %22 = getelementptr inbounds %struct.output_more, %struct.output_more* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %20, i8** %24, align 8
  %25 = call i8* @cpu_to_le32(i64 0)
  %26 = load %struct.output_more*, %struct.output_more** %4, align 8
  %27 = getelementptr inbounds %struct.output_more, %struct.output_more* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  store i8* %25, i8** %29, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
