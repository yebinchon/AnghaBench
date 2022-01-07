; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_5592.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_5592.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BBP105_MLD = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@BBP152_RX_DEFAULT_ANT = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@REV_RT5592C = common dso_local global i32 0, align 4
@BBP254_BIT7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_5592 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_5592(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_init_bbp_early(%struct.rt2x00_dev* %7)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %9, i32 105, i32* %6)
  %11 = load i32, i32* @BBP105_MLD, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i32 @rt2x00_set_field8(i32* %6, i32 %11, i32 %17)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %19, i32 105, i32 %20)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %24, i32 20, i32 6)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %26, i32 31, i32 8)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %28, i32 65, i32 44)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %30, i32 68, i32 221)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %32, i32 69, i32 26)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %34, i32 70, i32 5)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %36, i32 73, i32 19)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %38, i32 74, i32 15)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %40, i32 75, i32 79)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 76, i32 40)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %44, i32 77, i32 89)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %46, i32 84, i32 154)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %48, i32 86, i32 56)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %50, i32 88, i32 144)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 91, i32 4)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %54, i32 92, i32 2)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %56, i32 95, i32 154)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %58, i32 98, i32 18)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %60, i32 103, i32 192)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %62, i32 104, i32 146)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %64, i32 105, i32 60)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %66, i32 106, i32 53)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %68, i32 128, i32 18)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %70, i32 134, i32 208)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %72, i32 135, i32 246)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %74, i32 137, i32 15)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_init_bbp_5592_glrt(%struct.rt2x00_dev* %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %82 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %80, i32 %81, i32* %5)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %85 = call i32 @rt2x00_get_field16(i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 3
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %3, align 4
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %90, i32 152, i32* %6)
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %1
  %95 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %6, i32 %95, i32 1)
  br label %100

97:                                               ; preds = %1
  %98 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %99 = call i32 @rt2x00_set_field8(i32* %6, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %101, i32 152, i32 %102)
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %105 = load i32, i32* @RT5592, align 4
  %106 = load i32, i32* @REV_RT5592C, align 4
  %107 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %100
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %111 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %110, i32 254, i32* %6)
  %112 = load i32, i32* @BBP254_BIT7, align 4
  %113 = call i32 @rt2x00_set_field8(i32* %6, i32 %112, i32 1)
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %114, i32 254, i32 %115)
  br label %117

117:                                              ; preds = %109, %100
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %119 = call i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev* %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %121 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %120, i32 84, i32 25)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %123 = load i32, i32* @RT5592, align 4
  %124 = load i32, i32* @REV_RT5592C, align 4
  %125 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %129 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %128, i32 103, i32 192)
  br label %130

130:                                              ; preds = %127, %117
  ret void
}

declare dso_local i32 @rt2800_init_bbp_early(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_5592_glrt(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
