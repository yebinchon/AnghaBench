; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i64, %struct.dibx000_agc_config* }
%struct.dibx000_agc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib3000mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib3000mc_state*, align 8
  %4 = alloca %struct.dibx000_agc_config*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  store %struct.dib3000mc_state* %7, %struct.dib3000mc_state** %3, align 8
  %8 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %9 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  %12 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %11, align 8
  store %struct.dibx000_agc_config* %12, %struct.dibx000_agc_config** %4, align 8
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %14 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %13, i32 1027, i32 32768)
  %15 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %16 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %15, i32 1027, i32 0)
  %17 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %18 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %17, i32 140, i32 0)
  %19 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %20 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %19, i32 1031, i32 0)
  %21 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %22 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %29 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %28, i32 139, i32 0)
  %30 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %31 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %30, i32 141, i32 0)
  %32 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %33 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %32, i32 175, i32 2)
  %34 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %35 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %34, i32 1032, i32 0)
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %38 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %37, i32 139, i32 1)
  %39 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %40 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %39, i32 141, i32 0)
  %41 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %42 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %41, i32 175, i32 0)
  %43 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %44 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %43, i32 1032, i32 300)
  br label %45

45:                                               ; preds = %36, %27
  %46 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %47 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %46, i32 1033, i32 0)
  %48 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %49 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %48, i32 1037, i32 12592)
  %50 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %51 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %50, i32 33, i32 5)
  %52 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %53 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %52, i32 88, i32 1040)
  %54 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %55 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %54, i32 99, i32 544)
  %56 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %57 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %64 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %63, i32 111, i32 0)
  br label %68

65:                                               ; preds = %45
  %66 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %67 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %66, i32 111, i32 2)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %70 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %69, i32 50, i32 32768)
  %71 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %72 = call i32 @dib3000mc_setup_pwm_state(%struct.dib3000mc_state* %71)
  %73 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %74 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %73, i32 53, i32 135)
  %75 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %76 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %75, i32 54, i32 135)
  %77 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %78 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %79 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %77, i32 36, i32 %82)
  %84 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %85 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %86 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 13
  %91 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %92 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %95, 12
  %97 = or i32 %90, %96
  %98 = or i32 %97, 29
  %99 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %84, i32 37, i32 %98)
  %100 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %101 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %102 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %100, i32 38, i32 %105)
  %107 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %108 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %109 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %107, i32 39, i32 %112)
  %114 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %115 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %114, i32 40, i32 377)
  %116 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %117 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %116, i32 41, i32 1008)
  %118 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %119 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %120 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %118, i32 42, i32 %121)
  %123 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %124 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %125 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %123, i32 43, i32 %126)
  %128 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %129 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %130 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %128, i32 44, i32 %131)
  %133 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %134 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %135 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %133, i32 45, i32 %136)
  %138 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %139 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %140 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %144 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %142, %145
  %147 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %138, i32 46, i32 %146)
  %148 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %149 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %150 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 8
  %153 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %154 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %152, %155
  %157 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %148, i32 47, i32 %156)
  %158 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %159 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %160 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %164 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %162, %165
  %167 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %158, i32 48, i32 %166)
  %168 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %169 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %170 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %4, align 8
  %174 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %172, %175
  %177 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %168, i32 49, i32 %176)
  %178 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %179 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %178, i32 110, i32 3277)
  %180 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %181 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %180, i32 26, i32 26240)
  %182 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %183 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %182, i32 1, i32 4)
  %184 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %185 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %184, i32 2, i32 4)
  %186 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %187 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %186, i32 3, i32 4096)
  %188 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %189 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %188, i32 5, i32 1)
  %190 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %191 = call i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %190, i32 8000)
  %192 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %193 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %192, i32 4, i32 2068)
  %194 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %195 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %194, i32 21, i32 868)
  %196 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %197 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %196, i32 22, i32 17981)
  %198 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %199 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %198, i32 120, i32 8207)
  %200 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %201 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %200, i32 134, i32 0)
  %202 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %203 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %202, i32 195, i32 16)
  %204 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %205 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %204, i32 180, i32 12272)
  %206 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %207 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %208 = call i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %206, i32 0, i32 %207)
  %209 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %210 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %211 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %209, i32 %210)
  %212 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %213 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %212, i32 769, i32 128)
  ret i32 0
}

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_setup_pwm_state(%struct.dib3000mc_state*) #1

declare dso_local i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
