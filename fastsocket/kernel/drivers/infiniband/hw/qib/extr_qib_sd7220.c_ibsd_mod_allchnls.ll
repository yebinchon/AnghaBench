; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_ibsd_mod_allchnls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_ibsd_mod_allchnls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@EPB_GLOBAL_WR = common dso_local global i32 0, align 4
@EPB_IB_QUAD0_CS_SHF = common dso_local global i32 0, align 4
@EPB_ADDR_SHF = common dso_local global i32 0, align 4
@IB_7220_SERDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pre-read failed: elt %d, addr 0x%X, chnl %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Global WR failed: elt %d, addr 0x%X, val %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Write failed: elt %d, addr 0x%X, chnl %d, val 0x%02X, mask 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32)* @ibsd_mod_allchnls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibsd_mod_allchnls(%struct.qib_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %4
  %21 = load i32, i32* @EPB_IB_QUAD0_CS_SHF, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EPB_ADDR_SHF, align 4
  %27 = add nsw i32 4, %26
  %28 = ashr i32 %25, %27
  %29 = and i32 %28, 7
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %64

32:                                               ; preds = %20
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %34 = load i32, i32* @IB_7220_SERDES, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %33, i32 %34, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EPB_ADDR_SHF, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, 15
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 9
  %51 = and i32 %50, 63
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.qib_devdata*, i8*, i32, i32, i32, ...) @qib_dev_err(%struct.qib_devdata* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %143

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %60, %61
  %63 = or i32 %59, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %55, %20
  %65 = load i32, i32* @EPB_ADDR_SHF, align 4
  %66 = add nsw i32 4, %65
  %67 = shl i32 7, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %72 = load i32, i32* @IB_7220_SERDES, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %71, i32 %72, i32 %73, i32 %74, i32 255)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %64
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EPB_ADDR_SHF, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, 15
  %85 = load i32, i32* %13, align 4
  %86 = ashr i32 %85, 9
  %87 = and i32 %86, 63
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.qib_devdata*, i8*, i32, i32, i32, ...) @qib_dev_err(%struct.qib_devdata* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %64
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %143

92:                                               ; preds = %4
  %93 = load i32, i32* @EPB_ADDR_SHF, align 4
  %94 = add nsw i32 4, %93
  %95 = shl i32 7, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @EPB_IB_QUAD0_CS_SHF, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %138, %92
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @EPB_ADDR_SHF, align 4
  %110 = add nsw i32 4, %109
  %111 = shl i32 %108, %110
  %112 = or i32 %107, %111
  store i32 %112, i32* %14, align 4
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %114 = load i32, i32* @IB_7220_SERDES, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %106
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @EPB_ADDR_SHF, align 4
  %124 = ashr i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, 15
  %128 = load i32, i32* %15, align 4
  %129 = ashr i32 %128, 9
  %130 = and i32 %129, 63
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 255
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 255
  %136 = call i32 (%struct.qib_devdata*, i8*, i32, i32, i32, ...) @qib_dev_err(%struct.qib_devdata* %125, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130, i32 %131, i32 %133, i32 %135)
  br label %141

137:                                              ; preds = %106
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %103

141:                                              ; preds = %121, %103
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %90, %42
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @qib_sd7220_reg_mod(%struct.qib_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
