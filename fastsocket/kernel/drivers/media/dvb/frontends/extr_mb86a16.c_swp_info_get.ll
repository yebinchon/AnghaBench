; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_swp_info_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_swp_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb86a16_state*, i32, i32, i32, i32, i32, i32*, i32*, i8*, i8*)* @swp_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_info_get(%struct.mb86a16_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i8* %8, i8* %9) #0 {
  %11 = alloca %struct.mb86a16_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %16, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %10
  %32 = load i32, i32* %22, align 4
  %33 = add nsw i32 %32, 1000
  %34 = sdiv i32 %33, 2000
  %35 = mul nsw i32 %34, 2
  %36 = load i32*, i32** %17, align 8
  store i32 %35, i32* %36, align 4
  br label %42

37:                                               ; preds = %10
  %38 = load i32, i32* %22, align 4
  %39 = add nsw i32 %38, 500
  %40 = sdiv i32 %39, 1000
  %41 = load i32*, i32** %17, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 1000
  %51 = load i32, i32* %22, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32*, i32** %18, align 8
  store i32 %52, i32* %53, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load i32, i32* %22, align 4
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = sub nsw i32 %55, %58
  %60 = load i32*, i32** %18, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 8192
  %65 = load %struct.mb86a16_state*, %struct.mb86a16_state** %11, align 8
  %66 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %21, align 4
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %19, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i32, i32* %21, align 4
  %74 = and i32 %73, 3840
  %75 = ashr i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %20, align 8
  store i8 %76, i8* %77, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
