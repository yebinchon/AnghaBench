; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PLIP_DELAY_UNIT = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, %struct.net_device*, i32*, i8*)* @plip_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_receive(i16 zeroext %0, %struct.net_device* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %97 [
    i32 128, label %15
    i32 130, label %54
    i32 129, label %96
  ]

15:                                               ; preds = %4
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %15, %43
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call zeroext i8 @read_status(%struct.net_device* %19)
  store i8 %20, i8* %10, align 1
  %21 = load i32, i32* @PLIP_DELAY_UNIT, align 4
  %22 = call i32 @udelay(i32 %21)
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call zeroext i8 @read_status(%struct.net_device* %28)
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %44

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @TIMEOUT, align 4
  store i32 %42, i32* %5, align 4
  br label %99

43:                                               ; preds = %37
  br label %18

44:                                               ; preds = %35
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 15
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %9, align 8
  store i8 %49, i8* %50, align 1
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call i32 @write_data(%struct.net_device* %51, i32 16)
  %53 = load i32*, i32** %8, align 8
  store i32 130, i32* %53, align 4
  br label %54

54:                                               ; preds = %4, %44
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %82
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call zeroext i8 @read_status(%struct.net_device* %58)
  store i8 %59, i8* %10, align 1
  %60 = load i32, i32* @PLIP_DELAY_UNIT, align 4
  %61 = call i32 @udelay(i32 %60)
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = call zeroext i8 @read_status(%struct.net_device* %67)
  store i8 %68, i8* %11, align 1
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %83

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @TIMEOUT, align 4
  store i32 %81, i32* %5, align 4
  br label %99

82:                                               ; preds = %76
  br label %57

83:                                               ; preds = %74
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 1
  %87 = and i32 %86, 240
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %87
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  %93 = load %struct.net_device*, %struct.net_device** %7, align 8
  %94 = call i32 @write_data(%struct.net_device* %93, i32 0)
  %95 = load i32*, i32** %8, align 8
  store i32 128, i32* %95, align 4
  br label %96

96:                                               ; preds = %4, %83
  br label %97

97:                                               ; preds = %4, %96
  %98 = load i32, i32* @OK, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %80, %41
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local zeroext i8 @read_status(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_data(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
