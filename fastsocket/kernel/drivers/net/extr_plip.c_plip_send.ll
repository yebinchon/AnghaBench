; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@PLIP_DELAY_UNIT = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, %struct.net_device*, i32*, i8)* @plip_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_send(i16 zeroext %0, %struct.net_device* %1, i32* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8 %3, i8* %9, align 1
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %87 [
    i32 128, label %14
    i32 130, label %22
    i32 129, label %58
  ]

14:                                               ; preds = %4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = trunc i32 %18 to i8
  %20 = call i32 @write_data(%struct.net_device* %15, i8 zeroext %19)
  %21 = load i32*, i32** %8, align 8
  store i32 130, i32* %21, align 4
  br label %22

22:                                               ; preds = %4, %14
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = or i32 16, %26
  %28 = trunc i32 %27 to i8
  %29 = call i32 @write_data(%struct.net_device* %23, i8 zeroext %28)
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %22, %46
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call zeroext i8 @read_status(%struct.net_device* %33)
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @TIMEOUT, align 4
  store i32 %45, i32* %5, align 4
  br label %89

46:                                               ; preds = %40
  %47 = load i32, i32* @PLIP_DELAY_UNIT, align 4
  %48 = call i32 @udelay(i32 %47)
  br label %32

49:                                               ; preds = %39
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = ashr i32 %52, 4
  %54 = or i32 16, %53
  %55 = trunc i32 %54 to i8
  %56 = call i32 @write_data(%struct.net_device* %50, i8 zeroext %55)
  %57 = load i32*, i32** %8, align 8
  store i32 129, i32* %57, align 4
  br label %58

58:                                               ; preds = %4, %49
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = call i32 @write_data(%struct.net_device* %59, i8 zeroext %63)
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %58, %81
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = call zeroext i8 @read_status(%struct.net_device* %68)
  store i8 %69, i8* %10, align 1
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %84

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @TIMEOUT, align 4
  store i32 %80, i32* %5, align 4
  br label %89

81:                                               ; preds = %75
  %82 = load i32, i32* @PLIP_DELAY_UNIT, align 4
  %83 = call i32 @udelay(i32 %82)
  br label %67

84:                                               ; preds = %74
  %85 = load i32*, i32** %8, align 8
  store i32 128, i32* %85, align 4
  %86 = load i32, i32* @OK, align 4
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %4
  %88 = load i32, i32* @OK, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %84, %79, %44
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @write_data(%struct.net_device*, i8 zeroext) #1

declare dso_local zeroext i8 @read_status(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
