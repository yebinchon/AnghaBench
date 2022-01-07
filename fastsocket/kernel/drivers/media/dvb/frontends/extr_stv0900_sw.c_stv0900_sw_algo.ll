; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_sw_algo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_sw_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@CORRELABS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HEADER_MODE = common dso_local global i32 0, align 4
@STV0900_DVBS2_FOUND = common dso_local global i32 0, align 4
@FLYWHEEL_CPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32)* @stv0900_sw_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_sw_algo(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @stv0900_get_sw_loop_params(%struct.stv0900_internal* %14, i32* %9, i32* %10, i32* %12, i32 %15)
  %17 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %18 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %61 [
    i32 129, label %24
    i32 130, label %24
    i32 128, label %42
    i32 131, label %60
  ]

24:                                               ; preds = %2, %2
  %25 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %26 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 32
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %31 = load i32, i32* @CARFREQ, align 4
  %32 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %30, i32 %31, i32 59)
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %35 = load i32, i32* @CARFREQ, align 4
  %36 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %34, i32 %35, i32 239)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %39 = load i32, i32* @DMDCFGMD, align 4
  %40 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %38, i32 %39, i32 73)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %7, align 4
  br label %85

42:                                               ; preds = %2
  %43 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %44 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 32
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %49 = load i32, i32* @CORRELABS, align 4
  %50 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %48, i32 %49, i32 121)
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %53 = load i32, i32* @CORRELABS, align 4
  %54 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %52, i32 %53, i32 104)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %57 = load i32, i32* @DMDCFGMD, align 4
  %58 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %56, i32 %57, i32 137)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %7, align 4
  br label %85

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %2, %60
  %62 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %63 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 32
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %68 = load i32, i32* @CARFREQ, align 4
  %69 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %67, i32 %68, i32 59)
  %70 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %71 = load i32, i32* @CORRELABS, align 4
  %72 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %70, i32 %71, i32 121)
  br label %80

73:                                               ; preds = %61
  %74 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %75 = load i32, i32* @CARFREQ, align 4
  %76 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %74, i32 %75, i32 239)
  %77 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %78 = load i32, i32* @CORRELABS, align 4
  %79 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %77, i32 %78, i32 104)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %82 = load i32, i32* @DMDCFGMD, align 4
  %83 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %81, i32 %82, i32 201)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %55, %37
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %191, %85
  %87 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @stv0900_search_carr_sw_loop(%struct.stv0900_internal* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @stv0900_check_signal_presence(%struct.stv0900_internal* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %179

109:                                              ; preds = %106, %102, %86
  %110 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %111 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 32
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %116 = load i32, i32* @CARFREQ, align 4
  %117 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %115, i32 %116, i32 73)
  %118 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %119 = load i32, i32* @CORRELABS, align 4
  %120 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %118, i32 %119, i32 158)
  br label %128

121:                                              ; preds = %109
  %122 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %123 = load i32, i32* @CARFREQ, align 4
  %124 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %122, i32 %123, i32 237)
  %125 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %126 = load i32, i32* @CORRELABS, align 4
  %127 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %125, i32 %126, i32 136)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %130 = load i32, i32* @HEADER_MODE, align 4
  %131 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %129, i32 %130)
  %132 = load i32, i32* @STV0900_DVBS2_FOUND, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %178

134:                                              ; preds = %128
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @msleep(i32 %139)
  %141 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %142 = load i32, i32* @FLYWHEEL_CPT, align 4
  %143 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 13
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @msleep(i32 %147)
  %149 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %150 = load i32, i32* @FLYWHEEL_CPT, align 4
  %151 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 13
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %161 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %162, 32
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %166 = load i32, i32* @CORRELABS, align 4
  %167 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %165, i32 %166, i32 121)
  br label %172

168:                                              ; preds = %159
  %169 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %170 = load i32, i32* @CORRELABS, align 4
  %171 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %169, i32 %170, i32 104)
  br label %172

172:                                              ; preds = %168, %164
  %173 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %174 = load i32, i32* @DMDCFGMD, align 4
  %175 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %173, i32 %174, i32 137)
  br label %176

176:                                              ; preds = %172, %155
  br label %177

177:                                              ; preds = %176, %152
  br label %178

178:                                              ; preds = %177, %134, %128
  br label %179

179:                                              ; preds = %178, %106
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @FALSE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @FALSE, align 4
  %190 = icmp eq i32 %188, %189
  br label %191

191:                                              ; preds = %187, %184, %180
  %192 = phi i1 [ false, %184 ], [ false, %180 ], [ %190, %187 ]
  br i1 %192, label %86, label %193

193:                                              ; preds = %191
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @stv0900_get_sw_loop_params(%struct.stv0900_internal*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_search_carr_sw_loop(%struct.stv0900_internal*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stv0900_check_signal_presence(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
