; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_swp_info_get2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_swp_info_get2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb86a16_state*, i32, i32, i32, i32*, i32*, i8*, i8*)* @swp_info_get2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_info_get2(%struct.mb86a16_state* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.mb86a16_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %21, 1000
  %23 = sdiv i32 %22, 2000
  %24 = mul nsw i32 %23, 2
  %25 = load i32*, i32** %14, align 8
  store i32 %24, i32* %25, align 4
  br label %31

26:                                               ; preds = %8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 500
  %29 = sdiv i32 %28, 1000
  %30 = load i32*, i32** %14, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 1000
  %48 = sub nsw i32 %44, %47
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 8192
  %54 = load %struct.mb86a16_state*, %struct.mb86a16_state** %9, align 8
  %55 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %15, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i32, i32* %17, align 4
  %63 = and i32 %62, 3840
  %64 = ashr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %16, align 8
  store i8 %65, i8* %66, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
