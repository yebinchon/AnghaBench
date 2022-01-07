; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_set_phy_default_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_set_phy_default_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@DefaultPhyParam = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.net_device*, i32)* @ipg_set_phy_default_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_set_phy_default_param(i8 zeroext %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i16*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i8 %0, i8* %4, align 1
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i16*, i16** @DefaultPhyParam, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 0
  store i16* %13, i16** %9, align 8
  %14 = load i16*, i16** %9, align 8
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i16*, i16** %9, align 8
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  %24 = load i16*, i16** %9, align 8
  %25 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %25, i16** %9, align 8
  br label %26

26:                                               ; preds = %78, %3
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i16*, i16** %9, align 8
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %10, align 2
  %44 = load i16*, i16** %9, align 8
  %45 = getelementptr inbounds i16, i16* %44, i64 1
  %46 = load i16, i16* %45, align 2
  store i16 %46, i16* %11, align 2
  %47 = load i16*, i16** %9, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 2
  store i16* %48, i16** %9, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i16, i16* %10, align 2
  %52 = load i16, i16* %11, align 2
  %53 = call i32 @mdio_write(%struct.net_device* %49, i32 %50, i16 zeroext %51, i16 zeroext %52)
  %54 = load i16, i16* %7, align 2
  %55 = zext i16 %54 to i32
  %56 = sub nsw i32 %55, 4
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %7, align 2
  br label %37

58:                                               ; preds = %37
  br label %79

59:                                               ; preds = %30
  %60 = load i16, i16* %7, align 2
  %61 = zext i16 %60 to i32
  %62 = sdiv i32 %61, 2
  %63 = load i16*, i16** %9, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i16, i16* %63, i64 %64
  store i16* %65, i16** %9, align 8
  %66 = load i16*, i16** %9, align 8
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %7, align 2
  %71 = load i16*, i16** %9, align 8
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = ashr i32 %73, 8
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %8, align 1
  %76 = load i16*, i16** %9, align 8
  %77 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %77, i16** %9, align 8
  br label %78

78:                                               ; preds = %59
  br label %26

79:                                               ; preds = %58, %26
  ret void
}

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
