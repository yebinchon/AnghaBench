; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_insn_write_ao.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_insn_write_ao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAC_READY = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@ICP_MULTI_INT_EN = common dso_local global i64 0, align 8
@ICP_MULTI_INT_STAT = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@ICP_MULTI_DAC_CSR = common dso_local global i64 0, align 8
@DAC_BSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"D/A insn timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ICP_MULTI_AO = common dso_local global i64 0, align 8
@DAC_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @icp_multi_insn_write_ao to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_multi_insn_write_ao(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @DAC_READY, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 %22, i64 %27)
  %29 = load i32, i32* @DAC_READY, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writew(i32 %36, i64 %41)
  %43 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CR_CHAN(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_RANGE(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 64719
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ICP_MULTI_DAC_CSR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writew(i32 %74, i64 %79)
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %188, %4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %191

87:                                               ; preds = %81
  store i32 100, i32* %13, align 4
  br label %88

88:                                               ; preds = %103, %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %13, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ICP_MULTI_DAC_CSR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readw(i64 %97)
  %99 = load i32, i32* @DAC_BSY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  br label %145

103:                                              ; preds = %92
  %104 = call i32 @udelay(i32 1)
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = call i32 @comedi_error(%struct.comedi_device* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @DAC_READY, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writew(i32 %116, i64 %121)
  %123 = load i32, i32* @DAC_READY, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writew(i32 %130, i64 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* @ETIME, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %193

145:                                              ; preds = %102
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ICP_MULTI_AO, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writew(i32 %150, i64 %155)
  %157 = load i32, i32* @DAC_ST, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ICP_MULTI_DAC_CSR, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writew(i32 %164, i64 %169)
  %171 = load i32, i32* @DAC_ST, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %145
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %81

191:                                              ; preds = %81
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %191, %105
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
