; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_chk_xpak_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_chk_xpak_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Take Xframe NIC out of service.\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Excessive temperatures may result in premature transceiver failure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Excessive bias currents may indicate imminent laser diode failure.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Excessive laser output power may saturate far-end receiver.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Incorrect XPAK Alarm type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64, i64)* @s2io_chk_xpak_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_chk_xpak_counter(i32* %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 3, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %21, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %13, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 2
  %39 = ashr i32 %36, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %65

44:                                               ; preds = %27
  %45 = load i64, i64* %10, align 8
  switch i64 %45, label %61 [
    i64 1, label %46
    i64 2, label %51
    i64 3, label %56
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @ERR_DBG, align 4
  %48 = call i32 @DBG_PRINT(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ERR_DBG, align 4
  %50 = call i32 @DBG_PRINT(i32 %49, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %64

51:                                               ; preds = %44
  %52 = load i32, i32* @ERR_DBG, align 4
  %53 = call i32 @DBG_PRINT(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ERR_DBG, align 4
  %55 = call i32 @DBG_PRINT(i32 %54, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %64

56:                                               ; preds = %44
  %57 = load i32, i32* @ERR_DBG, align 4
  %58 = call i32 @DBG_PRINT(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ERR_DBG, align 4
  %60 = call i32 @DBG_PRINT(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %64

61:                                               ; preds = %44
  %62 = load i32, i32* @ERR_DBG, align 4
  %63 = call i32 @DBG_PRINT(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56, %51, %46
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 2
  %69 = shl i32 %66, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %85

78:                                               ; preds = %24
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %65
  ret void
}

declare dso_local i32 @DBG_PRINT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
