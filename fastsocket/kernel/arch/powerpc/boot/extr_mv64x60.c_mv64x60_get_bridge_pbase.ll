; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_get_bridge_pbase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_get_bridge_pbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"marvell,mv64360\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mv64x60_get_bridge_pbase() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i64], align 16
  %3 = alloca i8*, align 8
  %4 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %19

8:                                                ; preds = %0
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %11 = call i32 @getprop(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %10, i32 16)
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %17 = load i64, i64* %16, align 16
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %1, align 8
  br label %20

19:                                               ; preds = %14, %7
  store i32* null, i32** %1, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32*, i32** %1, align 8
  ret i32* %21
}

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
