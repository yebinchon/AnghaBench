; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_query_segment_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_query_segment_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i32, i64, i32, %struct.qout64_old*, %struct.qout64_old* }
%struct.qout64_old = type { i64, i32, i64, i64, i32, i32, i64, i64, %struct.qout64_old*, %struct.qout64_old*, i32 }
%struct.qin64 = type { i64, i32, i64, i64, i32, i32, i64, i64, %struct.qin64*, %struct.qin64*, i32 }
%struct.qout64 = type { i64, i32, i64, i64, i32, i32, i64, i64, %struct.qout64*, %struct.qout64*, i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCSS_FINDSEGA = common dso_local global i32 0, align 4
@segext_scode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Querying a DCSS type failed with rc=%ld\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SEG_TYPE_EW = common dso_local global i32 0, align 4
@SEG_TYPE_EN = common dso_local global i32 0, align 4
@SEG_TYPE_EWEN = common dso_local global i32 0, align 4
@DCSS_SEGEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcss_segment*)* @query_segment_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_segment_type(%struct.dcss_segment* %0) #0 {
  %2 = alloca %struct.dcss_segment*, align 8
  %3 = alloca %struct.qin64*, align 8
  %4 = alloca %struct.qout64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dcss_segment* %0, %struct.dcss_segment** %2, align 8
  %11 = load i32, i32* @GFP_DMA, align 4
  %12 = call %struct.qout64_old* @kmalloc(i32 80, i32 %11)
  %13 = bitcast %struct.qout64_old* %12 to %struct.qin64*
  store %struct.qin64* %13, %struct.qin64** %3, align 8
  %14 = load i32, i32* @GFP_DMA, align 4
  %15 = call %struct.qout64_old* @kmalloc(i32 80, i32 %14)
  %16 = bitcast %struct.qout64_old* %15 to %struct.qout64*
  store %struct.qout64* %16, %struct.qout64** %4, align 8
  %17 = load %struct.qin64*, %struct.qin64** %3, align 8
  %18 = icmp eq %struct.qin64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.qout64*, %struct.qout64** %4, align 8
  %21 = icmp eq %struct.qout64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %186

25:                                               ; preds = %19
  %26 = load i32, i32* @DCSS_FINDSEGA, align 4
  %27 = load %struct.qin64*, %struct.qin64** %3, align 8
  %28 = getelementptr inbounds %struct.qin64, %struct.qin64* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qout64*, %struct.qout64** %4, align 8
  %30 = ptrtoint %struct.qout64* %29 to i64
  %31 = load %struct.qin64*, %struct.qin64** %3, align 8
  %32 = getelementptr inbounds %struct.qin64, %struct.qin64* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.qin64*, %struct.qin64** %3, align 8
  %34 = getelementptr inbounds %struct.qin64, %struct.qin64* %33, i32 0, i32 1
  store i32 80, i32* %34, align 8
  %35 = load %struct.qin64*, %struct.qin64** %3, align 8
  %36 = getelementptr inbounds %struct.qin64, %struct.qin64* %35, i32 0, i32 9
  %37 = load %struct.qin64*, %struct.qin64** %36, align 8
  %38 = bitcast %struct.qin64* %37 to %struct.qout64_old*
  %39 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %40 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %39, i32 0, i32 5
  %41 = load %struct.qout64_old*, %struct.qout64_old** %40, align 8
  %42 = call i32 @memcpy(%struct.qout64_old* %38, %struct.qout64_old* %41, i32 8)
  %43 = load %struct.qin64*, %struct.qin64** %3, align 8
  %44 = bitcast %struct.qin64* %43 to %struct.qout64_old*
  %45 = call i32 @dcss_diag(i64* @segext_scode, %struct.qout64_old* %44, i64* %8, i64* %9)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %6, align 4
  br label %186

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @dcss_diag_translate_rc(i64 %56)
  store i32 %57, i32* %6, align 4
  br label %186

58:                                               ; preds = %50
  %59 = load %struct.qout64*, %struct.qout64** %4, align 8
  %60 = getelementptr inbounds %struct.qout64, %struct.qout64* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 6
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %186

66:                                               ; preds = %58
  %67 = load %struct.qout64*, %struct.qout64** %4, align 8
  %68 = getelementptr inbounds %struct.qout64, %struct.qout64* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.qout64*, %struct.qout64** %4, align 8
  %73 = getelementptr inbounds %struct.qout64, %struct.qout64* %72, i32 0, i32 8
  %74 = load %struct.qout64*, %struct.qout64** %73, align 8
  %75 = getelementptr inbounds %struct.qout64, %struct.qout64* %74, i64 0
  %76 = getelementptr inbounds %struct.qout64, %struct.qout64* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %77, 255
  %79 = trunc i64 %78 to i32
  %80 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %81 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %161

