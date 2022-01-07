; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_speed_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_speed_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { i32, i32, i32 }

@mcs_speed_set = common dso_local global i32* null, align 8
@MCS_RESV_REG = common dso_local global i32 0, align 4
@MCS_IRINTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to change speed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MCS_MODE_REG = common dso_local global i32 0, align 4
@MCS_FIR = common dso_local global i32 0, align 4
@MCS_MINRXPW_REG = common dso_local global i32 0, align 4
@MCS_SPEED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown transceiver type: %d\0A\00", align 1
@MCS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcs_cb*)* @mcs_speed_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_speed_change(%struct.mcs_cb* %0) #0 {
  %2 = alloca %struct.mcs_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcs_cb* %0, %struct.mcs_cb** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** @mcs_speed_set, align 8
  %9 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %10 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 15
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %19 = load i32, i32* @MCS_RESV_REG, align 4
  %20 = call i32 @mcs_get_reg(%struct.mcs_cb* %18, i32 %19, i32* %7)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = icmp slt i32 %22, 100
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MCS_IRINTX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ false, %21 ], [ %29, %25 ]
  br i1 %31, label %17, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 100
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %165

39:                                               ; preds = %32
  %40 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %41 = load i32, i32* @MCS_MODE_REG, align 4
  %42 = call i32 @mcs_get_reg(%struct.mcs_cb* %40, i32 %41, i32* %7)
  %43 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %44 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 115200
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load i32, i32* @MCS_FIR, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %53 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 115200
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  br i1 %55, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %59 = load i32, i32* @MCS_MINRXPW_REG, align 4
  %60 = call i32 @mcs_set_reg(%struct.mcs_cb* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %47
  br label %105

62:                                               ; preds = %39
  %63 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %64 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 1152000
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load i32, i32* @MCS_FIR, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %73 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 576000
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %78 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1152000
  br label %81

81:                                               ; preds = %76, %67
  %82 = phi i1 [ true, %67 ], [ %80, %76 ]
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  br i1 %83, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %87 = load i32, i32* @MCS_MINRXPW_REG, align 4
  %88 = call i32 @mcs_set_reg(%struct.mcs_cb* %86, i32 %87, i32 5)
  br label %89

89:                                               ; preds = %85, %81
  br label %104

90:                                               ; preds = %62
  %91 = load i32, i32* @MCS_FIR, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %95 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4000000
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br i1 %97, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %101 = load i32, i32* @MCS_MINRXPW_REG, align 4
  %102 = call i32 @mcs_set_reg(%struct.mcs_cb* %100, i32 %101, i32 5)
  br label %103

103:                                              ; preds = %99, %90
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %61
  %106 = load i32, i32* @MCS_SPEED_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %114 = load i32, i32* @MCS_MODE_REG, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @mcs_set_reg(%struct.mcs_cb* %113, i32 %114, i32 %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %165

121:                                              ; preds = %105
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %126 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %137 [
    i32 128, label %128
    i32 129, label %131
    i32 130, label %134
  ]

128:                                              ; preds = %124
  %129 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %130 = call i32 @mcs_setup_transceiver_vishay(%struct.mcs_cb* %129)
  store i32 %130, i32* %3, align 4
  br label %142

131:                                              ; preds = %124
  %132 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %133 = call i32 @mcs_setup_transceiver_sharp(%struct.mcs_cb* %132)
  store i32 %133, i32* %3, align 4
  br label %142

134:                                              ; preds = %124
  %135 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %136 = call i32 @mcs_setup_transceiver_agilent(%struct.mcs_cb* %135)
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  %138 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %139 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @IRDA_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %134, %131, %128
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32, i32* %3, align 4
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %165

148:                                              ; preds = %143
  %149 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %150 = load i32, i32* @MCS_MODE_REG, align 4
  %151 = call i32 @mcs_get_reg(%struct.mcs_cb* %149, i32 %150, i32* %7)
  %152 = load i32, i32* @MCS_RESET, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %157 = load i32, i32* @MCS_MODE_REG, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @mcs_set_reg(%struct.mcs_cb* %156, i32 %157, i32 %158)
  store i32 %159, i32* %3, align 4
  %160 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %161 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %164 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %148, %147, %120, %35
  %166 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %167 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @mcs_get_reg(%struct.mcs_cb*, i32, i32*) #1

declare dso_local i32 @IRDA_ERROR(i8*) #1

declare dso_local i32 @mcs_set_reg(%struct.mcs_cb*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mcs_setup_transceiver_vishay(%struct.mcs_cb*) #1

declare dso_local i32 @mcs_setup_transceiver_sharp(%struct.mcs_cb*) #1

declare dso_local i32 @mcs_setup_transceiver_agilent(%struct.mcs_cb*) #1

declare dso_local i32 @IRDA_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
