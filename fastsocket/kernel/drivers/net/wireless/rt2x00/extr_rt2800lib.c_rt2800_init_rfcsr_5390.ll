; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5390.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT5390 = common dso_local global i32 0, align 4
@REV_RT5390F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_5390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_5390(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %3, i32 2)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %5, i32 1, i32 15)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 2, i32 128)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 3, i32 136)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 5, i32 16)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = load i32, i32* @RT5390, align 4
  %15 = load i32, i32* @REV_RT5390F, align 4
  %16 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 6, i32 224)
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 6, i32 160)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 7, i32 0)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 10, i32 83)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %29, i32 11, i32 74)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 12, i32 198)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 13, i32 159)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 14, i32 0)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 15, i32 0)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 16, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 18, i32 3)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 19, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 20, i32 0)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 21, i32 0)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 22, i32 32)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 23, i32 0)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 24, i32 0)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = load i32, i32* @RT5390, align 4
  %57 = load i32, i32* @REV_RT5390F, align 4
  %58 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %24
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %61, i32 25, i32 128)
  br label %66

63:                                               ; preds = %24
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 25, i32 192)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %67, i32 26, i32 0)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %69, i32 27, i32 9)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %71, i32 28, i32 0)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %73, i32 29, i32 16)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %75, i32 30, i32 0)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %77, i32 31, i32 128)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %79, i32 32, i32 128)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %81, i32 33, i32 0)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %83, i32 34, i32 7)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %85, i32 35, i32 18)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %87, i32 36, i32 0)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %89, i32 37, i32 8)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %91, i32 38, i32 133)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %93, i32 39, i32 27)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = load i32, i32* @RT5390, align 4
  %97 = load i32, i32* @REV_RT5390F, align 4
  %98 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %66
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %101, i32 40, i32 11)
  br label %106

103:                                              ; preds = %66
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %105 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %104, i32 40, i32 75)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %107, i32 41, i32 187)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %109, i32 42, i32 210)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %111, i32 43, i32 154)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %114 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %113, i32 44, i32 14)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %115, i32 45, i32 162)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = load i32, i32* @RT5390, align 4
  %119 = load i32, i32* @REV_RT5390F, align 4
  %120 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %117, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %123, i32 46, i32 115)
  br label %128

125:                                              ; preds = %106
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %127 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %126, i32 46, i32 123)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %129, i32 47, i32 0)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %131, i32 48, i32 16)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %133, i32 49, i32 148)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %136 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %135, i32 52, i32 56)
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = load i32, i32* @RT5390, align 4
  %139 = load i32, i32* @REV_RT5390F, align 4
  %140 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %137, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %128
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %143, i32 53, i32 0)
  br label %148

145:                                              ; preds = %128
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %147 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %146, i32 53, i32 132)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %150 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %149, i32 54, i32 120)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %152 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %151, i32 55, i32 68)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %154 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %153, i32 56, i32 34)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %155, i32 57, i32 128)
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %158 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %157, i32 58, i32 127)
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %160 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %159, i32 59, i32 99)
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %162 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %161, i32 60, i32 69)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = load i32, i32* @RT5390, align 4
  %165 = load i32, i32* @REV_RT5390F, align 4
  %166 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %163, i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %148
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %170 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %169, i32 61, i32 209)
  br label %174

171:                                              ; preds = %148
  %172 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %173 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %172, i32 61, i32 221)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %176 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %175, i32 62, i32 0)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %178 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %177, i32 63, i32 0)
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %180 = call i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev* %179)
  %181 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %182 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %181)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