82:                                               ; preds = %66
  %83 = load %struct.qout64*, %struct.qout64** %4, align 8
  %84 = getelementptr inbounds %struct.qout64, %struct.qout64* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @PAGE_SHIFT, align 4
  %87 = zext i32 %86 to i64
  %88 = lshr i64 %85, %87
  store i64 %88, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %154, %82
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.qout64*, %struct.qout64** %4, align 8
  %92 = getelementptr inbounds %struct.qout64, %struct.qout64* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %157

95:                                               ; preds = %89
  %96 = load %struct.qout64*, %struct.qout64** %4, align 8
  %97 = getelementptr inbounds %struct.qout64, %struct.qout64* %96, i32 0, i32 8
  %98 = load %struct.qout64*, %struct.qout64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.qout64, %struct.qout64* %98, i64 %100
  %102 = getelementptr inbounds %struct.qout64, %struct.qout64* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = and i64 %103, 255
  %105 = load i32, i32* @SEG_TYPE_EW, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %95
  %109 = load %struct.qout64*, %struct.qout64** %4, align 8
  %110 = getelementptr inbounds %struct.qout64, %struct.qout64* %109, i32 0, i32 8
  %111 = load %struct.qout64*, %struct.qout64** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.qout64, %struct.qout64* %111, i64 %113
  %115 = getelementptr inbounds %struct.qout64, %struct.qout64* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = and i64 %116, 255
  %118 = load i32, i32* @SEG_TYPE_EN, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* @ENOTSUPP, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %186

124:                                              ; preds = %108, %95
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.qout64*, %struct.qout64** %4, align 8
  %127 = getelementptr inbounds %struct.qout64, %struct.qout64* %126, i32 0, i32 8
  %128 = load %struct.qout64*, %struct.qout64** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.qout64, %struct.qout64* %128, i64 %130
  %132 = getelementptr inbounds %struct.qout64, %struct.qout64* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @PAGE_SHIFT, align 4
  %135 = zext i32 %134 to i64
  %136 = lshr i64 %133, %135
  %137 = icmp ne i64 %125, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %124
  %139 = load i32, i32* @ENOTSUPP, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %186

141:                                              ; preds = %124
  %142 = load %struct.qout64*, %struct.qout64** %4, align 8
  %143 = getelementptr inbounds %struct.qout64, %struct.qout64* %142, i32 0, i32 8
  %144 = load %struct.qout64*, %struct.qout64** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.qout64, %struct.qout64* %144, i64 %146
  %148 = getelementptr inbounds %struct.qout64, %struct.qout64* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @PAGE_SHIFT, align 4
  %151 = zext i32 %150 to i64
  %152 = lshr i64 %149, %151
  %153 = add i64 %152, 1
  store i64 %153, i64* %10, align 8
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %89

157:                                              ; preds = %89
  %158 = load i32, i32* @SEG_TYPE_EWEN, align 4
  %159 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %160 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %157, %71
  %162 = load %struct.qout64*, %struct.qout64** %4, align 8
  %163 = getelementptr inbounds %struct.qout64, %struct.qout64* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %167 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.qout64*, %struct.qout64** %4, align 8
  %169 = getelementptr inbounds %struct.qout64, %struct.qout64* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %172 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %174 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %173, i32 0, i32 4
  %175 = load %struct.qout64_old*, %struct.qout64_old** %174, align 8
  %176 = load %struct.qout64*, %struct.qout64** %4, align 8
  %177 = getelementptr inbounds %struct.qout64, %struct.qout64* %176, i32 0, i32 8
  %178 = load %struct.qout64*, %struct.qout64** %177, align 8
  %179 = bitcast %struct.qout64* %178 to %struct.qout64_old*
  %180 = call i32 @memcpy(%struct.qout64_old* %175, %struct.qout64_old* %179, i32 24)
  %181 = load %struct.qout64*, %struct.qout64** %4, align 8
  %182 = getelementptr inbounds %struct.qout64, %struct.qout64* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %185 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %161, %138, %121, %63, %53, %48, %22
  %187 = load %struct.qin64*, %struct.qin64** %3, align 8
  %188 = bitcast %struct.qin64* %187 to %struct.qout64_old*
  %189 = call i32 @kfree(%struct.qout64_old* %188)
  %190 = load %struct.qout64*, %struct.qout64** %4, align 8
  %191 = bitcast %struct.qout64* %190 to %struct.qout64_old*
  %192 = call i32 @kfree(%struct.qout64_old* %191)
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local %struct.qout64_old* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.qout64_old*, %struct.qout64_old*, i32) #1

declare dso_local i32 @dcss_diag(i64*, %struct.qout64_old*, i64*, i64*) #1

declare dso_local i32 @pr_warning(i8*, i64) #1

declare dso_local i32 @dcss_diag_translate_rc(i64) #1

declare dso_local i32 @kfree(%struct.qout64_old*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
