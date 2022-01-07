; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mc44s803.c_mc44s803_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mc44s803.c_mc44s803_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mc44s803_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mc44s803_priv = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@MC44S803_OSC = common dso_local global i32 0, align 4
@MC44S803_IF1 = common dso_local global i32 0, align 4
@MC44S803_IF2 = common dso_local global i32 0, align 4
@MC44S803_REG_REFDIV = common dso_local global i32 0, align 4
@MC44S803_ADDR = common dso_local global i32 0, align 4
@MC44S803_R1 = common dso_local global i32 0, align 4
@MC44S803_R2 = common dso_local global i32 0, align 4
@MC44S803_REFBUF_EN = common dso_local global i32 0, align 4
@MC44S803_REG_LO1 = common dso_local global i32 0, align 4
@MC44S803_LO1 = common dso_local global i32 0, align 4
@MC44S803_REG_LO2 = common dso_local global i32 0, align 4
@MC44S803_LO2 = common dso_local global i32 0, align 4
@MC44S803_REG_DIGTUNE = common dso_local global i32 0, align 4
@MC44S803_DA = common dso_local global i32 0, align 4
@MC44S803_LO_REF = common dso_local global i32 0, align 4
@MC44S803_AT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"I/O Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mc44s803_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc44s803_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.mc44s803_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %17, align 8
  store %struct.mc44s803_priv* %18, %struct.mc44s803_priv** %6, align 8
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MC44S803_OSC, align 4
  %25 = sdiv i32 %24, 1000000
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @MC44S803_OSC, align 4
  %27 = sdiv i32 %26, 100000
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MC44S803_IF1, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 500000
  %34 = sdiv i32 %33, 1000000
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @MC44S803_OSC, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 60, %40
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, 2
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @MC44S803_IF2, align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %54, 50000
  %56 = sdiv i32 %55, 100000
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 60, %57
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 2
  %61 = add nsw i32 %58, %60
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %65 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %2
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %72, align 8
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %75 = bitcast %struct.dvb_frontend* %74 to %struct.dvb_frontend.0*
  %76 = call i32 %73(%struct.dvb_frontend.0* %75, i32 1)
  br label %77

77:                                               ; preds = %69, %2
  %78 = load i32, i32* @MC44S803_REG_REFDIV, align 4
  %79 = load i32, i32* @MC44S803_ADDR, align 4
  %80 = call i32 @MC44S803_REG_SM(i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @MC44S803_R1, align 4
  %84 = call i32 @MC44S803_REG_SM(i32 %82, i32 %83)
  %85 = or i32 %80, %84
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @MC44S803_R2, align 4
  %89 = call i32 @MC44S803_REG_SM(i32 %87, i32 %88)
  %90 = or i32 %85, %89
  %91 = load i32, i32* @MC44S803_REFBUF_EN, align 4
  %92 = call i32 @MC44S803_REG_SM(i32 1, i32 %91)
  %93 = or i32 %90, %92
  store i32 %93, i32* %14, align 4
  %94 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %77
  br label %185

100:                                              ; preds = %77
  %101 = load i32, i32* @MC44S803_REG_LO1, align 4
  %102 = load i32, i32* @MC44S803_ADDR, align 4
  %103 = call i32 @MC44S803_REG_SM(i32 %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 2
  %106 = load i32, i32* @MC44S803_LO1, align 4
  %107 = call i32 @MC44S803_REG_SM(i32 %105, i32 %106)
  %108 = or i32 %103, %107
  store i32 %108, i32* %14, align 4
  %109 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %109, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %185

115:                                              ; preds = %100
  %116 = load i32, i32* @MC44S803_REG_LO2, align 4
  %117 = load i32, i32* @MC44S803_ADDR, align 4
  %118 = call i32 @MC44S803_REG_SM(i32 %116, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 2
  %121 = load i32, i32* @MC44S803_LO2, align 4
  %122 = call i32 @MC44S803_REG_SM(i32 %120, i32 %121)
  %123 = or i32 %118, %122
  store i32 %123, i32* %14, align 4
  %124 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %124, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %185

130:                                              ; preds = %115
  %131 = load i32, i32* @MC44S803_REG_DIGTUNE, align 4
  %132 = load i32, i32* @MC44S803_ADDR, align 4
  %133 = call i32 @MC44S803_REG_SM(i32 %131, i32 %132)
  %134 = load i32, i32* @MC44S803_DA, align 4
  %135 = call i32 @MC44S803_REG_SM(i32 1, i32 %134)
  %136 = or i32 %133, %135
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @MC44S803_LO_REF, align 4
  %139 = call i32 @MC44S803_REG_SM(i32 %137, i32 %138)
  %140 = or i32 %136, %139
  %141 = load i32, i32* @MC44S803_AT, align 4
  %142 = call i32 @MC44S803_REG_SM(i32 1, i32 %141)
  %143 = or i32 %140, %142
  store i32 %143, i32* %14, align 4
  %144 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %144, i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %185

150:                                              ; preds = %130
  %151 = load i32, i32* @MC44S803_REG_DIGTUNE, align 4
  %152 = load i32, i32* @MC44S803_ADDR, align 4
  %153 = call i32 @MC44S803_REG_SM(i32 %151, i32 %152)
  %154 = load i32, i32* @MC44S803_DA, align 4
  %155 = call i32 @MC44S803_REG_SM(i32 2, i32 %154)
  %156 = or i32 %153, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @MC44S803_LO_REF, align 4
  %159 = call i32 @MC44S803_REG_SM(i32 %157, i32 %158)
  %160 = or i32 %156, %159
  %161 = load i32, i32* @MC44S803_AT, align 4
  %162 = call i32 @MC44S803_REG_SM(i32 1, i32 %161)
  %163 = or i32 %160, %162
  store i32 %163, i32* %14, align 4
  %164 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %6, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %164, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %150
  br label %185

170:                                              ; preds = %150
  %171 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %172 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %173, align 8
  %175 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %178 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %179, align 8
  %181 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %182 = bitcast %struct.dvb_frontend* %181 to %struct.dvb_frontend.0*
  %183 = call i32 %180(%struct.dvb_frontend.0* %182, i32 0)
  br label %184

184:                                              ; preds = %176, %170
  store i32 0, i32* %3, align 4
  br label %203

185:                                              ; preds = %169, %149, %129, %114, %99
  %186 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %187 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %188, align 8
  %190 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %193 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %194, align 8
  %196 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %197 = bitcast %struct.dvb_frontend* %196 to %struct.dvb_frontend.0*
  %198 = call i32 %195(%struct.dvb_frontend.0* %197, i32 0)
  br label %199

199:                                              ; preds = %191, %185
  %200 = load i32, i32* @KERN_WARNING, align 4
  %201 = call i32 @mc_printk(i32 %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %202 = load i32, i32* %15, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %199, %184
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @MC44S803_REG_SM(i32, i32) #1

declare dso_local i32 @mc44s803_writereg(%struct.mc44s803_priv*, i32) #1

declare dso_local i32 @mc_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
