; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10023_state = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Symbolrate %i, BDR %i BDRI %i, NDEC %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10023_state*, i32)* @tda10023_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_set_symbolrate(%struct.tda10023_state* %0, i32 %1) #0 {
  %3 = alloca %struct.tda10023_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tda10023_state* %0, %struct.tda10023_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %12 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 10
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sdiv i32 %16, 984
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 640
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 3, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %61

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %28, 492
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 2, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %60

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 320
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 2, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %59

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 246
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %58

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sdiv i32 %46, 160
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 123
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %25
  br label %62

62:                                               ; preds = %61, %19
  %63 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %64 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 16
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sdiv i32 %70, 2
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 255, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 24, %81
  %83 = shl i32 1, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %89 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @do_div(i32 %87, i32 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = shl i32 %99, 6
  %101 = call i32 @tda10023_writebit(%struct.tda10023_state* %98, i32 3, i32 192, i32 %100)
  %102 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, 255
  %105 = call i32 @tda10023_writereg(%struct.tda10023_state* %102, i32 10, i32 %104)
  %106 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = ashr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = call i32 @tda10023_writereg(%struct.tda10023_state* %106, i32 11, i32 %109)
  %111 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 16
  %114 = and i32 %113, 31
  %115 = call i32 @tda10023_writereg(%struct.tda10023_state* %111, i32 12, i32 %114)
  %116 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @tda10023_writereg(%struct.tda10023_state* %116, i32 13, i32 %117)
  %119 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = shl i32 %120, 7
  %122 = call i32 @tda10023_writereg(%struct.tda10023_state* %119, i32 61, i32 %121)
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tda10023_writebit(%struct.tda10023_state*, i32, i32, i32) #1

declare dso_local i32 @tda10023_writereg(%struct.tda10023_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
