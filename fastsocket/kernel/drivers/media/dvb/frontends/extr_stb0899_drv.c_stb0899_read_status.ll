; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Delivery system DVB-S/DSS\00", align 1
@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"--------> FE_HAS_CARRIER | FE_HAS_LOCK\00", align 1
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@STB0899_PLPARM = common dso_local global i32 0, align 4
@VITCURPUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"--------> FE_HAS_VITERBI | FE_HAS_SYNC\00", align 1
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@STB0899_POSTPROC_GPIO_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Delivery system DVB-S2\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@DMD_STAT2 = common dso_local global i32 0, align 4
@UWP_LOCK = common dso_local global i32 0, align 4
@CSM_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\00", align 1
@STB0899_CFGPDELSTATUS1 = common dso_local global i32 0, align 4
@CFGPDELSTATUS_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\00", align 1
@CONTINUOUS_STREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\00", align 1
@ACCEPTED_STREAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %10, align 8
  store %struct.stb0899_state* %11, %struct.stb0899_state** %6, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 2
  store %struct.stb0899_internal* %13, %struct.stb0899_internal** %7, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %159 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %73
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %20 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FE_DEBUG, align 4
  %23 = call i32 @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %25 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %18
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %30 = load i32, i32* @STB0899_VSTATUS, align 4
  %31 = call i32 @stb0899_read_reg(%struct.stb0899_state* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @STB0899_GETFIELD(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %28
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %38 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FE_DEBUG, align 4
  %41 = call i32 @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FE_HAS_CARRIER, align 4
  %43 = load i32, i32* @FE_HAS_LOCK, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %49 = load i32, i32* @STB0899_PLPARM, align 4
  %50 = call i32 @stb0899_read_reg(%struct.stb0899_state* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @VITCURPUN, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @STB0899_GETFIELD(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %36
  %56 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %57 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FE_DEBUG, align 4
  %60 = call i32 @dprintk(i32 %58, i32 %59, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @FE_HAS_VITERBI, align 4
  %62 = load i32, i32* @FE_HAS_SYNC, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %68 = load i32, i32* @STB0899_POSTPROC_GPIO_LOCK, align 4
  %69 = call i32 @stb0899_postproc(%struct.stb0899_state* %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %55, %36
  br label %71

71:                                               ; preds = %70, %28
  br label %72

72:                                               ; preds = %71, %18
  br label %167

73:                                               ; preds = %2
  %74 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %75 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FE_DEBUG, align 4
  %78 = call i32 @dprintk(i32 %76, i32 %77, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %80 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %158

83:                                               ; preds = %73
  %84 = load i32, i32* @STB0899_S2DEMOD, align 4
  %85 = load i32, i32* @DMD_STAT2, align 4
  %86 = call i32 @STB0899_READ_S2REG(i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @UWP_LOCK, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @STB0899_GETFIELD(i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %157

91:                                               ; preds = %83
  %92 = load i32, i32* @CSM_LOCK, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @STB0899_GETFIELD(i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %157

96:                                               ; preds = %91
  %97 = load i32, i32* @FE_HAS_CARRIER, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %102 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FE_DEBUG, align 4
  %105 = call i32 @dprintk(i32 %103, i32 %104, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %107 = load i32, i32* @STB0899_CFGPDELSTATUS1, align 4
  %108 = call i32 @stb0899_read_reg(%struct.stb0899_state* %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @CFGPDELSTATUS_LOCK, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @STB0899_GETFIELD(i32 %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %96
  %114 = load i32, i32* @FE_HAS_LOCK, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %119 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FE_DEBUG, align 4
  %122 = call i32 @dprintk(i32 %120, i32 %121, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %113, %96
  %124 = load i32, i32* @CONTINUOUS_STREAM, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @STB0899_GETFIELD(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* @FE_HAS_VITERBI, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %134 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FE_DEBUG, align 4
  %137 = call i32 @dprintk(i32 %135, i32 %136, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %128, %123
  %139 = load i32, i32* @ACCEPTED_STREAM, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @STB0899_GETFIELD(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i32, i32* @FE_HAS_SYNC, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %149 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @FE_DEBUG, align 4
  %152 = call i32 @dprintk(i32 %150, i32 %151, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %153 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %154 = load i32, i32* @STB0899_POSTPROC_GPIO_LOCK, align 4
  %155 = call i32 @stb0899_postproc(%struct.stb0899_state* %153, i32 %154, i32 1)
  br label %156

156:                                              ; preds = %143, %138
  br label %157

157:                                              ; preds = %156, %91, %83
  br label %158

158:                                              ; preds = %157, %73
  br label %167

159:                                              ; preds = %2
  %160 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %161 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @FE_DEBUG, align 4
  %164 = call i32 @dprintk(i32 %162, i32 %163, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %168

167:                                              ; preds = %158, %72
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %159
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_postproc(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
