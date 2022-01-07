; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_move_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_move_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adi_port = type { %struct.adi* }
%struct.adi = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adi_port*, i32)* @adi_move_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_move_bits(%struct.adi_port* %0, i32 %1) #0 {
  %3 = alloca %struct.adi_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adi*, align 8
  store %struct.adi_port* %0, %struct.adi_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adi_port*, %struct.adi_port** %3, align 8
  %8 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %7, i32 0, i32 0
  %9 = load %struct.adi*, %struct.adi** %8, align 8
  store %struct.adi* %9, %struct.adi** %6, align 8
  %10 = load %struct.adi*, %struct.adi** %6, align 8
  %11 = getelementptr inbounds %struct.adi, %struct.adi* %10, i64 1
  %12 = getelementptr inbounds %struct.adi, %struct.adi* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.adi*, %struct.adi** %6, align 8
  %14 = getelementptr inbounds %struct.adi, %struct.adi* %13, i64 0
  %15 = getelementptr inbounds %struct.adi, %struct.adi* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.adi*, %struct.adi** %6, align 8
  %17 = getelementptr inbounds %struct.adi, %struct.adi* %16, i64 0
  %18 = getelementptr inbounds %struct.adi, %struct.adi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.adi*, %struct.adi** %6, align 8
  %23 = getelementptr inbounds %struct.adi, %struct.adi* %22, i64 1
  %24 = getelementptr inbounds %struct.adi, %struct.adi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %93

28:                                               ; preds = %21
  %29 = load %struct.adi*, %struct.adi** %6, align 8
  %30 = getelementptr inbounds %struct.adi, %struct.adi* %29, i64 0
  %31 = getelementptr inbounds %struct.adi, %struct.adi* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %28
  %38 = load %struct.adi*, %struct.adi** %6, align 8
  %39 = getelementptr inbounds %struct.adi, %struct.adi* %38, i64 1
  %40 = getelementptr inbounds %struct.adi, %struct.adi* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37, %28
  br label %93

48:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.adi*, %struct.adi** %6, align 8
  %52 = getelementptr inbounds %struct.adi, %struct.adi* %51, i64 1
  %53 = getelementptr inbounds %struct.adi, %struct.adi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %50, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %49
  %57 = load %struct.adi*, %struct.adi** %6, align 8
  %58 = getelementptr inbounds %struct.adi, %struct.adi* %57, i64 1
  %59 = getelementptr inbounds %struct.adi, %struct.adi* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.adi*, %struct.adi** %6, align 8
  %66 = getelementptr inbounds %struct.adi, %struct.adi* %65, i64 0
  %67 = getelementptr inbounds %struct.adi, %struct.adi* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = ashr i32 %70, 1
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %68, i64 %75
  store i32 %64, i32* %76, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %49

80:                                               ; preds = %49
  %81 = load %struct.adi*, %struct.adi** %6, align 8
  %82 = getelementptr inbounds %struct.adi, %struct.adi* %81, i64 1
  %83 = getelementptr inbounds %struct.adi, %struct.adi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.adi*, %struct.adi** %6, align 8
  %86 = getelementptr inbounds %struct.adi, %struct.adi* %85, i64 0
  %87 = getelementptr inbounds %struct.adi, %struct.adi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load %struct.adi*, %struct.adi** %6, align 8
  %91 = getelementptr inbounds %struct.adi, %struct.adi* %90, i64 1
  %92 = getelementptr inbounds %struct.adi, %struct.adi* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 8
  br label %93

93:                                               ; preds = %80, %47, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
