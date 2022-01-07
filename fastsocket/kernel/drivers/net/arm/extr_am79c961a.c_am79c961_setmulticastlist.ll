; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_setmulticastlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_setmulticastlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list* }
%struct.dev_priv = type { i32 }

@MODE_PORT_10BT = common dso_local global i16 0, align 2
@IFF_PROMISC = common dso_local global i32 0, align 4
@MODE_PROMISC = common dso_local global i16 0, align 2
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i64 0, align 8
@CSR0_STOP = common dso_local global i16 0, align 2
@CTRL1 = common dso_local global i64 0, align 8
@CTRL1_SPND = common dso_local global i16 0, align 2
@LADRL = common dso_local global i64 0, align 8
@MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @am79c961_setmulticastlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_setmulticastlist(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x i16], align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dev_priv* %11, %struct.dev_priv** %3, align 8
  %12 = load i16, i16* @MODE_PORT_10BT, align 2
  store i16 %12, i16* %6, align 2
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i16, i16* @MODE_PROMISC, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %6, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %6, align 2
  br label %55

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFF_ALLMULTI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %35 = call i32 @memset(i16* %34, i32 255, i32 8)
  br label %54

36:                                               ; preds = %26
  %37 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %38 = call i32 @memset(i16* %37, i32 0, i32 8)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  %41 = load %struct.dev_mc_list*, %struct.dev_mc_list** %40, align 8
  store %struct.dev_mc_list* %41, %struct.dev_mc_list** %9, align 8
  br label %42

42:                                               ; preds = %49, %36
  %43 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %44 = icmp ne %struct.dev_mc_list* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %47 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %48 = call i32 @am79c961_mc_hash(%struct.dev_mc_list* %46, i16* %47)
  br label %49

49:                                               ; preds = %45
  %50 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %51 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %50, i32 0, i32 0
  %52 = load %struct.dev_mc_list*, %struct.dev_mc_list** %51, align 8
  store %struct.dev_mc_list* %52, %struct.dev_mc_list** %9, align 8
  br label %42

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %57 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @CSR0, align 8
  %64 = call zeroext i16 @read_rreg(i32 %62, i64 %63)
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @CSR0_STOP, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %65, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %55
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @CTRL1, align 8
  %76 = load i16, i16* @CTRL1_SPND, align 2
  %77 = call i32 @write_rreg(i32 %74, i64 %75, i16 zeroext %76)
  br label %78

78:                                               ; preds = %89, %71
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @CTRL1, align 8
  %83 = call zeroext i16 @read_rreg(i32 %81, i64 %82)
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* @CTRL1_SPND, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %91 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %90, i32 0, i32 0
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = call i32 (...) @nop()
  %95 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %96 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %55
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i32, i32* %7, align 4
  %103 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %104 = call i32 @ARRAY_SIZE(i16* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @LADRL, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = call i32 @write_rreg(i32 %109, i64 %113, i16 zeroext %117)
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @MODE, align 8
  %127 = load i16, i16* %6, align 2
  %128 = call i32 @write_rreg(i32 %125, i64 %126, i16 zeroext %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %122
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* @CTRL1, align 8
  %136 = call i32 @write_rreg(i32 %134, i64 %135, i16 zeroext 0)
  br label %137

137:                                              ; preds = %131, %122
  %138 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %139 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %138, i32 0, i32 0
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @am79c961_mc_hash(%struct.dev_mc_list*, i16*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @read_rreg(i32, i64) #1

declare dso_local i32 @write_rreg(i32, i64, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
