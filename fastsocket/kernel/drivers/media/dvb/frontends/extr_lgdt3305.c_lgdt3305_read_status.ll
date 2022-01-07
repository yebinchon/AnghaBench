; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3305_state* }
%struct.lgdt3305_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LGDT3305_GEN_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s%s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SIGNALEXIST \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"INLOCK \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SYNCLOCK \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NOFECERR \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SNRGOOD \00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@LGDT3304 = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lgdt3305_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lgdt3305_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %16, align 8
  store %struct.lgdt3305_state* %17, %struct.lgdt3305_state** %5, align 8
  %18 = load i32*, i32** %4, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %20 = load i32, i32* @LGDT3305_GEN_STATUS, align 4
  %21 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %19, i32 %20, i32* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @lg_fail(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %160

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 16
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 8
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @lg_dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %59, i8* %63, i8* %67, i8* %71)
  %73 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %74 = call i32 @lgdt3305_read_cr_lock_status(%struct.lgdt3305_state* %73, i32* %12)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @lg_fail(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %26
  br label %160

79:                                               ; preds = %26
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* @FE_HAS_CARRIER, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* @FE_HAS_VITERBI, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @FE_HAS_SYNC, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %113 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %156 [
    i32 130, label %115
    i32 129, label %115
    i32 128, label %147
  ]

115:                                              ; preds = %111, %111
  %116 = load i32, i32* @LGDT3304, align 4
  %117 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %118 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %116, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %126, %123, %115
  %132 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %133 = call i32 @lgdt3305_read_fec_lock_status(%struct.lgdt3305_state* %132, i32* %13)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i64 @lg_fail(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %160

138:                                              ; preds = %131
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @FE_HAS_LOCK, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %138
  br label %159

147:                                              ; preds = %111
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* @FE_HAS_LOCK, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %150, %147
  br label %159

156:                                              ; preds = %111
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %156, %155, %146
  br label %160

160:                                              ; preds = %159, %137, %78, %25
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg_dbg(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @lgdt3305_read_cr_lock_status(%struct.lgdt3305_state*, i32*) #1

declare dso_local i32 @lgdt3305_read_fec_lock_status(%struct.lgdt3305_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
