; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_match_to_this_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_match_to_this_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"(range %d) SystemAddr= 0x%llx Limit=0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Huh? Address is in the MMIO hole: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"   Normalized DCT addr: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32*, i32*)* @f1x_match_to_this_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_match_to_this_node(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd64_pvt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dram_dst_node(%struct.amd64_pvt* %22, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dram_intlv_en(%struct.amd64_pvt* %25, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dram_intlv_sel(%struct.amd64_pvt* %28, i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @get_dram_limit(%struct.amd64_pvt* %33, i32 %34)
  %36 = call i32 (i8*, i32, ...) @debugf1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %35)
  %37 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %38 = call i64 @dhar_valid(%struct.amd64_pvt* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %5
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %42 = call i32 @dhar_base(%struct.amd64_pvt* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @BIT_64(i32 32)
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @amd64_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %170

54:                                               ; preds = %45, %40, %5
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %9, align 4
  %60 = ashr i32 %59, 12
  %61 = load i32, i32* %18, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %170

67:                                               ; preds = %57, %54
  %68 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @f1x_swap_interleaved_region(%struct.amd64_pvt* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %72 = call i32 @dct_sel_baseaddr(%struct.amd64_pvt* %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %74 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %78 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 27
  %83 = load i32, i32* %14, align 4
  %84 = ashr i32 %83, 11
  %85 = icmp sge i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %16, align 4
  br label %87

87:                                               ; preds = %86, %80, %76, %67
  %88 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @f1x_determine_channel(%struct.amd64_pvt* %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @f1x_get_norm_dct_addr(%struct.amd64_pvt* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %87
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @hweight8(i32 %103)
  %105 = add nsw i32 12, %104
  %106 = ashr i32 %102, %105
  %107 = shl i32 %106, 12
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 4095
  %110 = or i32 %107, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %101, %87
  %112 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %113 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %111
  %116 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %117 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %154, label %119

119:                                              ; preds = %115
  %120 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %121 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %154, label %123

123:                                              ; preds = %119
  %124 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %125 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %124)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %129 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %128)
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = ashr i32 %132, 10
  %134 = shl i32 %133, 9
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, 511
  %137 = or i32 %134, %136
  store i32 %137, i32* %13, align 4
  br label %145

138:                                              ; preds = %127
  %139 = load i32, i32* %13, align 4
  %140 = ashr i32 %139, 7
  %141 = shl i32 %140, 6
  %142 = load i32, i32* %13, align 4
  %143 = and i32 %142, 63
  %144 = or i32 %141, %143
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %138, %131
  br label %153

146:                                              ; preds = %123
  %147 = load i32, i32* %13, align 4
  %148 = ashr i32 %147, 13
  %149 = shl i32 %148, 12
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, 4095
  %152 = or i32 %149, %151
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %146, %145
  br label %154

154:                                              ; preds = %153, %119, %115, %111
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (i8*, i32, ...) @debugf1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @f1x_lookup_addr_in_dct(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load i32, i32* %17, align 4
  %165 = load i32*, i32** %10, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %154
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %64, %49
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_sel(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @debugf1(i8*, i32, ...) #1

declare dso_local i32 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dhar_valid(%struct.amd64_pvt*) #1

declare dso_local i32 @dhar_base(%struct.amd64_pvt*) #1

declare dso_local i32 @BIT_64(i32) #1

declare dso_local i32 @amd64_warn(i8*, i32) #1

declare dso_local i32 @f1x_swap_interleaved_region(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dct_sel_baseaddr(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @f1x_determine_channel(%struct.amd64_pvt*, i32, i32, i32) #1

declare dso_local i32 @f1x_get_norm_dct_addr(%struct.amd64_pvt*, i32, i32, i32, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

declare dso_local i32 @f1x_lookup_addr_in_dct(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
