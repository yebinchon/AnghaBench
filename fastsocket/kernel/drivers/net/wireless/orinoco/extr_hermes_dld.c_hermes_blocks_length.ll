; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes_dld.c_hermes_blocks_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes_dld.c_hermes_blocks_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dblock = type { i32* }

@BLOCK_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hermes_blocks_length(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.dblock*
  store %struct.dblock* %9, %struct.dblock** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr i8, i8* %10, i64 -8
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.dblock*, %struct.dblock** %5, align 8
  %14 = bitcast %struct.dblock* %13 to i8*
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ule i8* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.dblock*, %struct.dblock** %5, align 8
  %19 = call i64 @dblock_addr(%struct.dblock* %18)
  %20 = load i64, i64* @BLOCK_END, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load %struct.dblock*, %struct.dblock** %5, align 8
  %26 = call i32 @dblock_len(%struct.dblock* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 8, %28
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.dblock*, %struct.dblock** %5, align 8
  %35 = getelementptr inbounds %struct.dblock, %struct.dblock* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to %struct.dblock*
  store %struct.dblock* %40, %struct.dblock** %5, align 8
  br label %12

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  ret i64 %43
}

declare dso_local i64 @dblock_addr(%struct.dblock*) #1

declare dso_local i32 @dblock_len(%struct.dblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
