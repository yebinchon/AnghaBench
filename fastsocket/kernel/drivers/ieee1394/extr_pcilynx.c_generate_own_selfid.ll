; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_generate_own_selfid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_generate_own_selfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i8, i32 }
%struct.hpsb_host = type { i32 }

@hpsb_disable_irm = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"generated own selfid 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.ti_lynx*, %struct.hpsb_host*)* @generate_own_selfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @generate_own_selfid(%struct.ti_lynx* %0, %struct.hpsb_host* %1) #0 {
  %3 = alloca %struct.ti_lynx*, align 8
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.ti_lynx* %0, %struct.ti_lynx** %3, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %4, align 8
  %8 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %9 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call signext i8 @get_phy_reg(%struct.ti_lynx* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %12

25:                                               ; preds = %12
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 252
  %30 = shl i32 %29, 22
  %31 = or i32 -2143289344, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 63
  %37 = shl i32 %36, 16
  %38 = load i8, i8* %5, align 1
  %39 = sext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 192
  %46 = shl i32 %45, 8
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %5, align 1
  %51 = load i32, i32* @hpsb_disable_irm, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %25
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 6
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 11
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %5, align 1
  br label %63

63:                                               ; preds = %53, %25
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 6
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 16
  %68 = ashr i32 %67, 3
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %5, align 1
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %117, %63
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 15
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 3, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 3, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 8
  %97 = or i32 %96, 16
  %98 = ashr i32 %97, 3
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 2
  %101 = sub nsw i32 6, %100
  %102 = shl i32 %98, %101
  %103 = load i8, i8* %5, align 1
  %104 = sext i8 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %5, align 1
  br label %116

107:                                              ; preds = %80
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 %108, 2
  %110 = sub nsw i32 6, %109
  %111 = shl i32 1, %110
  %112 = load i8, i8* %5, align 1
  %113 = sext i8 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %5, align 1
  br label %116

116:                                              ; preds = %107, %89
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %73

120:                                              ; preds = %73
  %121 = call i32 @cpu_to_be32s(i8* %5)
  %122 = load i32, i32* @KERN_DEBUG, align 4
  %123 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %124 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8, i8* %5, align 1
  %127 = call i32 @PRINT(i32 %122, i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 signext %126)
  %128 = load i8, i8* %5, align 1
  ret i8 %128
}

declare dso_local signext i8 @get_phy_reg(%struct.ti_lynx*, i32) #1

declare dso_local i32 @cpu_to_be32s(i8*) #1

declare dso_local i32 @PRINT(i32, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
