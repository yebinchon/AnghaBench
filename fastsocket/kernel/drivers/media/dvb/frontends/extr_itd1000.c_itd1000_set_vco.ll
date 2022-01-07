; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_vco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.itd1000_state = type { i32 }

@GVBB_I2C = common dso_local global i32 0, align 4
@VCO_CHP1_I2C = common dso_local global i32 0, align 4
@itd1000_vcorg = common dso_local global %struct.TYPE_3__* null, align 8
@PLLLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VCO: %dkHz: %d -> ADCOUT: %d %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.itd1000_state*, i64)* @itd1000_set_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd1000_set_vco(%struct.itd1000_state* %0, i64 %1) #0 {
  %3 = alloca %struct.itd1000_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.itd1000_state* %0, %struct.itd1000_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %10 = load i32, i32* @GVBB_I2C, align 4
  %11 = call i32 @itd1000_read_reg(%struct.itd1000_state* %9, i32 %10)
  %12 = and i32 %11, 191
  store i32 %12, i32* %6, align 4
  %13 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %14 = load i32, i32* @VCO_CHP1_I2C, align 4
  %15 = call i32 @itd1000_read_reg(%struct.itd1000_state* %13, i32 %14)
  %16 = and i32 %15, 15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %18 = load i32, i32* @GVBB_I2C, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 64
  %21 = call i32 @itd1000_write_reg(%struct.itd1000_state* %17, i32 %18, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %134, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %137

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %28, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %27
  %37 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %38 = load i32, i32* @VCO_CHP1_I2C, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 4
  %47 = or i32 %39, %46
  %48 = call i32 @itd1000_write_reg(%struct.itd1000_state* %37, i32 %38, i32 %47)
  %49 = call i32 @msleep(i32 1)
  %50 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %51 = load i32, i32* @PLLLOCK, align 4
  %52 = call i32 @itd1000_read_reg(%struct.itd1000_state* %50, i32 %51)
  %53 = and i32 %52, 15
  store i32 %53, i32* %8, align 4
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @deb(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 13
  br i1 %65, label %66, label %97

66:                                               ; preds = %36
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 7
  br i1 %73, label %96, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 15
  br i1 %81, label %96, label %82

82:                                               ; preds = %74
  %83 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %84 = load i32, i32* @VCO_CHP1_I2C, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  %93 = shl i32 %92, 4
  %94 = or i32 %85, %93
  %95 = call i32 @itd1000_write_reg(%struct.itd1000_state* %83, i32 %84, i32 %94)
  br label %96

96:                                               ; preds = %82, %74, %66
  br label %132

97:                                               ; preds = %36
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %130, label %108

108:                                              ; preds = %100
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 9
  br i1 %115, label %130, label %116

116:                                              ; preds = %108
  %117 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %118 = load i32, i32* @VCO_CHP1_I2C, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_vcorg, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 4
  %128 = or i32 %119, %127
  %129 = call i32 @itd1000_write_reg(%struct.itd1000_state* %117, i32 %118, i32 %128)
  br label %130

130:                                              ; preds = %116, %108, %100
  br label %131

131:                                              ; preds = %130, %97
  br label %132

132:                                              ; preds = %131, %96
  br label %137

133:                                              ; preds = %27
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %22

137:                                              ; preds = %132, %22
  ret void
}

declare dso_local i32 @itd1000_read_reg(%struct.itd1000_state*, i32) #1

declare dso_local i32 @itd1000_write_reg(%struct.itd1000_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @deb(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
