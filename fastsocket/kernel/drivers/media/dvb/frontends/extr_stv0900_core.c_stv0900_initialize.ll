; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32, i64, i32 }

@STV0900_INVALID_HANDLE = common dso_local global i32 0, align 4
@R0900_MID = common dso_local global i32 0, align 4
@STV0900_NO_ERROR = common dso_local global i64 0, align 8
@R0900_P1_DMDISTATE = common dso_local global i32 0, align 4
@R0900_P2_DMDISTATE = common dso_local global i32 0, align 4
@R0900_P1_TNRCFG = common dso_local global i32 0, align 4
@R0900_P2_TNRCFG = common dso_local global i32 0, align 4
@R0900_P1_I2CRPT = common dso_local global i32 0, align 4
@R0900_P2_I2CRPT = common dso_local global i32 0, align 4
@R0900_NCOARSE = common dso_local global i32 0, align 4
@R0900_I2CCFG = common dso_local global i32 0, align 4
@R0900_SYNTCTRL = common dso_local global i32 0, align 4
@STV0900_InitVal = common dso_local global i32** null, align 8
@R0900_TSGENERAL = common dso_local global i32 0, align 4
@STV0900_Cut20_AddOnVal = common dso_local global i32** null, align 8
@R0900_P1_FSPYCFG = common dso_local global i32 0, align 4
@R0900_P2_FSPYCFG = common dso_local global i32 0, align 4
@R0900_P1_PDELCTRL2 = common dso_local global i32 0, align 4
@R0900_P2_PDELCTRL2 = common dso_local global i32 0, align 4
@R0900_P1_PDELCTRL3 = common dso_local global i32 0, align 4
@R0900_P2_PDELCTRL3 = common dso_local global i32 0, align 4
@R0900_TSTRES0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*)* @stv0900_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_initialize(%struct.stv0900_internal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  %5 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %6 = icmp eq %struct.stv0900_internal* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @STV0900_INVALID_HANDLE, align 4
  store i32 %8, i32* %2, align 4
  br label %158

9:                                                ; preds = %1
  %10 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %11 = load i32, i32* @R0900_MID, align 4
  %12 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %10, i32 %11)
  %13 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %14 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STV0900_NO_ERROR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %22 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %158

25:                                               ; preds = %9
  %26 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %27 = load i32, i32* @R0900_P1_DMDISTATE, align 4
  %28 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %26, i32 %27, i32 92)
  %29 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %30 = load i32, i32* @R0900_P2_DMDISTATE, align 4
  %31 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %29, i32 %30, i32 92)
  %32 = call i32 @msleep(i32 3)
  %33 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %34 = load i32, i32* @R0900_P1_TNRCFG, align 4
  %35 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %33, i32 %34, i32 108)
  %36 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %37 = load i32, i32* @R0900_P2_TNRCFG, align 4
  %38 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %36, i32 %37, i32 111)
  %39 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %40 = load i32, i32* @R0900_P1_I2CRPT, align 4
  %41 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %39, i32 %40, i32 32)
  %42 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %43 = load i32, i32* @R0900_P2_I2CRPT, align 4
  %44 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %42, i32 %43, i32 32)
  %45 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %46 = load i32, i32* @R0900_NCOARSE, align 4
  %47 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %45, i32 %46, i32 19)
  %48 = call i32 @msleep(i32 3)
  %49 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %50 = load i32, i32* @R0900_I2CCFG, align 4
  %51 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %49, i32 %50, i32 8)
  %52 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %53 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %63 [
    i32 0, label %55
    i32 2, label %55
  ]

55:                                               ; preds = %25, %25
  %56 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %57 = load i32, i32* @R0900_SYNTCTRL, align 4
  %58 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %59 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 32, %60
  %62 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %56, i32 %57, i32 %61)
  br label %73

63:                                               ; preds = %25
  %64 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %65 = load i32, i32* @R0900_SYNTCTRL, align 4
  %66 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %64, i32 %65)
  %67 = and i32 2, %66
  store i32 %67, i32* %4, align 4
  %68 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %69 = load i32, i32* @R0900_SYNTCTRL, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 32, %70
  %72 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %63, %55
  %74 = call i32 @msleep(i32 3)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %95, %73
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 181
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %80 = load i32**, i32*** @STV0900_InitVal, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32**, i32*** @STV0900_InitVal, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %79, i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %78
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %75

98:                                               ; preds = %75
  %99 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %100 = load i32, i32* @R0900_MID, align 4
  %101 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %99, i32 %100)
  %102 = icmp sge i32 %101, 32
  br i1 %102, label %103, label %131

103:                                              ; preds = %98
  %104 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %105 = load i32, i32* @R0900_TSGENERAL, align 4
  %106 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %104, i32 %105, i32 12)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %127, %103
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 32
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %112 = load i32**, i32*** @STV0900_Cut20_AddOnVal, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32**, i32*** @STV0900_Cut20_AddOnVal, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %111, i32 %118, i32 %125)
  br label %127

127:                                              ; preds = %110
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %107

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130, %98
  %132 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %133 = load i32, i32* @R0900_P1_FSPYCFG, align 4
  %134 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %132, i32 %133, i32 108)
  %135 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %136 = load i32, i32* @R0900_P2_FSPYCFG, align 4
  %137 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %135, i32 %136, i32 108)
  %138 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %139 = load i32, i32* @R0900_P1_PDELCTRL2, align 4
  %140 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %138, i32 %139, i32 1)
  %141 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %142 = load i32, i32* @R0900_P2_PDELCTRL2, align 4
  %143 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %141, i32 %142, i32 33)
  %144 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %145 = load i32, i32* @R0900_P1_PDELCTRL3, align 4
  %146 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %144, i32 %145, i32 32)
  %147 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %148 = load i32, i32* @R0900_P2_PDELCTRL3, align 4
  %149 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %147, i32 %148, i32 32)
  %150 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %151 = load i32, i32* @R0900_TSTRES0, align 4
  %152 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %150, i32 %151, i32 128)
  %153 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %154 = load i32, i32* @R0900_TSTRES0, align 4
  %155 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %153, i32 %154, i32 0)
  %156 = load i64, i64* @STV0900_NO_ERROR, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %131, %20, %7
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
