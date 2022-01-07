; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_agc_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_agc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i64, %struct.dibx000_agc_config*, %struct.TYPE_2__ }
%struct.dibx000_agc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.dibx000_agc_config* }

@.str = private unnamed_addr constant [49 x i8] c"no valid AGC configuration found for band 0x%02x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"WBD: ref: %d, sel: %d, active: %d, alpha: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_set_agc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_agc_config(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibx000_agc_config*, align 8
  %7 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dibx000_agc_config* null, %struct.dibx000_agc_config** %6, align 8
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %9 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 2
  %16 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %15, align 8
  %17 = icmp ne %struct.dibx000_agc_config* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %250

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %52, %19
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %34, i64 %36
  %38 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %45 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %47, i64 %49
  store %struct.dibx000_agc_config* %50, %struct.dibx000_agc_config** %6, align 8
  br label %55

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %23

55:                                               ; preds = %43, %23
  %56 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %57 = icmp eq %struct.dibx000_agc_config* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %250

63:                                               ; preds = %55
  %64 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %65, i32 0, i32 2
  store %struct.dibx000_agc_config* %64, %struct.dibx000_agc_config** %66, align 8
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %68 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %69 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dib8000_write_word(%struct.dib8000_state* %67, i32 76, i32 %70)
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %73 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %74 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dib8000_write_word(%struct.dib8000_state* %72, i32 77, i32 %75)
  %77 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %78 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %79 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dib8000_write_word(%struct.dib8000_state* %77, i32 78, i32 %80)
  %82 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %83 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %84 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 12
  %87 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %88 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = call i32 @dib8000_write_word(%struct.dib8000_state* %82, i32 101, i32 %90)
  %92 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %93 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %94 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 5
  %97 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %98 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = call i32 @dib8000_write_word(%struct.dib8000_state* %92, i32 102, i32 %100)
  %102 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %103 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %104 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 6
  %107 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %108 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = call i32 @dib8000_write_word(%struct.dib8000_state* %102, i32 103, i32 %110)
  %112 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %113 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %63
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %118 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  br label %125

120:                                              ; preds = %63
  %121 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %122 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i64 [ %119, %116 ], [ %124, %120 ]
  %127 = trunc i64 %126 to i32
  %128 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %129 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %132 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %131, i32 0, i32 12
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %138 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130, i32 %136, i32 %139)
  %141 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %142 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %125
  %146 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %147 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %148 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @dib8000_write_word(%struct.dib8000_state* %146, i32 106, i32 %150)
  br label %158

152:                                              ; preds = %125
  %153 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %154 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %155 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dib8000_write_word(%struct.dib8000_state* %153, i32 106, i32 %156)
  br label %158

158:                                              ; preds = %152, %145
  %159 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %160 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %161 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %160, i32 0, i32 13
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 9
  %164 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %165 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = or i32 %163, %167
  %169 = call i32 @dib8000_write_word(%struct.dib8000_state* %159, i32 107, i32 %168)
  %170 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %171 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %172 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dib8000_write_word(%struct.dib8000_state* %170, i32 108, i32 %173)
  %175 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %176 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %177 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %176, i32 0, i32 15
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dib8000_write_word(%struct.dib8000_state* %175, i32 109, i32 %178)
  %180 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %181 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %182 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %181, i32 0, i32 16
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dib8000_write_word(%struct.dib8000_state* %180, i32 110, i32 %183)
  %185 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %186 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %187 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %186, i32 0, i32 17
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dib8000_write_word(%struct.dib8000_state* %185, i32 111, i32 %188)
  %190 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %191 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %192 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 8
  %195 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %196 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %195, i32 0, i32 19
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %194, %197
  %199 = call i32 @dib8000_write_word(%struct.dib8000_state* %190, i32 112, i32 %198)
  %200 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %201 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %202 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %201, i32 0, i32 20
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 8
  %205 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %206 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %205, i32 0, i32 21
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %204, %207
  %209 = call i32 @dib8000_write_word(%struct.dib8000_state* %200, i32 113, i32 %208)
  %210 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %211 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %212 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %211, i32 0, i32 22
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 8
  %215 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %216 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %215, i32 0, i32 23
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %214, %217
  %219 = call i32 @dib8000_write_word(%struct.dib8000_state* %210, i32 114, i32 %218)
  %220 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %221 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %222 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %221, i32 0, i32 24
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 8
  %225 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %226 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %225, i32 0, i32 25
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %224, %227
  %229 = call i32 @dib8000_write_word(%struct.dib8000_state* %220, i32 115, i32 %228)
  %230 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %231 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %232 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %231, i32 0, i32 26
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @dib8000_write_word(%struct.dib8000_state* %230, i32 75, i32 %233)
  %235 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %236 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %237 = call i32 @dib8000_read_word(%struct.dib8000_state* %236, i32 923)
  %238 = and i32 %237, 65507
  %239 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %240 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %239, i32 0, i32 27
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 4
  %243 = or i32 %238, %242
  %244 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %245 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %244, i32 0, i32 11
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 2
  %248 = or i32 %243, %247
  %249 = call i32 @dib8000_write_word(%struct.dib8000_state* %235, i32 923, i32 %248)
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %158, %58, %18
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
