; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_fill_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_fill_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_ch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.tiger_hw* }
%struct.tiger_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: B%1d fill %02x len %d idx %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_ch*, i32, i32, i32)* @fill_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_mem(%struct.tiger_ch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tiger_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tiger_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tiger_ch* %0, %struct.tiger_ch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tiger_ch*, %struct.tiger_ch** %5, align 8
  %13 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.tiger_hw*, %struct.tiger_hw** %14, align 8
  store %struct.tiger_hw* %15, %struct.tiger_hw** %9, align 8
  store i32 255, i32* %10, align 4
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %9, align 8
  %17 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tiger_ch*, %struct.tiger_ch** %5, align 8
  %20 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tiger_hw*, %struct.tiger_hw** %9, align 8
  %27 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %23, i32 %24, i32 %25, i32 %29)
  %31 = load %struct.tiger_ch*, %struct.tiger_ch** %5, align 8
  %32 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 8
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %4
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %43, -1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %80, %42
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load %struct.tiger_hw*, %struct.tiger_hw** %9, align 8
  %51 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.tiger_hw*, %struct.tiger_hw** %9, align 8
  %66 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %64, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.tiger_hw*, %struct.tiger_hw** %9, align 8
  %75 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %73, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %49
  br label %45

81:                                               ; preds = %45
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
