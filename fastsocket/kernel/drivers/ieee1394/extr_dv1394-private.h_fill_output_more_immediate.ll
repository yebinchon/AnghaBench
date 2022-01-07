; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_more_immediate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_output_more_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_more_immediate = type { i8** }

@TCODE_ISO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_more_immediate*, i8, i8, i8, i32)* @fill_output_more_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_output_more_immediate(%struct.output_more_immediate* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.output_more_immediate*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.output_more_immediate* %0, %struct.output_more_immediate** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = call i8* @cpu_to_le32(i32 33554440)
  %12 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %13 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = call i8* @cpu_to_le32(i32 0)
  %17 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %18 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %16, i8** %20, align 8
  %21 = call i8* @cpu_to_le32(i32 0)
  %22 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %23 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  store i8* %21, i8** %25, align 8
  %26 = call i8* @cpu_to_le32(i32 0)
  %27 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %28 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  store i8* %26, i8** %30, align 8
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 14
  %34 = or i32 0, %33
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = or i32 %34, %37
  %39 = load i32, i32* @TCODE_ISO_DATA, align 4
  %40 = shl i32 %39, 4
  %41 = or i32 %38, %40
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %47 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 4
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %51, 32512
  %53 = or i32 %52, 160
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %56 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 5
  store i8* %54, i8** %58, align 8
  %59 = call i8* @cpu_to_le32(i32 0)
  %60 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %61 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 6
  store i8* %59, i8** %63, align 8
  %64 = call i8* @cpu_to_le32(i32 0)
  %65 = load %struct.output_more_immediate*, %struct.output_more_immediate** %6, align 8
  %66 = getelementptr inbounds %struct.output_more_immediate, %struct.output_more_immediate* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 7
  store i8* %64, i8** %68, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
