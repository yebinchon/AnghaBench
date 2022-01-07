; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ttyfax.c_isdn_tty_fax_bitorder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ttyfax.c_isdn_tty_fax_bitorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isdn_tty_fax_bitorder(%struct.TYPE_5__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %78, %16
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  store i32 128, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %65, %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %17

81:                                               ; preds = %17
  br label %82

82:                                               ; preds = %81, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
