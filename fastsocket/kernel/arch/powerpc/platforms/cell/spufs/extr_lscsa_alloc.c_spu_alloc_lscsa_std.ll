; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_alloc_lscsa_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_alloc_lscsa_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.spu_lscsa* }
%struct.spu_lscsa = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@LS_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_state*)* @spu_alloc_lscsa_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_alloc_lscsa_std(%struct.spu_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu_lscsa*, align 8
  %5 = alloca i8*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  %6 = call %struct.spu_lscsa* @vmalloc(i32 8)
  store %struct.spu_lscsa* %6, %struct.spu_lscsa** %4, align 8
  %7 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %8 = icmp ne %struct.spu_lscsa* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %14 = call i32 @memset(%struct.spu_lscsa* %13, i32 0, i32 8)
  %15 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %16 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %17 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %16, i32 0, i32 0
  store %struct.spu_lscsa* %15, %struct.spu_lscsa** %17, align 8
  %18 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %19 = getelementptr inbounds %struct.spu_lscsa, %struct.spu_lscsa* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %34, %12
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %24 = getelementptr inbounds %struct.spu_lscsa, %struct.spu_lscsa* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @LS_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp ult i8* %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @vmalloc_to_page(i8* %31)
  %33 = call i32 @SetPageReserved(i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  br label %21

39:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.spu_lscsa* @vmalloc(i32) #1

declare dso_local i32 @memset(%struct.spu_lscsa*, i32, i32) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
