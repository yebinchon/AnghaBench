; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib8000_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %13, align 8
  store %struct.dib8000_state* %14, %struct.dib8000_state** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %16 = call i32 @dib8000_read_word(%struct.dib8000_state* %15, i32 542)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 6
  %19 = and i32 %18, 255
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 63
  store i32 %21, i32* %10, align 4
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %23 = call i32 @dib8000_read_word(%struct.dib8000_state* %22, i32 543)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 255
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 63
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 64
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 64
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = call i32 @intlog10(i32 2)
  %47 = mul nsw i32 %46, 10
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @intlog10(i32 %50)
  %52 = mul nsw i32 10, %51
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %11, align 4
  br label %60

54:                                               ; preds = %42
  %55 = call i32 @intlog10(i32 2)
  %56 = mul nsw i32 %55, 10
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %58, 100
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = call i32 @intlog10(i32 2)
  %65 = mul nsw i32 %64, 10
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @intlog10(i32 %68)
  %70 = mul nsw i32 10, %69
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %82

74:                                               ; preds = %60
  %75 = call i32 @intlog10(i32 2)
  %76 = mul nsw i32 %75, 10
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sub nsw i32 %78, 100
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %74, %63
  %83 = load i32, i32* %11, align 4
  %84 = sdiv i32 %83, 1677721
  %85 = load i32*, i32** %4, align 8
  store i32 %84, i32* %85, align 4
  ret i32 0
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
