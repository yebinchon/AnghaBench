; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_falconide.c_falconide_output_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_falconide.c_falconide_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ide_cmd = type { i32 }

@ide_disk = common dso_local global i64 0, align 8
@IDE_TFLAG_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.ide_cmd*, i8*, i32)* @falconide_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falconide_output_data(%struct.TYPE_7__* %0, %struct.ide_cmd* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ide_disk, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %23 = icmp ne %struct.ide_cmd* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IDE_TFLAG_FS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  %36 = udiv i32 %35, 2
  %37 = call i32 @__ide_mm_outsw(i64 %32, i8* %33, i32 %36)
  br label %46

38:                                               ; preds = %24, %21, %4
  %39 = load i64, i64* %9, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  %44 = udiv i32 %43, 2
  %45 = call i32 @raw_outsw_swapw(i32* %40, i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @__ide_mm_outsw(i64, i8*, i32) #1

declare dso_local i32 @raw_outsw_swapw(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
