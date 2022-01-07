; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_convert_sgraw2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_convert_sgraw2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_raw_io2 = type { i32, i32, i32, %struct.sge_ieee1212* }
%struct.sge_ieee1212 = type { i32, i64, i64, i32 }

@aac_convert_sgl = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RIO2_SGL_CONFORMANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_raw_io2*, i32, i32, i32)* @aac_convert_sgraw2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_convert_sgraw2(%struct.aac_raw_io2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_raw_io2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_ieee1212*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.aac_raw_io2* %0, %struct.aac_raw_io2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @aac_convert_sgl, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %169

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sge_ieee1212* @kmalloc(i32 %22, i32 %23)
  store %struct.sge_ieee1212* %24, %struct.sge_ieee1212** %10, align 8
  %25 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %26 = icmp eq %struct.sge_ieee1212* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %169

28:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %29

29:                                               ; preds = %123, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %126

34:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %119, %34
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %38 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %37, i32 0, i32 3
  %39 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %39, i64 %41
  %43 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %44, %47
  %49 = icmp slt i32 %36, %48
  br i1 %49, label %50, label %122

50:                                               ; preds = %35
  %51 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %52 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %51, i32 0, i32 3
  %53 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %53, i64 %55
  %57 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %58, %64
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %67, i64 %69
  %71 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %70, i32 0, i32 1
  store i64 %66, i64* %71, align 8
  %72 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %73 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %72, i32 0, i32 3
  %74 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %74, i64 %76
  %78 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %80, i64 %82
  %84 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %83, i32 0, i32 3
  store i32 %79, i32* %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %87 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %86, i32 0, i32 3
  %88 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %88, i64 %90
  %92 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %85, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %50
  %96 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %96, i64 %98
  %100 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %95, %50
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %107, i64 %109
  %111 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 8
  %112 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %112, i64 %114
  %116 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %35

122:                                              ; preds = %35
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %29

126:                                              ; preds = %29
  %127 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %127, i64 %129
  %131 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %132 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %131, i32 0, i32 3
  %133 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %133, i64 %136
  %138 = bitcast %struct.sge_ieee1212* %130 to i8*
  %139 = bitcast %struct.sge_ieee1212* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 32, i1 false)
  %140 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %141 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %140, i32 0, i32 3
  %142 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %141, align 8
  %143 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %142, i64 1
  %144 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %145 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %144, i64 1
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 32
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memcpy(%struct.sge_ieee1212* %143, %struct.sge_ieee1212* %145, i32 %150)
  %152 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %153 = call i32 @kfree(%struct.sge_ieee1212* %152)
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @cpu_to_le32(i32 %154)
  %156 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %157 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* @RIO2_SGL_CONFORMANT, align 4
  %159 = call i32 @cpu_to_le16(i32 %158)
  %160 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %161 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %168 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %126, %27, %17
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.sge_ieee1212* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.sge_ieee1212*, %struct.sge_ieee1212*, i32) #1

declare dso_local i32 @kfree(%struct.sge_ieee1212*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
