; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_init_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_init_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32**, i32 }
%struct.vc_map = type { i32, i64, i32, i32, %struct.atm_vcc*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VCF_TX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: can't get SCQ.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: no SCD available.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: class %d not supported.\0A\00", align 1
@VCF_IDLE = common dso_local global i32 0, align 4
@TCMDQ_START = common dso_local global i32 0, align 4
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*)* @idt77252_init_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_tx(%struct.idt77252_dev* %0, %struct.vc_map* %1, %struct.atm_vcc* %2, %struct.atm_qos* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca %struct.vc_map*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.atm_qos*, align 8
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %6, align 8
  store %struct.vc_map* %1, %struct.vc_map** %7, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %8, align 8
  store %struct.atm_qos* %3, %struct.atm_qos** %9, align 8
  %11 = load i32, i32* @VCF_TX, align 4
  %12 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %13 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %12, i32 0, i32 3
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %188

19:                                               ; preds = %4
  %20 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %21 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %31 [
    i32 132, label %24
    i32 131, label %27
    i32 130, label %30
    i32 133, label %30
  ]

24:                                               ; preds = %19
  %25 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %26 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %25, i32 0, i32 0
  store i32 129, i32* %26, align 8
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %29 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %28, i32 0, i32 0
  store i32 128, i32* %29, align 8
  br label %34

30:                                               ; preds = %19, %19
  br label %31

31:                                               ; preds = %19, %30
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %188

34:                                               ; preds = %27, %24
  %35 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %36 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %37 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_6__* @alloc_scq(%struct.idt77252_dev* %35, i32 %38)
  %40 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %41 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %40, i32 0, i32 5
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %43 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %34
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %48 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %188

53:                                               ; preds = %34
  %54 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %55 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %56 = call i64 @get_free_scd(%struct.idt77252_dev* %54, %struct.vc_map* %55)
  %57 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %58 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %57, i32 0, i32 5
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %62 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %53
  %68 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %69 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %73 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %74 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %73, i32 0, i32 5
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @free_scq(%struct.idt77252_dev* %72, %struct.TYPE_6__* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %188

79:                                               ; preds = %53
  %80 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %81 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %82 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %85 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @fill_scd(%struct.idt77252_dev* %80, %struct.TYPE_6__* %83, i32 %86)
  %88 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %89 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %90 = call i64 @set_tct(%struct.idt77252_dev* %88, %struct.vc_map* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %79
  %93 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %94 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %97 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %99)
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %102 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %105 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32*, i32** %103, i64 %106
  store i32* null, i32** %107, align 8
  %108 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %109 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %110 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %109, i32 0, i32 5
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @free_scq(%struct.idt77252_dev* %108, %struct.TYPE_6__* %111)
  %113 = load i32, i32* @EPROTONOSUPPORT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %188

115:                                              ; preds = %79
  %116 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %117 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %180 [
    i32 129, label %119
    i32 128, label %153
  ]

119:                                              ; preds = %115
  %120 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %121 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %122 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %123 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %124 = call i32 @idt77252_init_cbr(%struct.idt77252_dev* %120, %struct.vc_map* %121, %struct.atm_vcc* %122, %struct.atm_qos* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %119
  %128 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %129 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %132 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32*, i32** %130, i64 %133
  store i32* null, i32** %134, align 8
  %135 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %136 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %137 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = call i32 @free_scq(%struct.idt77252_dev* %135, %struct.TYPE_6__* %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %188

141:                                              ; preds = %119
  %142 = load i32, i32* @VCF_IDLE, align 4
  %143 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %144 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %143, i32 0, i32 3
  %145 = call i32 @clear_bit(i32 %142, i32* %144)
  %146 = load i32, i32* @TCMDQ_START, align 4
  %147 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %148 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %146, %149
  %151 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %152 = call i32 @writel(i32 %150, i32 %151)
  br label %180

153:                                              ; preds = %115
  %154 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %155 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %156 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %157 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %158 = call i32 @idt77252_init_ubr(%struct.idt77252_dev* %154, %struct.vc_map* %155, %struct.atm_vcc* %156, %struct.atm_qos* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %153
  %162 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %163 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %162, i32 0, i32 0
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %166 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  store i32* null, i32** %168, align 8
  %169 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %170 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %171 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %170, i32 0, i32 5
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = call i32 @free_scq(%struct.idt77252_dev* %169, %struct.TYPE_6__* %172)
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %5, align 4
  br label %188

175:                                              ; preds = %153
  %176 = load i32, i32* @VCF_IDLE, align 4
  %177 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %178 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %177, i32 0, i32 3
  %179 = call i32 @set_bit(i32 %176, i32* %178)
  br label %180

180:                                              ; preds = %115, %175, %141
  %181 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %182 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %183 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %182, i32 0, i32 4
  store %struct.atm_vcc* %181, %struct.atm_vcc** %183, align 8
  %184 = load i32, i32* @VCF_TX, align 4
  %185 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %186 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %185, i32 0, i32 3
  %187 = call i32 @set_bit(i32 %184, i32* %186)
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %180, %161, %127, %92, %67, %46, %31, %16
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @alloc_scq(%struct.idt77252_dev*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @get_free_scd(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i32 @free_scq(%struct.idt77252_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @fill_scd(%struct.idt77252_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @set_tct(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i32 @idt77252_init_cbr(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @idt77252_init_ubr(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
