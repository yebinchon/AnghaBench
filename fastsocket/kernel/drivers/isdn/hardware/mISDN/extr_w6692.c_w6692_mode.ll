; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_w6692_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_w6692_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.w6692_hw* }
%struct.w6692_hw = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: B%d protocol %x-->%x\0A\00", align 1
@pots = common dso_local global i32 0, align 4
@W_B_MODE_EPCM = common dso_local global i32 0, align 4
@W_B_MODE = common dso_local global i32 0, align 4
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@FLG_HDLC = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@W_B_MODE_MMS = common dso_local global i32 0, align 4
@W_B_EXIM = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_MODE_ITF = common dso_local global i32 0, align 4
@W_B_ADM1 = common dso_local global i32 0, align 4
@W_B_ADM2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: protocol %x not known\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_ch*, i32)* @w6692_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w6692_mode(%struct.w6692_ch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w6692_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.w6692_hw*, align 8
  store %struct.w6692_ch* %0, %struct.w6692_ch** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %8 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %9, align 8
  store %struct.w6692_hw* %10, %struct.w6692_hw** %6, align 8
  %11 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %12 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %15 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %19 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %128 [
    i32 128, label %25
    i32 129, label %70
    i32 130, label %96
  ]

25:                                               ; preds = %2
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %27 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @pots, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %34 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @W_B_MODE_EPCM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %41 = call i32 @disable_pots(%struct.w6692_ch* %40)
  br label %42

42:                                               ; preds = %39, %32, %25
  %43 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %44 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %46 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %45, i32 0, i32 1
  %47 = call i32 @mISDN_clear_bchannel(%struct.TYPE_2__* %46)
  %48 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %49 = load i32, i32* @W_B_MODE, align 4
  %50 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %51 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @WriteW6692B(%struct.w6692_ch* %48, i32 %49, i32 %52)
  %54 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %55 = load i32, i32* @W_B_CMDR, align 4
  %56 = load i32, i32* @W_B_CMDR_RRST, align 4
  %57 = load i32, i32* @W_B_CMDR_XRST, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @WriteW6692B(%struct.w6692_ch* %54, i32 %55, i32 %58)
  %60 = load i32, i32* @FLG_HDLC, align 4
  %61 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %62 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @test_and_clear_bit(i32 %60, i32* %63)
  %65 = load i32, i32* @FLG_TRANSPARENT, align 4
  %66 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %67 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = call i32 @test_and_clear_bit(i32 %65, i32* %68)
  br label %136

70:                                               ; preds = %2
  %71 = load i32, i32* @W_B_MODE_MMS, align 4
  %72 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %73 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %75 = load i32, i32* @W_B_MODE, align 4
  %76 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %77 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @WriteW6692B(%struct.w6692_ch* %74, i32 %75, i32 %78)
  %80 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %81 = load i32, i32* @W_B_EXIM, align 4
  %82 = call i32 @WriteW6692B(%struct.w6692_ch* %80, i32 %81, i32 0)
  %83 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %84 = load i32, i32* @W_B_CMDR, align 4
  %85 = load i32, i32* @W_B_CMDR_RRST, align 4
  %86 = load i32, i32* @W_B_CMDR_RACT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @W_B_CMDR_XRST, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @WriteW6692B(%struct.w6692_ch* %83, i32 %84, i32 %89)
  %91 = load i32, i32* @FLG_TRANSPARENT, align 4
  %92 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %93 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @test_and_set_bit(i32 %91, i32* %94)
  br label %136

96:                                               ; preds = %2
  %97 = load i32, i32* @W_B_MODE_ITF, align 4
  %98 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %99 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %101 = load i32, i32* @W_B_MODE, align 4
  %102 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %103 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @WriteW6692B(%struct.w6692_ch* %100, i32 %101, i32 %104)
  %106 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %107 = load i32, i32* @W_B_ADM1, align 4
  %108 = call i32 @WriteW6692B(%struct.w6692_ch* %106, i32 %107, i32 255)
  %109 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %110 = load i32, i32* @W_B_ADM2, align 4
  %111 = call i32 @WriteW6692B(%struct.w6692_ch* %109, i32 %110, i32 255)
  %112 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %113 = load i32, i32* @W_B_EXIM, align 4
  %114 = call i32 @WriteW6692B(%struct.w6692_ch* %112, i32 %113, i32 0)
  %115 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %116 = load i32, i32* @W_B_CMDR, align 4
  %117 = load i32, i32* @W_B_CMDR_RRST, align 4
  %118 = load i32, i32* @W_B_CMDR_RACT, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @W_B_CMDR_XRST, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @WriteW6692B(%struct.w6692_ch* %115, i32 %116, i32 %121)
  %123 = load i32, i32* @FLG_HDLC, align 4
  %124 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %125 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = call i32 @test_and_set_bit(i32 %123, i32* %126)
  br label %136

128:                                              ; preds = %2
  %129 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %130 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @ENOPROTOOPT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %141

136:                                              ; preds = %96, %70, %42
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.w6692_ch*, %struct.w6692_ch** %4, align 8
  %139 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %136, %128
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @disable_pots(%struct.w6692_ch*) #1

declare dso_local i32 @mISDN_clear_bchannel(%struct.TYPE_2__*) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
