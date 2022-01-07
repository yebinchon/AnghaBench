; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_cip_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394-private.h_fill_cip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CIP_header = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CIP_header*, i8, i64, i32, i64)* @fill_cip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_cip_header(%struct.CIP_header* %0, i8 zeroext %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.CIP_header*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.CIP_header* %0, %struct.CIP_header** %6, align 8
  store i8 %1, i8* %7, align 1
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load i8, i8* %7, align 1
  %12 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %13 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %11, i8* %15, align 1
  %16 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %17 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 120, i8* %19, align 1
  %20 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %21 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 0, i8* %23, align 1
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i8
  %26 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %27 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %25, i8* %29, align 1
  %30 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %31 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8 -128, i8* %33, align 1
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %45 [
    i32 128, label %35
    i32 129, label %40
  ]

35:                                               ; preds = %5
  %36 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %37 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  store i8 -128, i8* %39, align 1
  br label %45

40:                                               ; preds = %5
  %41 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %42 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %5, %40, %35
  %46 = load i64, i64* %10, align 8
  %47 = lshr i64 %46, 8
  %48 = trunc i64 %47 to i8
  %49 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %50 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8 %48, i8* %52, align 1
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %53, 255
  %55 = trunc i64 %54 to i8
  %56 = load %struct.CIP_header*, %struct.CIP_header** %6, align 8
  %57 = getelementptr inbounds %struct.CIP_header, %struct.CIP_header* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  store i8 %55, i8* %59, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
